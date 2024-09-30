package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.softsoldesk.beans.BoardInfoBean;
import kr.co.softsoldesk.beans.ContentBean;

public interface SearchMapper {

	// 메인
	@Select("SELECT c.content_idx, c.content_text, c.content_subject, to_char(c.content_date, 'YYYY-MM-DD HH24:MI') as content_date, u.user_nickname AS user_name, bi.board_info_name AS board_info_name, bi.board_info_idx as board_info_idx, COUNT(cm.comment_idx) AS content_comment_count "
	        + "FROM content c "
	        + "JOIN users u ON u.user_idx = c.user_idx "
	        + "JOIN board_info bi ON bi.board_info_idx = c.board_info_idx "
	        + "LEFT JOIN comments cm ON cm.content_idx = c.content_idx "
	        + "WHERE (LOWER(c.content_subject) LIKE '%' || LOWER(#{keyWord}) || '%' OR LOWER(c.content_text) LIKE '%' || LOWER(#{keyWord}) || '%') "
	        + "GROUP BY c.content_idx, c.content_text, c.content_subject, c.content_date, u.user_nickname, bi.board_info_name, bi.board_info_idx " 
	        + "ORDER BY c.content_date DESC ")
	List<ContentBean> getSearchResult(@Param("keyWord") String keyWord, RowBounds rowBounds);

	// 메인 - 페이지네이션
	@Select("select count(*) FROM content WHERE (LOWER(content_subject) LIKE '%' || LOWER(#{keyWord}) || '%' OR LOWER(content_text) LIKE '%' || LOWER(#{keyWord}) || '%')")
	int getFaqCnt(@Param("keyWord") String keyWord);
}
