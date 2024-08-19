package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;	
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class ShopController {

	@GetMapping("/shop")
	private String shop() {
		return "shop/shop";
	}
}
