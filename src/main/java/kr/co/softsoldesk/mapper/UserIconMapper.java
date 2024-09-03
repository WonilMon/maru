package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import kr.co.softsoldesk.beans.IconBean;

@Mapper
public interface UserIconMapper {

    @Insert("INSERT INTO user_icon (user_icon_idx, user_idx, icon_idx) VALUES (user_icon_seq.NEXTVAL, #{user_idx}, #{icon_idx})")
    void insertUserIcon(@Param("user_idx") int user_idx, @Param("icon_idx") int icon_idx);

    @Select("SELECT * FROM icon WHERE icon_idx IN (SELECT icon_idx FROM user_icon WHERE user_idx = #{user_idx})")
    List<IconBean> getIconsByUserId(int user_idx);

    @Delete("DELETE FROM user_icon WHERE user_idx = #{user_idx} AND icon_idx = #{icon_idx}")
    void deleteUserIcon(@Param("user_idx") int user_idx, @Param("icon_idx") int icon_idx);
    
    @Select("SELECT i.icon_idx, i.icon_name, i.icon_path " +
            "FROM user_icon ui " +
            "JOIN icon i ON ui.icon_idx = i.icon_idx " +
            "WHERE ui.user_idx = #{user_idx}")
    List<IconBean> selectIconsByUserId(int user_idx);


    
}
