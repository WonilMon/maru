package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
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
	private String faq() {
		return "company/faq";
	}
}
