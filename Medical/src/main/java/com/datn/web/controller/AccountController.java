package com.datn.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

import com.datn.web.service.AccountService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class AccountController {
	@Autowired
	private AccountService accountService;
	
	 	@GetMapping("/login")
	    public String showLoginForm(Model model, @RequestParam(value = "previousUrl", defaultValue = "/") String previousUrl) {
	        model.addAttribute("previousUrl", previousUrl);
	        return "customer/login";
	    }

	    @PostMapping("/login")
	    public String login(@RequestParam("email") String email, @RequestParam("password") String password,
	                        Model model, HttpServletResponse response) {
	        try {
	            boolean isAuthenticated = accountService.authenticate(email, password);
	            String role = accountService.getRole(email);

	            if (isAuthenticated) {
	                model.addAttribute("success", "Login successful");

	                if ("admin".equals(role)) {
	                    addLoggedInCookie(response, "adminIsLoggedIn");
	                    addEmailCookie(response, "adminEmail", email);
	                    return "redirect:adminShowDoctor";
	                } else {
	                    addLoggedInCookie(response, "userIsLoggedIn");
	                    addEmailCookie(response, "userEmail", email);
	                    return "redirect:/";
	                }
	            } else {
	                model.addAttribute("error", "Sai tài khoản hoặc mật khẩu");
	                return "customer/login";
	            }
	        } catch (EmptyResultDataAccessException e) {
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
}
