package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@GetMapping("/write")
	private String write() {
		return "board/write";
	}

	@GetMapping("/sharing_list")
	private String sharing_list() {
		return "board/sharing_list";
	}

	@GetMapping("/board_prev_main")
	private String board_prev_main() {
		return "board/board_prev_main";
	}
	
	@GetMapping("/board_main")
	private String board_main() {
		return "board/board_main";
	}
	
	@GetMapping("/board_modify")
	private String board_modify() {
		return "board/board_modify";
	}

}
