package com.datn.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.datn.web.service.ProfileService;
import com.datn.web.bean.Profile;
@Controller
public class ProfileController {
	@Autowired
	private ProfileService profileService;

	@RequestMapping(value = "showProfile")
	public String showProfile(@RequestParam(required = false) String success,@RequestParam("email") String email, Model model) {
		List<Profile> profile = profileService.showProfile(email);
		model.addAttribute("profile", profile.get(0));
		model.addAttribute("success", success);
		return "customer/profile";
	}
	
	@RequestMapping(value = "editProfile")
	public String editProfile(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("phone") String phone, @RequestParam("birthDay") String birthDay,
			@RequestParam("blood") String blood, @RequestParam("gender") String gender,
			@RequestParam("commune") String commune, @RequestParam("district") String district,
			@RequestParam("province") String province) {
		profileService.editProfile(name, phone, birthDay, blood, gender, commune, district, province, email);
		String success = "Success!";
		return "redirect:showProfile?email=" + email +"&success=" +success;
	}
	
}
