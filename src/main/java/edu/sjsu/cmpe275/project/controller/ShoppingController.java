package edu.sjsu.cmpe275.project.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.sjsu.cmpe275.project.entity.UserEntity;
import edu.sjsu.cmpe275.project.service.UserManager;

@Controller
public class ShoppingController {
	
	@Autowired
	private UserManager userManager;
	
	Random randomGenerator = new Random();
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listUsers(ModelMap map) 
	{
		map.addAttribute("user", new UserEntity());
		map.addAttribute("userList", userManager.getAllUsers());
		
		return "userList";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addUser(@ModelAttribute(value="user") UserEntity user, BindingResult result) 
	{
		int x = randomGenerator.nextInt(999999);
		user.setId(x);
		userManager.addUser(user);
		return "redirect:/";
	}

	@RequestMapping("/delete/{userId}")
	public String deleteEmplyee(@PathVariable("userId") Integer userId)
	{
		userManager.deleteUser(userId);
		return "redirect:/";
	}

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
}
