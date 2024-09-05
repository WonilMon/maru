package kr.co.softsoldesk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.softsoldesk.mapper.UserIconMapper;
import kr.co.softsoldesk.mapper.IconMapper;
import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.beans.UserBean;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

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

    //랜덤으로 아이콘 구매+ 중북된 아이콘 필터링
    @Transactional
    public IconBean buyRandomIcon(int user_idx) {
        // 모든 아이콘을 가져옴
        List<IconBean> allIcons = iconMapper.getAllIcons();
        // 사용자가 소유한 아이콘을 가져옴
        List<IconBean> userIcons = userIconMapper.getIconsByUserId(user_idx);

        // 사용자가 소유하지 않은 아이콘 목록을 필터링
        List<IconBean> availableIcons = allIcons.stream()
                .filter(icon -> userIcons.stream().noneMatch(userIcon -> userIcon.getIcon_idx() == icon.getIcon_idx()))
                .collect(Collectors.toList());

        if (availableIcons.isEmpty()) {
            return null; // 구매 가능한 아이콘이 없음
        }

        // 랜덤으로 아이콘 선택
        Random random = new Random();
        IconBean randomIcon = availableIcons.get(random.nextInt(availableIcons.size()));

        // 사용자가 아이콘을 구매할 충분한 포인트를 가지고 있는지 확인
        UserBean user = userService.getUserById(user_idx);
        if (user.getUser_point() >= randomIcon.getIcon_price()) {
            // 사용자의 포인트에서 아이콘 가격을 차감
            user.setUser_point(user.getUser_point() - randomIcon.getIcon_price());
            // 데이터베이스에서 사용자의 포인트를 업데이트
            userService.updateUserPoints(user);
            // 사용자의 아이콘 컬렉션에 아이콘을 추가
            userIconMapper.insertUserIcon(user_idx, randomIcon.getIcon_idx());
            return randomIcon;
        } else {
            return null; // 사용자가 충분한 포인트를 가지고 있지 않음
        }
    }
    
    public void insertUserIcon(int user_idx, int icon_idx) {
        userIconMapper.insertUserIcon(user_idx, icon_idx);
    }

    public void deleteUserIcon(int user_idx, int icon_idx) {
        userIconMapper.deleteUserIcon(user_idx, icon_idx);
    }

    @Transactional
    public List<IconBean> getIconsByUserId(int user_idx) {
        return userIconMapper.getIconsByUserId(user_idx);
    }
    
    
    
}
  
    
    
    
