package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.CommentBean;

public interface CommentMapper {
	
	//댓글 작성 쿼리문
	@Insert("INSERT INTO comments(comment_idx, comment_text, comment_date, user_idx, content_idx, comment_status, comment_parent_idx, comment_step) "
			+ "VALUES(comments_seq.nextval, #{comment_text}, SYSTIMESTAMP, #{user_idx}, #{content_idx}, #{comment_status}, reply_seq.nextval, #{comment_step}) ")
	int addComment(CommentBean addComment);
	
	//답글 작성 쿼리문
	@Insert("INSERT INTO comments(comment_idx, comment_text, comment_date, user_idx, content_idx, comment_status, comment_parent_idx, comment_step) "
			+ "VALUES(comments_seq.nextval, #{comment_text}, SYSTIMESTAMP, #{user_idx}, #{content_idx}, #{comment_status}, #{comment_parent_idx}, #{comment_step}) ")
	int addReply(CommentBean addReply);
	
	//댓글 수정 쿼리문
	@Update("UPDATE comments SET comment_text = #{comment_text} WHERE comment_idx = #{comment_idx}")
	void modifyComment(@Param("comment_idx") int comment_idx, @Param("comment_text") String comment_text);//변수값을 제대로 불러오지 못해서 @Param으로 직접 지정해서 보내줌
	
	//댓글 삭제 쿼리문
	@Delete("DELETE FROM comments WHERE comment_idx = #{comment_idx}")
	void deleteComment(int comment_idx);
	
	//댓글 목록 조회 쿼리문
	@Select("SELECT c.comment_idx, c.user_idx, u.user_nickname, c.comment_text, to_char(c.comment_date, 'YYYY-MM-DD HH24:MI') as comment_date, c.comment_parent_idx, c.comment_step "
	        + "FROM comments c LEFT JOIN users u ON c.user_idx = u.user_idx "
	        + "WHERE content_idx = #{content_idx} AND c.comment_status = 0 "
	        + "ORDER BY comment_parent_idx ASC, comment_step ASC, comment_date ASC")
	List<CommentBean> getCommentList(int content_idx);
	
}
