package com.datn.web.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

import com.datn.web.bean.Account;
import com.datn.web.bean.Blogs;
import com.datn.web.bean.Departments;
import com.datn.web.bean.Doctors;
import com.datn.web.bean.Services;
import com.datn.web.service.AccountService;
import com.datn.web.service.BlogService;
import com.datn.web.service.DepartmentService;
import com.datn.web.service.DoctorService;
import com.datn.web.service.ServiceService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class AccountController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private ServiceService serviceService;
	@Autowired
	private BlogService blogService;
	@Autowired
	private DepartmentService departmentService;
	
	 public static String hashPassword(String pass) {
	        try {
	            MessageDigest digest = MessageDigest.getInstance("SHA-256");
	            byte[] hashedBytes = digest.digest(pass.getBytes());
	            StringBuilder stringBuilder = new StringBuilder();
	            for (byte b : hashedBytes) {
	                stringBuilder.append(String.format("%02x", b));
	            }
	            return stringBuilder.toString();
	        } catch (NoSuchAlgorithmException e) {
	            e.printStackTrace();
	        }
	        return null;
	    }
	 
		private boolean checkExistEmail(String email) {
			return accountService.checkExistEmail(email);
		}
		
	 	@GetMapping("/login")
	    public String showLoginForm(Model model, @RequestParam(value = "previousUrl", defaultValue = "/") String previousUrl) {
	        model.addAttribute("previousUrl", previousUrl);
	        List<Departments> departments = departmentService.showDepartmentAndDoctor();
	    	model.addAttribute("department", departments);
	        return "customer/login";
	    }

	    @PostMapping("/login")
	    public String login(@RequestParam("email") String email, @RequestParam("password") String password,
	                        Model model, HttpServletResponse response) {
	    	String encodePass = hashPassword(password);
	        try {
	            boolean isAuthenticated = accountService.authenticate(email, encodePass);
	            String role = accountService.getRole(email);

	            if (isAuthenticated) {
	                model.addAttribute("success", "Login successful");

	                if ("admin".equals(role)) {
	                    addLoggedInCookie(response, "adminIsLoggedIn");
	                    addEmailCookie(response, "adminEmail", email);
	                    return "redirect:showUpcomingAppointment";
	                } else {
	                    addLoggedInCookie(response, "userIsLoggedIn");
	                    addEmailCookie(response, "userEmail", email);
	                    return "redirect:/";
	                }
	            } else {
	                model.addAttribute("error", "Sai tài khoản hoặc mật khẩu");
	                List<Departments> departments = departmentService.showDepartmentAndDoctor();
	            	model.addAttribute("department", departments);
	                return "customer/login";
	            }
	        } catch (EmptyResultDataAccessException e) {
	        	List<Departments> departments = departmentService.showDepartmentAndDoctor();
	        	model.addAttribute("department", departments);
	            model.addAttribute("error", "Sai tài khoản hoặc mật khẩu");
	            return "customer/login";
	        }
	    }

	    private void addLoggedInCookie(HttpServletResponse response, String cookieName) {
	        Cookie isLoggedInCookie = new Cookie(cookieName, "true");
	        isLoggedInCookie.setMaxAge(30 * 24 * 60 * 60);
	        isLoggedInCookie.setPath("/");
	        response.addCookie(isLoggedInCookie);
	    }

	    private void addEmailCookie(HttpServletResponse response, String cookieName, String Email) {
	        jakarta.servlet.http.Cookie emailCookie = new Cookie(cookieName, Email);
	        emailCookie.setMaxAge(30 * 24 * 60 * 60);
	        emailCookie.setPath("/");
	        response.addCookie(emailCookie);
	    }

	    
	    @RequestMapping("/logout")
	    public String logout(HttpServletRequest request, HttpServletResponse response) {
	        deleteCookie(request, response, "adminIsLoggedIn");
	        deleteCookie(request, response, "adminEmail");
	        deleteCookie(request, response, "userIsLoggedIn");
	        deleteCookie(request, response, "userEmail");
	        return "redirect:/";
	    }

	    private void deleteCookie(HttpServletRequest request, HttpServletResponse response, String cookieName) {
	        Cookie[] cookies = request.getCookies();
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if (cookie.getName().equals(cookieName)) {
	                    cookie.setMaxAge(0);
	                    cookie.setPath("/");
	                    response.addCookie(cookie);
	                    break;
	                }
	            }
	        }
	    }
	    @RequestMapping(value = "register")
		public String register(@RequestParam("email") String email,
				@RequestParam("pass") String pass, Model model) {
	    	String encodePass = hashPassword(pass);
			if (checkExistEmail(email)) {
				accountService.register(email, encodePass);
				List<Services> services = serviceService.showMoreService();
				List<Doctors> doctors = doctorService.showExpDoctor();
				List<Blogs> recent = blogService.getRecentBlog();
				model.addAttribute("doctor", doctors);
				model.addAttribute("service", services);
				model.addAttribute("recent", recent);
				model.addAttribute("email", email);
				List<Departments> departments = departmentService.showDepartmentAndDoctor();
		    	model.addAttribute("department", departments);
				return "customer/registerSuccess";
			}
			else {
				String failed = "failed";
				List<Departments> departments = departmentService.showDepartmentAndDoctor();
		    	model.addAttribute("department", departments);
				return "redirect:getToRegister?failed=" + failed;
			}
			
		}
	    
		@RequestMapping(value = "adminShowAccount")
		public String adminShowAccount(@RequestParam(required = false) String delete, @RequestParam(required = false) String add, 
				@RequestParam(defaultValue = "1") int page, Model model) {
			int pageSize = 10;
		    int totalCount = accountService.getTotalAccount();
		    int totalPages = (int) Math.ceil((double) totalCount / pageSize);
			List<Account> account = accountService.adminShowAccount(page, pageSize);
			model.addAttribute("account", account);
			model.addAttribute("currentPage", page);
		    model.addAttribute("totalPages", totalPages);
		    model.addAttribute("add", add);
		    model.addAttribute("delete", delete);
			return "admin/adminAccountList";
		}
		
		@RequestMapping(value = "adminDeleteAccount")
		public String adminDeleteAccount(@RequestParam("id") int id) {
			accountService.adminDeleteAccount(id);
			String delete = "delete";
			return "redirect:adminShowAccount?delete=" + delete;
		}
		
		@RequestMapping(value = "adminShowAccountInfo")
		public String adminShowAccountInfo(@RequestParam(required = false) String edit, @RequestParam(required = false) String reset, @RequestParam("id") int id, Model model) {
			List<Account> accountInfo = accountService.adminShowAccountInfo(id);
			model.addAttribute("accountInfo", accountInfo.get(0));
			model.addAttribute("reset", reset);
			model.addAttribute("edit", edit);
			return "admin/adminAccount";
		}
		
		@RequestMapping(value = "adminResetPassword")
		public String adminResettPassword(@RequestParam("id") int id) {
			String password = hashPassword("1");
			accountService.adminResetPassword(password, id);
			String reset = "reset";
			return "redirect:adminShowAccountInfo?reset=" + reset + "&id=" + id;
		}
		
		@RequestMapping(value = "adminEditAccount") 
		public String adminEditAccount (@RequestParam("role") String role, @RequestParam("id") int id) {
			accountService.adminEditAccount(role, id);
			String edit = "edit";
			return "redirect:adminShowAccountInfo?id=" + id + "&edit=" + edit;
		}
		
		@RequestMapping(value = "getToAddAccount")
		public String getToAddAccount(@RequestParam(required = false) String failed, Model model) {
			model.addAttribute("failed", failed);
			return "admin/adminAddAccount";
		}
		
		@RequestMapping(value = "adminAddAccount")
		public String adminAddAccount(@RequestParam("email") String email, @RequestParam("pass") String pass,
				@RequestParam("role") String role, Model model) {
			String hashpass = hashPassword(pass);
			if (checkExistEmail(email)) {
			accountService.adminAddAccount(email, hashpass, role);
			}
			else {
				String failed = "failed";
				return "redirect:getToAddAccount?failed=" + failed;
			}
			String add = "add";
			return "redirect:adminShowAccount?add=" + add;
		}
}
