package kr.co.softsoldesk.service;

import java.sql.Date;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.mapper.RouletteMapper;

@Service
public class RouletteService {

	@Autowired
	private RouletteMapper rouletteMapper;

	// 사용자가 룰렛을 돌릴 수 있는지 확인
	public boolean canSpinRoulette(int user_idx) {
		Date lastSpinDate = rouletteMapper.getLastSpinDate(user_idx);

		if (lastSpinDate == null) {
			// 사용자가 룰렛을 한 번도 돌리지 않은 경우
			return true;
		}

		Calendar lastSpinCal = Calendar.getInstance();
		lastSpinCal.setTime(lastSpinDate);

		Calendar today = Calendar.getInstance();

//		System.out.println(" 오늘 " + today.get(Calendar.DAY_OF_YEAR));
//		System.out.println(" 이전 " + lastSpinCal.get(Calendar.DAY_OF_YEAR));
		
		if (today.get(Calendar.DAY_OF_YEAR) != lastSpinCal.get(Calendar.DAY_OF_YEAR)) {
			// 사용자가 룰렛을 한 번도 돌리지 않은 경우
			return true;
		}
		
		// 날짜만 비교 (년, 월, 일)
		return today.get(Calendar.YEAR) != lastSpinCal.get(Calendar.YEAR)
				&& today.get(Calendar.DAY_OF_YEAR) != lastSpinCal.get(Calendar.DAY_OF_YEAR);
	}
	
	// 룰렛을 돌리고 포인트를 업데이트하는 메소드
    public boolean spinRoulette(int user_idx) {
        // 사용자가 오늘 룰렛을 돌렸는지 확인
        if (!canSpinRoulette(user_idx)) {
            // 오늘 이미 돌린 경우
            return false; // 실패 상태를 나타내기 위한 값
        }

        // 룰렛 회전 기록 업데이트
        if (rouletteMapper.checkRouletteExists(user_idx) > 0) {
            rouletteMapper.updateRoulette(user_idx);
        } else {
            rouletteMapper.insertNewRoulette(user_idx);
        }
        
        return true;
    }
        
	// 포인트 업데이트 메서드 추가
	public boolean updateUserPoints(int user_idx, int points) {
		try {
			rouletteMapper.updateUserPoints(user_idx, points);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public int getUserPoints(int user_idx) {
		return rouletteMapper.getUserPoints(user_idx);
	}
}
