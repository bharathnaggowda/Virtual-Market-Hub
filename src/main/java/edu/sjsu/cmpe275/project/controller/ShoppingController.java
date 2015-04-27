package edu.sjsu.cmpe275.project.controller;

import java.util.Map;
import java.util.Random;

import javax.validation.Valid;

//import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.sjsu.cmpe275.project.entity.ProductEntity;
import edu.sjsu.cmpe275.project.entity.UserEntity;
import edu.sjsu.cmpe275.project.service.LoginService;
import edu.sjsu.cmpe275.project.service.ProductManager;
import edu.sjsu.cmpe275.project.service.UserManager;

@Controller
public class ShoppingController {
	
	@Autowired
	private UserManager userManager;
	
	@Autowired
	private ProductManager productManager;
	
	@Autowired
    public LoginService loginService;
    
	Random randomGenerator = new Random();

    public void setLoginService(LoginService loginService) {
            this.loginService = loginService;
    }
    
    
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listUsers(ModelMap map) 
	{
		map.addAttribute("user", new UserEntity());
		map.addAttribute("userList", userManager.getAllUsers());
		
		return "userList";
	}
	
	@RequestMapping(value = "/sell", method = RequestMethod.GET)
	public String addProducts(ModelMap map) 
	{
		map.addAttribute("user", new UserEntity());
		map.addAttribute("userList", userManager.getAllUsers());
		
		return "product";
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public String addProducts(@ModelAttribute(value="product") ProductEntity product, BindingResult result) 
	{
		productManager.addProduct(product);
		return "home";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute(value="user") UserEntity user, BindingResult result) 
	{
		if (result.hasErrors()) {
    		return "redirect:failure.html";
    	}
    	else {
		int x = randomGenerator.nextInt(999999);
		user.setId(x);
		System.out.println("in add post ........................");
		userManager.addUser(user);
		return "redirect:signIn.html";
    	}
	}
	@RequestMapping(value="/signIn", method=RequestMethod.GET)
	  public String login(Model model) {          
	      //UserLogin user = new UserLogin();  
		System.out.println("in signin get........................");
	     // model.addAttribute("user", user);
	      return "signIn";
	  }
	
	@RequestMapping( value="/signIn", method = RequestMethod.POST)
    public String processForm( UserEntity user, BindingResult result,
                    Map model) {
		System.out.println("Hello vidya........................");
            
            if (result.hasErrors()) {
                    return "signIn";
            }
            
            boolean userExists = loginService.checkLogin(user.getEmail(),
            user.getPassword());
            if(userExists){
                    model.put("signIn", user);
                    System.out.println("Hello........................");
                    return "redirect:home.html";
            }else{
                    result.rejectValue("email","invaliduser");
                    return "redirect:failure.html";
            }

    }
	
	@RequestMapping(value = "/failure", method = RequestMethod.GET)
	public String showfailure(ModelMap map) 
	{
		/*map.addAttribute("product", new ProductEntity());
		map.addAttribute("home", productManager.getAllProducts());*/
		
		return "failure";
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
	
	public void setProductManager(ProductManager productManager) {
        this.productManager = productManager;
    }
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showHome(ProductEntity product, ModelMap map) 
	{
		map.addAttribute("product", new ProductEntity());
		map.addAttribute("results", productManager.getAllProducts());
		
		return "home";
	}
	
	@RequestMapping(value = "/electronics", method = RequestMethod.GET)
	public String getElectronics(ProductEntity product, ModelMap map) 
	{
		map.addAttribute("product", new ProductEntity());
		map.addAttribute("results", productManager.getCategorizedProducts("electronics"));
       
		return "home";
	}

	@RequestMapping(value = "/clothes", method = RequestMethod.GET)
	public String getClothes(ProductEntity product, ModelMap map) 
	{
		map.addAttribute("product", new ProductEntity());
		map.addAttribute("results", productManager.getCategorizedProducts("clothes"));
       
		return "home";
	}
	
	@RequestMapping(value = "/automobiles", method = RequestMethod.GET)
	public String getAutomobiles(ProductEntity product, ModelMap map) 
	{
		map.addAttribute("product", new ProductEntity());
		map.addAttribute("results", productManager.getCategorizedProducts("automobiles"));
       
		return "home";
	}
	
	@RequestMapping(value = "/accessories", method = RequestMethod.GET)
	public String getMovies(ProductEntity product, ModelMap map) 
	{
		map.addAttribute("product", new ProductEntity());
		map.addAttribute("results", productManager.getCategorizedProducts("accessories"));
       
		return "home";
	}
	
	@RequestMapping(value = "/other", method = RequestMethod.GET)
	public String getOthers(ProductEntity product, ModelMap map) 
	{
		map.addAttribute("product", new ProductEntity());
		map.addAttribute("results", productManager.getCategorizedProducts("other"));
       
		return "home";
	}
	
	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String getProduct(@PathVariable int id, ProductEntity product, ModelMap map) 
	{
		map.addAttribute("product", new ProductEntity());
		map.addAttribute("results", productManager.getProductById(id));
       
		return "product_display";
	}

}
