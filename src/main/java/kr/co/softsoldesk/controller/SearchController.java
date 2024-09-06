package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.PageBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Resource(name = "loginUserBean")
	UserBean loginuserBean;

	@Autowired
	SearchService searchService;

	// --------------------------------

	// 메인
	@GetMapping("/main")
	private String search(@RequestParam("keyWord") String keyWord,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {

		List<ContentBean> searchList = searchService.getSearchResult(keyWord, page);

		PageBean pageBean = searchService.getFaqCnt(page, keyWord);

		model.addAttribute("keyWord", keyWord);
		model.addAttribute("searchList", searchList);
		model.addAttribute("pageBean", pageBean);

		return "board/search";
	}

}
