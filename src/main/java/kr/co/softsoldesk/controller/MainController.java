package kr.co.softsoldesk.controller;

import java.util.List;	

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.Article;
import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.BoardService;

@Controller
public class MainController {

//	private final NewsService newsService;
//
//	public MainController(NewsService newsService) {
//		this.newsService = newsService;
//	}

	@Autowired
	private BoardService boardService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	// ----------------------------------------------------------------------------------------

	@GetMapping("/main")
	private String main(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {

//		List<Article> articles = newsService.getTopHeadlines();
		List<ContentBean> today3Content = boardService.getToday3Content();
		List<ContentBean> weekly3Content = boardService.getWeekly3Content();
		List<ContentBean> monthly3Content = boardService.getMonthly3Content();

		model.addAttribute("fail", fail);
		model.addAttribute("loginUserBean", loginUserBean);
//		model.addAttribute("articles", articles);
		model.addAttribute("img", loginUserBean.getUser_img());
		model.addAttribute("today3Content", today3Content);
		model.addAttribute("weekly3Content", weekly3Content);
		model.addAttribute("monthly3Content", monthly3Content);

		return "main";
	}

}
