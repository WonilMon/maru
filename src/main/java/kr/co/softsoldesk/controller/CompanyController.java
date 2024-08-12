package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@GetMapping("/company")
	private String company() {
		return "company/company";
	}
	
	@GetMapping("/faq")
	private String faq(Model model) {
		
		int user_idx2 = 0;
		model.addAttribute("user_idx2", user_idx2);
		return "company/faq";
	}
}
