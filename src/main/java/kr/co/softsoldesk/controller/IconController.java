package kr.co.softsoldesk.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.service.IconService;
import kr.co.softsoldesk.service.UserIconService;

@Controller
public class IconController {

    @Autowired
    private IconService iconService;
   
    @Autowired
    private UserIconService userIconService;
    
    
    @GetMapping("/icon/price/{icon_idx}")
    @ResponseBody
    public int getIconPrice(@PathVariable int icon_idx) {
        return iconService.getIconPriceById(icon_idx);
    }

    @GetMapping("/icon/{icon_idx}")
    @ResponseBody
    public IconBean getIcon(@PathVariable int icon_idx) {
        return iconService.getIconById(icon_idx);
    }
    
    @PostMapping("/icon/updateUserIcon")
    @ResponseBody
    public Map<String, Object> updateUserIcon(@RequestParam("user_idx") int user_idx, @RequestParam("icon_path") String icon_path) {
        Map<String, Object> response = new HashMap<>();
        try {
            userIconService.updateUserIconPath(user_idx, icon_path);
            response.put("success", true);
        } catch (Exception e) {
            response.put("success", false);
        }
        return response;
    }
}
//    @GetMapping("/icon/uploadIcons")
//    public String uploadIcons() {
//        String basePath = System.getProperty("user.dir") + "/src/main/webapp/resources/shop"; // 절대 경로 사용
//        File baseDir = new File(basePath);
//
//        List<IconBean> iconList = new ArrayList<>();
//
//        if (baseDir.exists() && baseDir.isDirectory()) {
//            for (File dir : baseDir.listFiles()) {
//                if (dir.isDirectory()) {
//                    for (File imageFile : dir.listFiles()) {
//                        if (imageFile.isFile() && imageFile.getName().endsWith(".png")) {
//                            IconBean icon = new IconBean();
//                            icon.setIcon_name(imageFile.getName().replace(".png", ""));
//                            icon.setIcon_path("/resources/shop/" + dir.getName() + "/" + imageFile.getName());
//                            icon.setIcon_price(500); // 예시로 icon_price를 500으로 설정
//                            iconList.add(icon);
//                        }
//                    }
//                }
//            }
//        } else {
//            // 디렉토리 생성
//            if (baseDir.mkdirs()) {
//                System.out.println("Base directory created: " + basePath);
//            } else {
//                System.out.println("Failed to create base directory: " + basePath);
//            }
//        }
//
//        for (IconBean icon : iconList) {
//            iconService.insertIcon(icon);
//        }
//
//        return "redirect:/iconManager";
//    }
//
//    @GetMapping("/iconManager")
//    public String iconManager(Model model) {
//        String basePath = System.getProperty("user.dir") + "/src/main/webapp/resources/shop"; // 절대 경로 사용
//        File baseDir = new File(basePath);
//
//        // 기본 이미지 설정
//        Map<String, String> defaultImages = new HashMap<>();
//        File defaultDir = new File(basePath + "/default");
//        if (defaultDir.exists() && defaultDir.isDirectory()) {
//            for (File imageFile : defaultDir.listFiles()) {
//                if (imageFile.isFile() && imageFile.getName().endsWith(".png")) {
//                    String animalName = imageFile.getName().replace(".png", "");
//                    defaultImages.put(animalName, "/resources/shop/default/" + imageFile.getName()); // 경로 수정
//                }
//            }
//        }
//        model.addAttribute("defaultImages", defaultImages);
//
//        Map<String, List<String>> animalImages = new HashMap<>();
//        if (baseDir.exists() && baseDir.isDirectory()) {
//            for (File animalDir : baseDir.listFiles()) {
//                if (animalDir.isDirectory() && !animalDir.getName().equals("default")) {
//                    String animalName = animalDir.getName();
//                    List<String> images = new ArrayList<>();
//                    for (File imageFile : animalDir.listFiles()) {
//                        if (imageFile.isFile() && imageFile.getName().endsWith(".png")) {
//                            images.add("/resources/shop/" + animalName + "/" + imageFile.getName()); // 경로 수정
//                        }
//                    }
//                    animalImages.put(animalName, images);
//                }
//            }
//        }
//        model.addAttribute("animals", animalImages.keySet());
//        model.addAttribute("animalImages", animalImages);
//
//        // Icon 데이터를 모델에 추가
//        List<IconBean> iconList = iconService.getAllIcons(); // Icon 데이터를 가져오는 메서드
//        model.addAttribute("iconList", iconList);
//
//        return "iconManager";
//    }