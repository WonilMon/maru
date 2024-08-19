package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class APIController {

	private static final String CLIENT_ID = "YOUR_CLIENT_ID.apps.googleusercontent.com";

	@RequestMapping("/login")
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}

}
