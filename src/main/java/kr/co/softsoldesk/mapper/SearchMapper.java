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
	@Select("select * FROM content WHERE (LOWER(content_subject) LIKE '%' || LOWER(#{keyWord}) || '%' OR LOWER(content_text) LIKE '%' || LOWER(#{keyWord}) || '%')")
	List<ContentBean> getSearchResult(@Param("keyWord") String keyWord, RowBounds rowBounds);

	// 메인 - 페이지네이션
	@Select("select count(*) FROM content WHERE (LOWER(content_subject) LIKE '%' || LOWER(#{keyWord}) || '%' OR LOWER(content_text) LIKE '%' || LOWER(#{keyWord}) || '%')")
	int getFaqCnt(@Param("keyWord") String keyWord);
}
