package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.softsoldesk.beans.BoardInfoBean;
import kr.co.softsoldesk.beans.ContentBean;

public interface BoardMapper {

	// 게시글 등록 insert
	// hashtag 하나만 넣는걸로 가정했음
	@Insert("insert into content(content_idx, content_subject, content_text, content_file, content_date, content_isAnonymous, user_idx, board_info_idx) "
			+ "values(content_seq.nextval, #{content_subject}, #{content_text}, #{content_file, jdbcType=VARCHAR}, sysdate, #{content_isAnonymous}, #{user_idx}, #{board_info_idx})")
	void addContent(ContentBean writeContentBean);

	// 게시글 idx로 게시글 전체 불러오기 (content의 내용들 + user 정보)
	@Select("select u.user_idx as user_idx ,c.content_subject, c.content_views, c.board_info_idx, c.content_idx, c.content_file, c.content_text, to_char(c.content_date, 'YYYY-MM-DD') as content_date, u.user_nickname as user_name "
			+ "from content c, users u " 
			+ "where c.user_idx = u.user_idx "
			+ "and content_idx = #{content_idx}")
	ContentBean getReadContent(int content_idx);
	
	// 게시글 업데이트 update
	@Update("update content set content_subject = #{content_subject}, content_text = #{content_text}, content_file = #{content_file, jdbcType=VARCHAR} where content_idx = #{content_idx}")
	void updateContent(ContentBean modifyContentBean);

	// 게시글 삭제 delete
	@Delete("delete content where content_idx=#{content_idx}")
	void deleteContent(int content_idx);

	
	//-----------------------------------------------
	
	// idx에 맞는 게시판명 하나 가져오기
	@Select("select board_info_name from board_info where board_info_idx = #{board_info_idx}")
	String getBoardInfoName(int board_info_idx);
	
	// 해당 게시판의 게시글 수 가져오기
	@Select("select count(*) from content where board_info_idx = #{board_info_idx}")
	int getContentCnt(int board_info_idx);
	
	// 내가 방금 작성한 게시글 번호 가져오기
	@Select("select max(content_idx) from content_table")
	int getLatestIdx();
	
	// 최신 글 10개의 게시글 idx 가져오기 (board_prev_main에서 쓰면될 듯)
	@Select("SELECT content_idx FROM (SELECT content_idx FROM content where board_info_idx = #{board_Info_Idx} ORDER BY content_createdAt DESC) WHERE ROWNUM <= 10")
	List<Integer> getLatest10ContentIdx(int board_Info_Idx);

	// 상위 조회수 5개의 게시글 idx 가져오기 (home에서 써야될 듯)
	@Select("SELECT content_idx FROM (SELECT content_idx FROM content WHERE board_info_idx = #{boardInfoIdx} ORDER BY content_views DESC) WHERE ROWNUM <= 5")
	List<Integer> getTop10ContentsByBoard(int boardInfoIdx);
	
	@Select("SELECT board_info_idx, board_info_name FROM board_info order by board_info_idx")
	List<BoardInfoBean> getBoardInfoList();
	
	@Select("SELECT max(content_idx) from content")
	int getContentIdx();
	
	@Select("SELECT c.content_idx, c.content_subject, to_char(c.content_date, 'YYYY-MM-DD') as content_date, c.content_hashtag1, c.content_hashtag2, c.content_hashtag3, c.board_info_idx, "
			+ "u.user_nickname as user_name "
			+ "from content c, users u "
			+ "where c.user_idx = u.user_idx "
			+ "and c.board_info_idx = #{board_info_idx} "
			+ "order by content_idx desc")
	List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds);
	
	@Select("SELECT user_name from content c, users u  where c.user_name = u.user_nickname" )
	ContentBean getUserName(int content_idx);
	
	@Update("UPDATE content SET content_views = content_views + 1 where content_idx = #{content_idx}")
	int contentView(int content_idx);

	//-----------------------------------------------
	
// 웬지 쓸것같아서 남겨놓을게요
////	c.content_subject, c.content_date는 ContentBean이 담을 수 있지만, u.user_name은 담을 수 없다
////	(writer_idx라는 기본키를 담는거지 name을 담는게 아님) -> ContentBean에 변수 추가하고 as 로 변수명 통일
//	@Select("select c.content_idx, c.content_subject, to_char(c.content_date, 'YYYY-MM-DD') as content_date, u.user_name as content_writer_name from content_table c, user_table u where c.content_writer_idx = u.user_idx and content_board_idx = #{board_info_idx} order by c.content_idx desc")
//	List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds);

	


}
