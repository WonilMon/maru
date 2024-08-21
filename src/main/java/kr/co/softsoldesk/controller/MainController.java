package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.Article;
import kr.co.softsoldesk.beans.UserBean;

@Controller
public class MainController {
	/*
	 * private final NewsService newsService;
	 * 
	 * public MainController(NewsService newsService) { this.newsService =
	 * newsService; }
	 */

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/main")
	private String main(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {

		/* List<Article> articles = newsService.getTopHeadlines(); */
		
		model.addAttribute("fail", fail);
		model.addAttribute("loginUserBean", loginUserBean);
		/* model.addAttribute("articles", articles); */

		return "main";
	}

}
