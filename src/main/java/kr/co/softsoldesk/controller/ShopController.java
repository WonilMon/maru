package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class ShopController {

	@Autowired
	private IconService iconService;
	
	@GetMapping("/shop")
	private String shop(Model model) {
		
		List<Icon> icons = iconService.getIcons();
		model.addAttribute("icons",icons);		
		return "shop/shop";
	}
}
