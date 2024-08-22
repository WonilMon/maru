package kr.co.softsoldesk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.softsoldesk.mapper.UserIconMapper;
import kr.co.softsoldesk.mapper.IconMapper;
import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.beans.UserBean;

import java.util.List;

@Service
public class UserIconService {

    @Autowired
    private UserIconMapper userIconMapper;

    @Autowired
    private IconMapper iconMapper;

    @Autowired
    private UserService userService;

    @Transactional
    public boolean buyIcon(int user_idx, int icon_idx) {
        // 사용자가 이미 아이콘을 소유하고 있는지 확인
        if (iconMapper.userOwnsIcon(user_idx, icon_idx) > 0) {
            return false; // 사용자가 중복된 아이콘을 소유하지 못하게 함
        }

        // 사용자와 아이콘 정보를 조회
        UserBean user = userService.getUserById(user_idx);
        IconBean icon = iconMapper.getIconById(icon_idx);

        // 사용자가 아이콘을 구매할 충분한 포인트를 가지고 있는지 확인
        if (user.getUser_point() >= icon.getIcon_price()) {
            // 사용자의 포인트에서 아이콘 가격을 차감
            user.setUser_point(user.getUser_point() - icon.getIcon_price());
            // 데이터베이스에서 사용자의 포인트를 업데이트
            userService.updateUserPoints(user);
            // 사용자의 아이콘 컬렉션에 아이콘을 추가
            iconMapper.insertUserIcon(user_idx, icon_idx);
            return true;
        } else {
            return false; // 사용자가 충분한 포인트를 가지고 있지 않음
        }
    }

    public void insertUserIcon(int user_idx, int icon_idx) {
        userIconMapper.insertUserIcon(user_idx, icon_idx);
    }
    
    public List<IconBean> getIconsByUserId(int user_idx) {
        return userIconMapper.getIconsByUserId(user_idx);
    }

    public void deleteUserIcon(int user_idx, int icon_idx) {
        userIconMapper.deleteUserIcon(user_idx, icon_idx);
    }

    @Transactional
    public void updateUserIconPath(int user_idx, String icon_path) {
        IconBean icon = new IconBean();
        icon.setIcon_path(icon_path);
        iconMapper.updateUserIconPath(user_idx, icon.getIcon_path());
    }
}