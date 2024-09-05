package kr.co.softsoldesk.mapper;

import java.sql.Date;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface RouletteMapper {
	
	// 레코드 존재 여부 확인
    @Select("SELECT COUNT(*) FROM roulette WHERE user_idx = #{user_idx}")
    int checkRouletteExists(int user_idx);
    
    // 새로운 레코드 삽입
    @Insert("INSERT INTO roulette (user_idx, roulette_count, last_spin_date) VALUES (#{user_idx}, 0, SYSDATE)")
    void insertNewRoulette(int user_idx);

    // 레코드 업데이트
    @Update("UPDATE roulette SET roulette_count = roulette_count + 1, last_spin_date = SYSDATE WHERE user_idx = #{user_idx}")
    void updateRoulette(int user_idx);
    
	// 유저의 마지막 룰렛 회전 기록 가져오기
    @Select("SELECT last_spin_date FROM roulette WHERE user_idx = #{user_idx}")
    Date getLastSpinDate(@Param("user_idx") int user_idx);

    // 룰렛 회전 기록 업데이트
    @Update("UPDATE roulette SET roulette_count = roulette_count + 1, last_spin_date = SYSDATE WHERE user_idx = #{user_idx}")
    void updateSpinRecord(@Param("user_idx") int user_idx);
    
    // 유저 포인트 업데이트
    @Update("UPDATE users SET user_point = user_point + #{points} WHERE user_idx = #{user_idx}")
    void updateUserPoints(@Param("user_idx") int user_idx, @Param("points") int points);
    
    // 유저 포인트 가져오기
    @Select("SELECT user_point FROM users WHERE user_idx = #{user_idx}")
    int getUserPoints(@Param("user_idx") int user_idx);
}
