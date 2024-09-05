package kr.co.softsoldesk.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.RouletteService;

@Controller
public class RouletteController {

	@Autowired
	private RouletteService rouletteService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/spinRoulette")
	public String spinRoulette(Model model, HttpSession session, RedirectAttributes redirectAttributes) {

		if (loginUserBean.isUserLogin() == true) {
			int user_idx = loginUserBean.getUser_idx(); // 로그인한 사용자의 ID 가져오기
			return "user/roulette";
		} else {

			return "user/not_login";
		}
	}

	// 사용자가 룰렛 페이지를 방문할 때 호출

	@GetMapping("/roulette")
	public String showRoulettePage(Model model) {
		// 추가 로직이 필요할 경우 여기에 작성
		return "user/roulette";
	}

	// 사용자가 룰렛을 돌리기 요청을 할 때 호출
	@RequestMapping(value = "savePoint", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> spinRoulette(@RequestBody Map<String, Integer> requestData) {
		Map<String, Object> response = new HashMap<>();

		if (loginUserBean.isUserLogin()) {
			int user_idx = loginUserBean.getUser_idx(); // 로그인한 사용자의 ID 가져오기
			int points = requestData.get("point");

			if (rouletteService.spinRoulette(user_idx)) {
				boolean isUpdated = rouletteService.updateUserPoints(user_idx, points);
				if (isUpdated) {
					int currentPoints = rouletteService.getUserPoints(user_idx);
					loginUserBean.setUser_point(currentPoints); // UserBean에 업데이트된 포인트 반영
					response.put("status", "success");
					response.put("message", "축하합니다! " + points + " 포인트 획득했습니다!");
				} else {
					response.put("status", "failure");
					response.put("message", "포인트 업데이트 중 문제가 발생했습니다.");
				}
			} else {
				response.put("status", "failure");
				response.put("message", "오늘은 이미 룰렛을 돌렸습니다. 내일 다시 시도해주세요.");
			}
		} else {
			response.put("status", "failure");
			response.put("message", "로그인이 필요합니다.");
		}

		return response;
	}

	@PostMapping("/checkCanSpin")
	@ResponseBody
	public Map<String, Object> checkCanSpin(@RequestBody Map<String, Integer> params) {
		Map<String, Object> result = new HashMap<>();
		Integer userIdx = params.get("user_idx");

		if (userIdx == null) {
			throw new IllegalArgumentException("user_idx가 누락되었습니다.");
		}

		boolean canSpin = rouletteService.canSpinRoulette(userIdx);
		result.put("canSpin", canSpin);

		return result;
	}

}
