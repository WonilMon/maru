package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import kr.co.softsoldesk.service.UserIconService;
import kr.co.softsoldesk.beans.IconBean;

import java.util.List;

@Controller
@RequestMapping("/userIcon")
public class UserIconController {

    @Autowired
    private UserIconService userIconService;

    @PostMapping("/add")
    public ResponseEntity<String> addUserIcon(@RequestParam("user_idx") int user_idx, @RequestParam("icon_idx") int icon_idx) {
        userIconService.insertUserIcon(user_idx, icon_idx);
        return ResponseEntity.ok("Icon added successfully");
    }

    @GetMapping("/list/{user_idx}")
    public List<IconBean> getUserIcons(@PathVariable int user_idx) {
        return userIconService.getIconsByUserId(user_idx);
    }

    @DeleteMapping("/delete")
    public ResponseEntity<String> deleteUserIcon(@RequestParam("user_idx") int user_idx, @RequestParam("icon_idx") int icon_idx) {
        userIconService.deleteUserIcon(user_idx, icon_idx);
        return ResponseEntity.ok("Icon deleted successfully");
    }
}