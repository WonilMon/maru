package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.softsoldesk.service.UserService;

@RestController
public class RestApiController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/user/checkUserNickNameExist/{user_nickname}") // 여기서 {user_id}는 동적 값
	public String checkUserNickNameExist (@PathVariable String user_nickname) { // @PathVariable은 동적값을 넣겠다. (즉, view에서 올려보낸 user_id가 여기 매개변수로 들어감)
		boolean chk = userService.checkUserNickNameExist(user_nickname);
//		ID가 DB에 있으면 true, 없으면 false
		return chk + ""; 
	}
	@GetMapping("/user/checkUserEmailExist/{user_email}") // 여기서 {user_id}는 동적 값
	public String checkUserEmailExist (@PathVariable String user_email) { // @PathVariable은 동적값을 넣겠다. (즉, view에서 올려보낸 user_id가 여기 매개변수로 들어감)
		boolean chk = userService.checkUserEmailExist(user_email);
//		ID가 DB에 있으면 true, 없으면 false
		return chk + ""; 
	}
	
}
