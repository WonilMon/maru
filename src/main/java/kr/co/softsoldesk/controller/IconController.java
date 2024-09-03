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
import org.springframework.web.bind.annotation.RequestBody;
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
   
}

