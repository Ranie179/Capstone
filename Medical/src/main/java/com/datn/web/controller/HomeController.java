package com.datn.web.controller;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.hc.client5.http.classic.methods.HttpPost;
import org.apache.hc.client5.http.impl.classic.CloseableHttpClient;
import org.apache.hc.client5.http.impl.classic.HttpClients;
import org.apache.hc.client5.http.impl.io.PoolingHttpClientConnectionManagerBuilder;
import org.apache.hc.client5.http.ssl.NoopHostnameVerifier;
import org.apache.hc.client5.http.ssl.SSLConnectionSocketFactoryBuilder;
import org.apache.hc.client5.http.ssl.TrustAllStrategy;
import org.apache.hc.core5.http.ClassicHttpResponse;
import org.apache.hc.core5.http.HttpEntity;
import org.apache.hc.core5.http.HttpException;
import org.apache.hc.core5.http.io.HttpClientResponseHandler;
import org.apache.hc.core5.http.io.entity.EntityUtils;
import org.apache.hc.core5.http.io.entity.StringEntity;
import org.apache.hc.core5.net.URIBuilder;
import org.apache.hc.core5.ssl.SSLContextBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.datn.web.bean.Blogs;
import com.datn.web.bean.Departments;
import com.datn.web.bean.Doctors;
import com.datn.web.dto.ChatRequestDTO;
import com.datn.web.bean.Comment;
import com.datn.web.service.BlogService;
import com.datn.web.service.CommentService;
import com.datn.web.service.DepartmentService;
import com.datn.web.service.DoctorService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
public class HomeController {

    @Autowired
    private DoctorService doctorService;
    @Autowired
    private BlogService blogService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private CommentService commentService;
    
    @RequestMapping("/")
    public String test(Model model) {
    	List<Doctors> doctors = doctorService.showExpDoctor();
    	List<Blogs> blogs = blogService.getRecentBlog();
    	blogs.remove(4);
    	blogs.remove(3);
    	int doctorCount = doctorService.getTotalDoctorCount(null, null, null);
    	List<Departments> departments = departmentService.showDepartmentAndDoctor();
    	List<Comment> comment = commentService.showRecentComment();
    	model.addAttribute("comment", comment);
    	model.addAttribute("department", departments);
        model.addAttribute("doctor", doctors);
        model.addAttribute("blog", blogs);
        model.addAttribute("count", doctorCount);
        return "customer/home";
    }
    
    @RequestMapping(value = "getToContact")
    public String getToContact(Model model)
    {
    	List<Departments> departments = departmentService.showDepartmentAndDoctor();
    	model.addAttribute("department", departments);
    	return "customer/contact";
    }
    
    @RequestMapping(value = "getToRegister")
    public String getToRegister(@RequestParam(required = false) String failed, Model model)
    {
    	List<Departments> departments = departmentService.showDepartmentAndDoctor();
    	model.addAttribute("department", departments);
    	model.addAttribute("failed", failed);
    	return "customer/register";
    }
    
    @RequestMapping(value = "getToPolicy")
    public String getToPolicy(Model model)
    {
    	List<Departments> departments = departmentService.showDepartmentAndDoctor();
    	model.addAttribute("department", departments);
    	return "customer/terms-conditions";
    }
    
    @RequestMapping(value = "getToContidion")
    public String getToContidion(Model model)
    {
    	List<Departments> departments = departmentService.showDepartmentAndDoctor();
    	model.addAttribute("department", departments);
    	return "customer/conditions-register";
    }
    
    @RequestMapping(value = "getToChat")
    public String getToChat(Model model)
    {
    	List<Departments> departments = departmentService.showDepartmentAndDoctor();
    	model.addAttribute("department", departments);
    	return "customer/chat";
    }
    
    @RequestMapping(value = "getToAbout")
    public String getToAbout(Model model)
    {
    	List<Departments> departments = departmentService.showDepartmentAndDoctor();
    	model.addAttribute("department", departments);
    	return "customer/about";
    }


    @RequestMapping(value = "sendChat", method = RequestMethod.POST)
    public @ResponseBody JsonObject getToChatPost(@RequestBody ChatRequestDTO userInput)
            throws KeyManagementException, NoSuchAlgorithmException, KeyStoreException, URISyntaxException, IOException {
        turnOffSslChecking();
        CloseableHttpClient httpClient = HttpClients.custom()
                .setConnectionManager(PoolingHttpClientConnectionManagerBuilder.create()
                        .setSSLSocketFactory(SSLConnectionSocketFactoryBuilder.create()
                                .setSslContext(SSLContextBuilder.create()
                                        .loadTrustMaterial(TrustAllStrategy.INSTANCE)
                                        .build())
                                .setHostnameVerifier(NoopHostnameVerifier.INSTANCE)
                                .build())
                        .build())
                .build();

        JsonObject bodyRoot = new JsonObject();
        bodyRoot.addProperty("user_input", userInput.getUserInput());

        final HttpClientResponseHandler<JsonObject> responseHandler = new HttpClientResponseHandler<JsonObject>() {
            @Override
            public JsonObject handleResponse(ClassicHttpResponse response)
                    throws HttpException, IOException {
                String responseString = EntityUtils.toString(response.getEntity(), "UTF-8");
                JsonObject jObject = JsonParser.parseString(responseString).getAsJsonObject();
                return jObject.getAsJsonObject();
            }
        };

        HttpPost httpPost = new HttpPost(new URIBuilder("http://localhost:5000/chat").build());
        HttpEntity jsonparam = new StringEntity(bodyRoot.toString(), Charset.forName("UTF-8"));
        httpPost.setEntity(jsonparam);
        httpPost.addHeader("Content-Type", "application/json; charset=UTF-8");
        return httpClient.execute(httpPost, responseHandler);
    }

    private static final TrustManager[] UNQUESTIONING_TRUST_MANAGER = new TrustManager[] {
        new X509TrustManager() {
            public java.security.cert.X509Certificate[] getAcceptedIssuers(){
                return null;
            }
            @Override
            public void checkClientTrusted( X509Certificate[] certs, String authType )throws CertificateException{}
            @Override
            public void checkServerTrusted( X509Certificate[] certs, String authType )throws CertificateException{}
        }
    };
    
    private static void turnOffSslChecking() throws NoSuchAlgorithmException, KeyManagementException {
        // Install the all-trusting trust manager
        final SSLContext sc = SSLContext.getInstance("SSL");
        sc.init( null, UNQUESTIONING_TRUST_MANAGER, null );
        HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
    }

    private static void turnOnSslChecking() throws KeyManagementException, NoSuchAlgorithmException {
        // Return it to the initial state (discovered by reflection, now hardcoded)
        SSLContext.getInstance("SSL").init( null, null, null );
    }
}

