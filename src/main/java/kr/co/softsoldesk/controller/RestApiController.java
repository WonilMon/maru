package kr.co.softsoldesk.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.UserService;

@RestController
public class RestApiController {

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@Autowired
	private UserService userService;

	// register
	@GetMapping("/user/checkUserNickNameExist/{user_nickname}")
	public String checkUserNickNameExist(@PathVariable String user_nickname) {
		boolean chk = userService.checkUserNickNameExist(user_nickname);
//		ID가 DB에 있으면 true, 없으면 false
		return chk + "";
	}

	// profile
	@GetMapping("/user/checkUserNickNameExist_profile/{user_nickname}")
	public String checkUserNickNameExist_profile(@PathVariable String user_nickname) {

		boolean chk;
		if (loginUserBean.getUser_nickname().equals(user_nickname)) {
			chk = false;
		} else {
			chk = userService.checkUserNickNameExist(user_nickname);
		}

//		ID가 DB에 있으면 true, 없으면 false
		return chk + "";
	}

	@GetMapping("/user/checkUserEmailExist/{user_email}") // 여기서 {user_id}는 동적 값
	public String checkUserEmailExist(@PathVariable String user_email) { // @PathVariable은 동적값을 넣겠다. (즉, view에서 올려보낸
																			// user_id가 여기 매개변수로 들어감)
		boolean chk = userService.checkUserEmailExist(user_email);
//		ID가 DB에 있으면 true, 없으면 false
		return chk + "";
	}

	@GetMapping("/user/modifyStatustext/{user_idx}")
	public String modifyStatustext(@PathVariable("user_idx") String user_statustext) {
		System.out.println(user_statustext);

		// 실제 로직을 구현해야 합니다.
		return "수정된 상태 메시지: " + user_statustext;
	}
}
