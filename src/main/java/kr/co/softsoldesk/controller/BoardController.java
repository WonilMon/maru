package kr.co.softsoldesk.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import kr.co.softsoldesk.beans.BoardInfoBean;
import kr.co.softsoldesk.beans.CommentBean;
import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.PageBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.BoardService;
import kr.co.softsoldesk.service.CommentService;

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
	
	
	@GetMapping("/board_main_share")
	private String board_main_share(@RequestParam("board_info_idx") int board_info_idx, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		String board_info_name = boardService.getBoardInfoName(board_info_idx);
		List<ContentBean> contentList = boardService.getContentList(board_info_idx, page);
		List<ContentBean> contentList2 = new ArrayList<ContentBean>();
		
		if (!contentList.isEmpty()) {
			for (ContentBean content : contentList) {

				if (!boardService.getContentFiles(content.getContent_idx()).isEmpty()) {
					content.setContent_files(boardService.getContentFiles(content.getContent_idx()));
				}
				if (!boardService.getContentFiles(content.getContent_idx()).isEmpty()) {
					content.setHashTags(boardService.getHashTags(content.getContent_idx()));
				}

				contentList2.add(content);

			}
		}
		
		model.addAttribute("board_info_name", board_info_name);
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("contentList", contentList2);
		PageBean pageBean = boardService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);
		
		return "board/board_main_share";
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
		List<ContentBean> contentList2 = new ArrayList<ContentBean>();

		if (!contentList.isEmpty()) {
			for (ContentBean content : contentList) {

				if (!boardService.getContentFiles(content.getContent_idx()).isEmpty()) {
					content.setContent_files(boardService.getContentFiles(content.getContent_idx()));
				}
				if (!boardService.getContentFiles(content.getContent_idx()).isEmpty()) {
					content.setHashTags(boardService.getHashTags(content.getContent_idx()));
				}

				contentList2.add(content);

			}
		}

		model.addAttribute("board_info_name", board_info_name);
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("contentList", contentList2);

		PageBean pageBean = boardService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);

		return "board/board_main";
	}

	@GetMapping("/board_write")
	private String board_write(@ModelAttribute("writeContentBean") ContentBean writeContentBean,
			@RequestParam("board_info_idx") int board_info_idx, Model model) {

		LocalDate today = LocalDate.now();
		boolean content_isAnonymous = loginuserBean.isUserAnonymous();
		String img;
		String anonymousOff = "images/anonymous1.png";
		String anonymousOn = "images/anonymous2.png";
		if (content_isAnonymous) {
			img = anonymousOn;
		} else {
			img = anonymousOff;
		}
		writeContentBean.setContent_idx(board_info_idx);
		model.addAttribute("user_name", loginuserBean.getUser_nickname());
		model.addAttribute("today", today);
		model.addAttribute("anonymousOn", anonymousOn);
		model.addAttribute("anonymousOff", anonymousOff);
		model.addAttribute("content_isAnonymous", loginuserBean.isUserAnonymous());
		model.addAttribute("img", img);
		model.addAttribute("board_info_idx", board_info_idx);
		return "board/board_write";
	}

	@PostMapping("/board_write_pro")
	private String board_wirte_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean,
			BindingResult result, @RequestParam("hashtags") String hashtags, Model model) {

		if (result.hasErrors()) {

			return "board/board_write";
		}
		for (MultipartFile file : writeContentBean.getUpload_files()) {
			if (!file.isEmpty()) {
				System.out.println("파일 이름: " + file.getOriginalFilename());
				System.out.println("파일 크기: " + file.getSize());
			}
		}
		loginuserBean.setUserAnonymous(false);
		boardService.addContent(writeContentBean);

		int content_idx = boardService.getContentIdx();
		int board_info_idx = writeContentBean.getContent_idx();

		List<String> hashtagList = Arrays.stream(hashtags.split(",")).map(String::trim).filter(tag -> !tag.isEmpty())
				.collect(Collectors.toList());

		if (!hashtagList.isEmpty()) {
			for (String tag : hashtagList) {
				boardService.addHashTag(content_idx, tag);
			}

		}

		model.addAttribute("content_idx", content_idx);
		model.addAttribute("board_info_idx", board_info_idx);

		return "board/board_write_success";
	}

	@GetMapping("/board_read")
	private String board_read(@RequestParam("content_idx") int content_idx,
			@RequestParam("board_info_idx") int board_info_idx, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		
		List<ContentBean> hashTagList = boardService.getContentList(board_info_idx, page);
		boolean favorite_idx = boardService.getFavoriteIdx(content_idx, loginuserBean.getUser_idx());
		int count = boardService.getCommentCount(content_idx);
		ContentBean readContent = boardService.getReadContent(content_idx);
		CommentBean commentBean = new CommentBean();
		String img;
		String favoriteOff = "/images/2099045.png";
		String favoriteOn = "/images/2099045-6f30adb4.png";
		if (favorite_idx) {
			img = favoriteOff;
		} else {
			img = favoriteOn;
		}
		
		List<String> hashTag = readContent.getHashTags();
		
		Map<String, Object> result = boardService.getNextContent(content_idx, board_info_idx);
		ContentBean previousContent = (ContentBean) result.get("previousContent");
	    ContentBean nextContent = (ContentBean) result.get("nextContent");
		
		model.addAttribute("user_name", loginuserBean.getUser_nickname());
		model.addAttribute("readContent", readContent);
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		model.addAttribute("user_idx", loginuserBean.getUser_idx());
		model.addAttribute("commentBean", commentBean);
		model.addAttribute("count", count);
		model.addAttribute("img", img);
		model.addAttribute("favorite_idx", favorite_idx);
		model.addAttribute("favoriteOn", favoriteOn);
		model.addAttribute("favoriteOff", favoriteOff);
		model.addAttribute("hashTagList", hashTagList);
		model.addAttribute("hashTag", hashTag);
		model.addAttribute("previousContent", previousContent);
		model.addAttribute("nextContent", nextContent);
		return "board/board_read";
	}

	@GetMapping("/board_modify")
	private String board_modify(@RequestParam("content_idx") int content_idx,
			@RequestParam("board_info_idx") int board_info_idx, Model model) {
		
		ContentBean modifyContent = boardService.getReadContent(content_idx);
		List<String> hashTags = modifyContent.getHashTags();
		
		String hashTagsString = String.join(",", modifyContent.getHashTags());
		
		model.addAttribute("hashSize", hashTags.size());
		model.addAttribute("modifyContent", modifyContent);
		model.addAttribute("hashTagsString", hashTagsString);
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);

		return "board/board_modify";
	}

	@PostMapping("/board_modify_pro")
	private String board_modify_pro(@Valid @ModelAttribute("modifyContent") ContentBean modifyContent,
			BindingResult result,@RequestParam("hashtags") String hashtags,  @RequestParam("content_idx") int content_idx ,
			Model model) {

		if (result.hasErrors()) {
			System.out.println("에러발생");
			return "board/board_modify";
		}
		
		boardService.deleteHashTag(content_idx);
		
		int mk_content_idx = modifyContent.getContent_idx();
		int board_info_idx = modifyContent.getBoard_info_idx();
		model.addAttribute("content_idx", mk_content_idx);
		model.addAttribute("board_info_idx", board_info_idx);
		boardService.updateContent(modifyContent);
		
		for (MultipartFile file : modifyContent.getUpload_files()) {
			if (!file.isEmpty()) {
				System.out.println("파일 이름: " + file.getOriginalFilename());
				System.out.println("파일 크기: " + file.getSize());
			}
		}
		
		List<String> hashtagList = Arrays.stream(hashtags.split(",")).map(String::trim).filter(tag -> !tag.isEmpty())
				.collect(Collectors.toList());
		
		if (!hashtagList.isEmpty()) {
			for (String tag : hashtagList) {
				boardService.addHashTag(content_idx, tag);
			}

		}
		
		return "board/board_modify_success";

	}

	@GetMapping("/board_delete")
	private String delete(@RequestParam("content_idx") int content_idx,
			@RequestParam("board_info_idx") int board_info_idx, Model model) {

		boardService.deleteContent(content_idx);
		model.addAttribute("board_info_idx", board_info_idx);

		return "board/board_delete";
	}

	@ResponseBody
	@PostMapping("/addfavorite")
	private String addfavorite(@RequestParam("user_idx") int user_idx, @RequestParam("content_idx") int content_idx) {

		boolean favorite_idx = boardService.getFavoriteIdx(content_idx, loginuserBean.getUser_idx());
		if (favorite_idx) {
			boardService.addfavorite(content_idx, user_idx);
		} else {
			boardService.deletefavorite(content_idx, user_idx);
		}
		return "board/board_read";
	}

	@ResponseBody
	@PostMapping("/anonymous")
	private String anonymous() {
		if (loginuserBean.isUserAnonymous() == false) {
			loginuserBean.setUserAnonymous(true);
		} else {
			loginuserBean.setUserAnonymous(false);
		}
		return "board/board_write";
	}

// --------------- comment 구간 ------------------------------------------------------------------------------------------------

	@ResponseBody
	@PostMapping("/addComment")
	public int addComment(@RequestParam("comment_text") String comment_text, @RequestParam("user_idx") int user_idx,
			@RequestParam("content_idx") int content_idx,
			@RequestParam(value = "comment_parent_idx", defaultValue = "0") int comment_parent_idx,
			@RequestParam(value = "type", defaultValue = "comment") String type,
			@RequestParam(value = "favorite_idx", required = false, defaultValue = "0") int favorite_idx) {

		CommentBean addComment = new CommentBean();
		addComment.setComment_text(comment_text);
		addComment.setContent_idx(content_idx);
		addComment.setUser_idx(user_idx);
		addComment.setComment_parent_idx(comment_parent_idx);
		addComment.setFavorite_idx(favorite_idx);

		int result = 0;
		try {
			if ("reply".equals(type)) {
				result = commentService.addReply(addComment);
			} else {
				result = commentService.addComment(addComment);
			}
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

	@ResponseBody
	@GetMapping("/deleteComment")
	public ResponseEntity<?> deleteComment(@RequestParam("comment_idx") int comment_idx) {
		try {
			commentService.deleteComment(comment_idx);
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>("오류 발생: " + e.getMessage(), HttpStatus.BAD_REQUEST);
		}
	}

	@ResponseBody
	@PostMapping("/modifyComment")
	public ResponseEntity<?> modifyComment(@RequestBody HashMap<String, Object> map) {
		try {
			int comment_idx = Integer.parseInt(map.get("comment_idx").toString());
			String comment_text = map.get("comment_text").toString();

			commentService.modifyComment(comment_idx, comment_text);
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		} catch (Exception e) {
			return new ResponseEntity<>("수정 실패: " + e.getMessage(), HttpStatus.BAD_REQUEST);
		}
	}
}