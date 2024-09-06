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
import kr.co.softsoldesk.beans.FavoriteBean;

public interface BoardMapper {

	// 게시글 등록 insert
	@Insert("insert into content(content_idx, content_subject, content_text, content_date, content_isAnonymous, user_idx, board_info_idx) "
			+ "values(content_seq.nextval, #{content_subject}, #{content_text}, sysdate, #{content_isAnonymous}, #{user_idx}, #{board_info_idx})")
	void addContent(ContentBean writeContentBean);

	// 파일 등록
	@Insert("INSERT INTO content_file (file_idx, content_idx, file_name) VALUES (content_file_seq.nextval, #{content_idx}, #{file_name})")
	void addFile(@Param("content_idx") int content_idx, @Param("file_name") String file_name);

	// 해시태그 등록
	@Insert("insert into hashTag (hashtag_idx, hashtag_content_idx, hashtag_tag) values (hashtag_seq.nextval, #{content_idx}, #{tag})")
	void addHashTag(@Param("content_idx") int content_idx, @Param("tag") String tag);

	// 게시글 idx로 게시글 전체 불러오기 (content의 내용들 + user 정보)
	@Select("select u.user_idx as user_idx ,c.content_subject, c.content_views, c.board_info_idx, c.content_idx, c.content_text, to_char(c.content_date, 'YYYY-MM-DD') as content_date,"
			+ "u.user_nickname as user_name, c.content_isanonymous " + "from content c "
			+ "join users u on c.user_idx = u.user_idx " + "where c.user_idx = u.user_idx "
			+ "and c.content_idx = #{content_idx} ")
	ContentBean getReadContent(int content_idx);

	// 게시글 파일 목록 불러오기
	@Select("SELECT file_name FROM content_file WHERE content_idx = #{content_idx}")
	List<String> getContentFiles(int content_idx);

	// 해시태그 목록 불러오기
	@Select("SELECT hashtag_tag FROM hashtag WHERE hashtag_content_idx = #{content_idx}")
	List<String> getHashTags(int content_idx);

	// 게시글 업데이트 update
	@Update("update content set content_subject = #{content_subject}, content_text = #{content_text}, content_file = #{content_file, jdbcType=VARCHAR} where content_idx = #{content_idx}")
	void updateContent(ContentBean modifyContentBean);

	// 게시글 삭제 delete
	@Delete("delete content where content_idx=#{content_idx}")
	void deleteContent(int content_idx);

	// -----------------------------------------------

	// idx에 맞는 게시판명 하나 가져오기
	@Select("select board_info_name from board_info where board_info_idx = #{board_info_idx}")
	String getBoardInfoName(int board_info_idx);

	// 해당 게시판의 게시글 수 가져오기
	@Select("select count(*) from content where board_info_idx = #{board_info_idx}")
	int getContentCnt(int board_info_idx);

	// 내가 방금 작성한 게시글 번호 가져오기
	@Select("select max(content_idx) from content")
	int getLatestIdx();

	// 최신 글 10개의 게시글 idx 가져오기 (board_prev_main에서 쓰면될 듯)
	@Select("SELECT content_idx FROM (SELECT content_idx FROM content where board_info_idx = #{board_Info_Idx} ORDER BY content_createdAt DESC) WHERE ROWNUM <= 10")
	List<Integer> getLatest10ContentIdx(int board_Info_Idx);

	// 상위 조회수 3개의 게시글 가져오기 (일간, main)
	@Select("SELECT * FROM (SELECT * FROM content WHERE content_date >= SYSDATE - INTERVAL '1' DAY ORDER BY content_views DESC) WHERE ROWNUM <= 3")
	List<ContentBean> getToday3Content();

	// 상위 조회수 3개의 게시글 가져오기 (주간, main)
	@Select("SELECT * FROM (SELECT * FROM content WHERE content_date >= SYSDATE - INTERVAL '7' DAY ORDER BY content_views DESC) WHERE ROWNUM <= 3")
	List<ContentBean> getWeekly3Content();

	// 상위 조회수 3개의 게시글 가져오기 (월간, main)
	@Select("SELECT * FROM (SELECT * FROM content WHERE content_date >= SYSDATE - INTERVAL '30' DAY ORDER BY content_views DESC) WHERE ROWNUM <= 3")
	List<ContentBean> getMonthly3Content();

	@Select("SELECT board_info_idx, board_info_name FROM board_info order by board_info_idx")
	List<BoardInfoBean> getBoardInfoList();

	@Select("SELECT max(content_idx) from content")
	int getContentIdx();

	@Select("SELECT c.content_idx, c.content_subject, to_char(c.content_date, 'YYYY-MM-DD') as content_date, c.board_info_idx, u.user_nickname as user_name "
			+ "from content c " + "join users u on u.user_idx = c.user_idx "
			+ "where c.board_info_idx = #{board_info_idx} " + "order by content_idx desc")
	List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds);

	@Select("SELECT user_name from content c, users u  where c.user_name = u.user_nickname")
	ContentBean getUserName(int content_idx);

	@Update("UPDATE content SET content_views = content_views + 1 where content_idx = #{content_idx}")
	int contentView(int content_idx);

	@Select("SELECT count(*) FROM comments WHERE content_idx = #{content_idx}")
	int getCommentCount(int content_idx);

	// 즐겨찾기 등록
	@Insert("INSERT INTO favorite(favorite_idx, user_idx, content_idx) "
			+ "VALUES (favorite_seq.nextval, #{user_idx}, #{content_idx}) ")
	void addfavorite(@Param("content_idx") int content_idx, @Param("user_idx") int user_idx);

	// 즐겨찾기 삭제
	@Delete("DELETE favorite WHERE content_idx = #{content_idx} AND user_idx = #{user_idx}")
	void deletefavorite(@Param("content_idx") int content_idx, @Param("user_idx") int user_idx);

	@Select("SELECT count(*) FROM favorite WHERE content_idx = #{content_idx}, user_idx = #{user_idx}")
	int favorList(int user_idx);

	@Select("SELECT nvl(count(favorite_idx), 0) FROM favorite WHERE content_idx = #{content_idx} AND user_idx = #{user_idx}")
	int getFavoriteIdx(@Param("content_idx") int content_idx, @Param("user_idx") int user_idx);

	// 익명에 대한 값을 가져가기
	@Select("SELECT COUNT(*) > 0 FROM content WHERE content_isAnonymous = #{content_isAnonymous}")
	boolean anonymous(boolean content_isAnonymous);

}
