package kr.co.softsoldesk.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.UserIconService;
import kr.co.softsoldesk.service.UserService;

@RestController
@PropertySource("/WEB-INF/properties/option.properties")
public class RestApiController {

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@Autowired
	private UserService userService;

	@Autowired
	private UserIconService userIconService;

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

	// 상점에서 사기
	@PostMapping("/buyIcon/{icon_idx}/{user_idx}")
	public ResponseEntity<String> buyIcon(@PathVariable("icon_idx") int icon_idx,
			@PathVariable("user_idx") int user_idx) {
		boolean success = userIconService.buyIcon(user_idx, icon_idx);
		if (success) {
			return ResponseEntity.ok("success");
		} else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("insufficient_points");
		}
	}

	// 프로필 이미지 변경
	@Value("${path.upload}")
	private String uploadFolder;// 프로퍼티에 저장된 업로드 폴더

	private String saveUploadFile(MultipartFile uploadFile) {
		String fileName = System.currentTimeMillis() + "_" + uploadFile.getOriginalFilename();
		File uploadDir = new File(uploadFolder);

		if (!uploadDir.exists()) {
			uploadDir.mkdirs();
		}

		try {
			uploadFile.transferTo(new File(uploadDir, fileName));
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return fileName;
	}

	@PostMapping("/user/uploadProfileImage")
	public ResponseEntity<String> uploadProfileImage(@RequestParam("profileImage") MultipartFile file) {

		if (file.isEmpty()) {
			return new ResponseEntity<>("파일없음", HttpStatus.BAD_REQUEST);
		}

		String fileName = saveUploadFile(file);
		userService.updateImgFile(fileName, loginUserBean.getUser_idx());

		if (fileName == null) {
			return new ResponseEntity<>("파일 저장 실패", HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return new ResponseEntity<>("업로드 완료: " + fileName, HttpStatus.OK);
	}

	@GetMapping("/getProfileImage/{fileName}")
	public ResponseEntity<byte[]> getProfileImage(@PathVariable String fileName) {

		try {
			Path filePath = Paths.get(uploadFolder, fileName);

			if (!Files.exists(filePath)) {
				return new ResponseEntity<>(HttpStatus.NOT_FOUND);
			}

			byte[] imageBytes = Files.readAllBytes(filePath);

			return ResponseEntity.ok().header("Content-Type", Files.probeContentType(filePath)).body(imageBytes);

		} catch (IOException e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
	}

}
