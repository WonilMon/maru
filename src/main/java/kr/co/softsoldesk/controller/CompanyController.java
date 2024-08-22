package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.softsoldesk.beans.FaqBean;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@GetMapping("/company")
	private String company() {
		return "company/company";
	}

	@GetMapping("/faq")
	private String faq(@ModelAttribute("faqBean") FaqBean faqBean) {
		return "company/faq";
	}

	@GetMapping("/faq_pro")
	private String faq_pro(@ModelAttribute("faqBean") FaqBean faqBean) {

		System.out.println("FAQ email" + faqBean.getFaq_user_email());
		System.out.println("FAQ text" + faqBean.getFaq_user_text());

		return "company/faq_success";
	}

	@GetMapping("/admin_index")
	private String admin_index() {
		return "admin/index";
	}

}
