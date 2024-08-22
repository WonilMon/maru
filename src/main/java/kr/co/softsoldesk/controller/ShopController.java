package kr.co.softsoldesk.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.mapper.UserMapper;
import kr.co.softsoldesk.service.IconService;
import kr.co.softsoldesk.service.UserIconService;

@Controller
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    private UserMapper userMapper;    
    
    @Autowired
    private IconService iconService;
    
    @Autowired
    private UserBean loginUserBean; 
    
    @Autowired
    private UserIconService userIconService;
    
    @GetMapping
    public String showShop(@RequestParam("user_idx") int user_idx, Model model) {
        // 사용자가 로그인했는지 확인
        if (!loginUserBean.isUserLogin()) {
            // 사용자가 로그인하지 않은 경우를 로그로 남기고 처리
            System.err.println("User is not logged in");
            return "error/notLoggedIn"; // 적절한 오류 뷰 반환
        }

        // URL의 user_idx가 로그인한 사용자의 user_idx와 일치하는지 확인
        if (user_idx != loginUserBean.getUser_idx()) {
            // 사용자가 다른 사용자의 상점에 접근하려는 경우를 로그로 남기고 처리
            System.err.println("Unauthorized access attempt by user_idx: " + loginUserBean.getUser_idx());
            return "error/unauthorized"; // 적절한 오류 뷰 반환
        }

        // 사용자 세부 정보 가져오기
        UserBean user = userMapper.getUserById(user_idx);
        if (user == null) {
            // 사용자를 찾을 수 없는 경우를 로그로 남기고 처리
            System.err.println("User not found with user_idx: " + user_idx);
            return "error/userNotFound"; // 적절한 오류 뷰 반환
        }
        model.addAttribute("user", user);

        List<IconBean> icons = iconService.getAllIcons();
        if (icons == null) {
            // 아이콘을 찾을 수 없는 경우를 로그로 남기고 처리
            System.err.println("No icons found");
            return "error/iconsNotFound"; // 적절한 오류 뷰 반환
        }

        // 이미지 필터처럼 사용할 리스트들
        List<IconBean> dinosaurIcons = new ArrayList<>();
        List<IconBean> dogIcons = new ArrayList<>();
        List<IconBean> gorillaIcons = new ArrayList<>();
        List<IconBean> otterIcons = new ArrayList<>();
        List<IconBean> rabbitIcons = new ArrayList<>();

        for (IconBean icon : icons) {
            icon.setIcon_price(icon.getIcon_price());

            if (icon.getIcon_name().startsWith("dinosaur")) {
                dinosaurIcons.add(icon);
            } else if (icon.getIcon_name().startsWith("dog")) {
                dogIcons.add(icon);
            } else if (icon.getIcon_name().startsWith("gorilla")) {
                gorillaIcons.add(icon);
            } else if (icon.getIcon_name().startsWith("otter")) {
                otterIcons.add(icon);
            } else if (icon.getIcon_name().startsWith("rabbit")) {
                rabbitIcons.add(icon);
            }
        }

        model.addAttribute("dinosaurIcons", dinosaurIcons);
        model.addAttribute("dogIcons", dogIcons);
        model.addAttribute("gorillaIcons", gorillaIcons);
        model.addAttribute("otterIcons", otterIcons);
        model.addAttribute("rabbitIcons", rabbitIcons);

        // 사용자가 소유한 아이콘 리스트 가져오기
        List<IconBean> userIcons = iconService.getIconsByUserId(user_idx);
        if (userIcons == null) {
            // 사용자가 소유한 아이콘을 찾을 수 없는 경우를 로그로 남기고 처리
            System.err.println("No user icons found for user_idx: " + user_idx);
            return "error/userIconsNotFound"; // 적절한 오류 뷰 반환
        }
        model.addAttribute("userIcons", userIcons);

        return "shop/shop";
    }

    @PostMapping("/buyIcon")
    public ResponseEntity<String> buyIcon(@RequestBody Map<String, Integer> request) {
        int user_idx = request.get("user_idx");
        int icon_idx = request.get("icon_idx");

        boolean success = userIconService.buyIcon(user_idx, icon_idx);
        if (success) {
            return ResponseEntity.ok("success");
        } else {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("insufficient_points");
        }
    }
}
	/*
	 * @GetMapping("/shop/uploadIcons") public String uploadIcons() { String
	 * basePath = servletContext.getRealPath("/resources/shop"); // 리소스 폴더 경로 File
	 * baseDir = new File(basePath);
	 * 
	 * List<IconBean> iconBeans = new ArrayList<>();
	 * 
	 * if (baseDir.exists() && baseDir.isDirectory()) {
	 * System.out.println("Base directory exists: " + basePath); for (File animalDir
	 * : baseDir.listFiles()) { if (animalDir.isDirectory() &&
	 * !animalDir.getName().equals("default")) { String animalName =
	 * animalDir.getName(); System.out.println("Processing directory: " +
	 * animalName); for (File imageFile : animalDir.listFiles()) { if
	 * (imageFile.isFile() && imageFile.getName().endsWith(".png")) {
	 * System.out.println("Processing file: " + imageFile.getName()); IconBean
	 * iconBean = new IconBean(); iconBean.setIcon_name(animalName + "_" +
	 * imageFile.getName().replace(".png", ""));
	 * iconBean.setIcon_path("/resources/shop/" + animalName + "/" +
	 * imageFile.getName()); iconBean.setIcon_price(500); // 아이콘 가격을 500으로 고정
	 * iconBeans.add(iconBean); System.out.println("Added icon: " +
	 * iconBean.getIcon_name()); } } } } } else {
	 * System.out.println("Base directory does not exist: " + basePath); }
	 * 
	 * // Save icons to the database for (IconBean iconBean : iconBeans) {
	 * iconService.insertIcon(iconBean); }
	 * 
	 * return "redirect:/shop/iconManager"; }
	 * 
	 * @PostMapping("/addIcon") public String addIcon(@ModelAttribute IconBean
	 * iconBean) { iconBean.setIcon_price(500); // 아이콘 가격을 500으로 고정
	 * iconService.insertIcon(iconBean); return "redirect:/shop/iconManager"; }
	 */
