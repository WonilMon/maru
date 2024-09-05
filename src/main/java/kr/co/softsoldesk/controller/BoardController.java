package kr.co.softsoldesk.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;
import javax.xml.stream.events.Comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import kr.co.softsoldesk.beans.BoardInfoBean;
import kr.co.softsoldesk.beans.CommentBean;
import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.beans.PageBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.BoardService;
import kr.co.softsoldesk.service.CommentService;
import kr.co.softsoldesk.service.IconService;
import kr.co.softsoldesk.service.UserIconService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Resource(name = "loginUserBean")
	UserBean loginuserBean;

	@Autowired
	BoardService boardService;

	@Autowired
	CommentService commentService;

	@GetMapping("/write")
	private String write() {
		return "board/write";
	}

	@GetMapping("/sharing_list")
	private String sharing_list() {
		return "board/sharing_list";
	}

	@ResponseBody
	@PostMapping("/addComment")
	public int addComment(@RequestParam("comment_text") String comment_text, @RequestParam("user_idx") int user_idx,
			@RequestParam("content_idx") int content_idx) {

		CommentBean addComment = new CommentBean();

		addComment.setComment_text(comment_text);
		addComment.setContent_idx(content_idx);
		addComment.setUser_idx(user_idx);

		int result = 0;
		try {
			result = commentService.addComment(addComment);
		} catch (Exception e) {
			e.printStackTrace();
			result = -1;
		}
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "getCommentList", produces = "application/json; charset=utf-8")
	private String getCommentList(int content_idx) {

		List<CommentBean> rList = commentService.getCommentList(content_idx);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		return gson.toJson(rList);
	}

	@GetMapping("/board_prev_main")
	private String board_prev_main(Model model) {

		ArrayList<List<ContentBean>> list = new ArrayList<List<ContentBean>>();
		List<BoardInfoBean> boardList = boardService.getBoardInfoList();

		int count = 1;
		for (int i = 0; i <= 2; i++) {
			List<ContentBean> list1 = boardService.getPrevContentList(count);
			list.add(list1);
			count++;
		}

		model.addAttribute("list", list);
		model.addAttribute("boardList", boardList);

		return "board/board_prev_main";
	}

	@GetMapping("/board_main")
	private String board_main(@RequestParam("board_info_idx") int board_info_idx, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		String board_info_name = boardService.getBoardInfoName(board_info_idx);

		List<ContentBean> contentList = boardService.getContentList(board_info_idx, page);

		model.addAttribute("board_info_name", board_info_name);
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("contentList", contentList);

		PageBean pageBean = boardService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);

		return "board/board_main";
	}

	@GetMapping("/board_write")
	private String board_write(@ModelAttribute("writeContentBean") ContentBean writeContentBean,
			@RequestParam("board_info_idx") int board_info_idx, Model model) {

		writeContentBean.setContent_idx(board_info_idx);
		model.addAttribute("user_name", loginuserBean.getUser_nickname());

		return "board/board_write";
	}

	@PostMapping("/board_write_pro")
	private String board_wirte_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean,
			BindingResult result, Model model) {

		if (result.hasErrors()) {

			return "board/board_write";
		}

		boardService.addContent(writeContentBean);

		int content_idx = boardService.getContentIdx();
		int board_info_idx = writeContentBean.getContent_idx();

		model.addAttribute("content_idx", content_idx);
		model.addAttribute("board_info_idx", board_info_idx);

		return "board/board_write_success";
	}

	@GetMapping("/board_read")
	private String board_read(@RequestParam("content_idx") int content_idx,
			@RequestParam("board_info_idx") int board_info_idx, Model model) {

		ContentBean readContent = boardService.getReadContent(content_idx);
		CommentBean commentBean = new CommentBean();

		model.addAttribute("user_name", loginuserBean.getUser_nickname());
		model.addAttribute("readContent", readContent);
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		model.addAttribute("user_idx", loginuserBean.getUser_idx());
		model.addAttribute("commentBean", commentBean);

		return "board/board_read";

	}

	@GetMapping("/board_modify")
	private String board_modify(@RequestParam("content_idx") int content_idx,
			@RequestParam("board_info_idx") int board_info_idx, Model model) {

		ContentBean modifyContent = boardService.getReadContent(content_idx);

		model.addAttribute("modifyContent", modifyContent);
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);

		return "board/board_modify";
	}

	@PostMapping("/board_modify_pro")
	private String board_modify_pro(@Valid @ModelAttribute("modifyContent") ContentBean modifyContent,
			BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "board/board_modify";
		}

		int content_idx = modifyContent.getContent_idx();
		int board_info_idx = modifyContent.getBoard_info_idx();

		model.addAttribute("content_idx", content_idx);
		model.addAttribute("board_info_idx", board_info_idx);

		boardService.updateContent(modifyContent);

		return "board/board_modify_success";

	}

	@GetMapping("/board_delete")
	private String delete(@RequestParam("content_idx") int content_idx,
			@RequestParam("board_info_idx") int board_info_idx, Model model) {

		boardService.deleteContent(content_idx);
		model.addAttribute("board_info_idx", board_info_idx);

		return "board/board_delete";
	}

	// -----------------------------------------------

	// 검색
	@GetMapping("/search")
	private String search(@RequestParam("keyWord") String keyWord, Model model) {

		System.out.println("키워드드러옹ㅁ ㅋ" + keyWord);

		List<ContentBean> searchList_1 = boardService.getSearchResult(keyWord, 1);
		List<ContentBean> searchList_2 = boardService.getSearchResult(keyWord, 2);
		List<ContentBean> searchList_3 = boardService.getSearchResult(keyWord, 3);

		model.addAttribute("keyWord", keyWord);
		model.addAttribute("searchList_1", searchList_1);
		model.addAttribute("searchList_2", searchList_2);
		model.addAttribute("searchList_3", searchList_3);

		return "board/search";
	}

}
