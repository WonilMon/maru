package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.mapper.IconMapper;

@Service
public class IconService {

    @Autowired
    private IconMapper iconMapper;

    public IconBean getIconById(int icon_idx) {
        return iconMapper.getIconById(icon_idx);
    }

    public List<IconBean> getAllIcons() {
        return iconMapper.getAllIcons();
    }

    public void insertIcon(IconBean iconBean) {
        iconMapper.insertIcon(iconBean);
    }

    public void updateIcon(IconBean iconBean) {
        iconMapper.updateIcon(iconBean);
    }

    public void deleteIcon(int icon_idx) {
        iconMapper.deleteIcon(icon_idx);
    }

    // Methods for user_icon table
    public void insertUserIcon(int user_idx, int icon_idx) {
        iconMapper.insertUserIcon(user_idx, icon_idx);
    }

    public List<IconBean> getIconsByUserId(int user_idx) {
        return iconMapper.getIconsByUserId(user_idx);
    }
    
    //가격 계산하는 메서드
    public int getIconPriceById(int icon_idx) {
        return iconMapper.getIconPriceById(icon_idx);
    }
    
}