package kr.co.softsoldesk.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import kr.co.softsoldesk.beans.IconBean;

@Mapper
public interface IconMapper {

    @Select("SELECT * FROM icon")
    List<IconBean> getAllIcons();

    @Insert("INSERT INTO icon (icon_name, icon_path, icon_price) VALUES (#{icon_name}, #{icon_path}, #{icon_price})")
    void insertIcon(IconBean iconBean);

    @Update("UPDATE icon SET icon_name = #{icon_name}, icon_path = #{icon_path}, icon_price = #{icon_price} WHERE icon_idx = #{icon_idx}")
    void updateIcon(IconBean iconBean);

    @Delete("DELETE FROM icon WHERE icon_idx = #{icon_idx}")
    void deleteIcon(int icon_idx);

    // Methods for user_icon table
    @Insert("INSERT INTO user_icon (user_icon_idx, user_idx, icon_idx) VALUES (user_icon_seq.nextval, #{user_idx}, #{icon_idx})")
    void insertUserIcon(@Param("user_idx") int user_idx, @Param("icon_idx") int icon_idx);

    @Select("SELECT * FROM icon WHERE icon_idx IN (SELECT icon_idx FROM user_icon WHERE user_idx = #{user_idx})")
    List<IconBean> getIconsByUserId(int user_idx);

    @Delete("DELETE FROM user_icon WHERE user_idx = #{user_idx} AND icon_idx = #{icon_idx}")
    void deleteUserIcon(@Param("user_idx") int user_idx, @Param("icon_idx") int icon_idx);

    // 아이콘 구매 관련
    @Select("SELECT icon_price FROM icon WHERE icon_idx = #{icon_idx}")
    int getIconPriceById(int icon_idx);

    @Select("SELECT * FROM icon WHERE icon_idx = #{icon_idx}")
    IconBean getIconById(@Param("icon_idx") int icon_idx);

    // 추가된 메서드들
    
    @Update("UPDATE icon SET icon_price = #{icon_price} WHERE icon_idx = #{icon_idx}")
    void updateIconPrice(@Param("icon_idx") int icon_idx, @Param("icon_price") int icon_price);
    
 // 
    @Select("SELECT COUNT(*) FROM user_icon WHERE user_idx = #{user_idx} AND icon_idx = #{icon_idx}")
    int userOwnsIcon(@Param("user_idx") int user_idx, @Param("icon_idx") int icon_idx);
//프로필 바꿀 때 쓸거임
    @Update("UPDATE user_icon SET icon_path = #{icon_path} WHERE user_idx = #{user_idx}")
    void updateUserIconPath(@Param("user_idx") int user_idx, @Param("icon_path") String icon_path);
    

    
    
}