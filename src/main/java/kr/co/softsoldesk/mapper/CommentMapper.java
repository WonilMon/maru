package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.CommentBean;

public interface CommentMapper {
	
	//댓글 작성 쿼리문
	@Insert("INSERT INTO comments(comment_idx, comment_text, comment_date, user_idx, content_idx, comment_status, comment_parent_idx) "
			+ "VALUES(comments_seq.nextval, #{comment_text}, SYSDATE, #{user_idx}, #{content_idx}, #{comment_status}, #{comment_parent_idx})"
			+ " ")
	int addComment(CommentBean addComment);
	
//	//댓글 수정 쿼리문
//	@Update("UPDATE comments SET comment_text = #{comment_text} WHERE comment_idx = #{comment_idx}")
//	void updateComment(CommentBean updateComment);
//	
//	//댓글 삭제 쿼리문
//	@Delete("DELETE comments WHERE comment_idx = #{comment_idx}")
//	void deleteComment(int comment_idx);
//	
//	@Select("SELECT c.comment_idx, c.user_idx, u.nickname, c.comment_parent_idx, c.comment_text, c.comment_date "
//			+ "FROM comment c LEFT JOIN users u ON c.user_idx = u.user_idx "
//			+ "WHERE c.comment_idx = #{comment_idx} "
//			+ "AND c.comment_status = 1 ")
//	CommentBean getCommentInfo(int comment_idx);
	
	//댓글 목록 조회 쿼리문
	@Select("SELECT c.comment_idx, c.user_idx, u.user_nickname, c.comment_text "
	        + "FROM comments c LEFT JOIN users u ON c.user_idx = u.user_idx "
	        + "WHERE content_idx = #{content_idx} AND c.comment_status = 0")
	List<CommentBean> getCommentList(int content_idx);

	
//	//답글 목록 조회 쿼리문
//	@Select("SELECT c.comment_idx, c.user_idx, c.comment_parent_idx, u.nickname, c.comment_text, c.comment_date "
//			+ "FROM comment c LEFT JOIN users u ON c.user_idx = u.user_idx "
//			+ "WHERE comment_parent_idx = #{comment_parent_idx} AND comment_status = 1 "
//			+ "ORDER BY comment_date")
//	List<CommentBean> getReplyList(int comment_parent_idx);
}
