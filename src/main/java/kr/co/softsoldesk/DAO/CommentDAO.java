package kr.co.softsoldesk.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.CommentBean;
import kr.co.softsoldesk.mapper.CommentMapper;
import lombok.RequiredArgsConstructor;

@Repository
public class CommentDAO {
	
	@Autowired
	CommentMapper commentMapper;
	
	//댓글 추가 메서드
	public int addComment(CommentBean addComment) {
		
		return commentMapper.addComment(addComment);
	}
	
//	//댓글 수정 메서드
//	public void updateComment(CommentBean updateComment) {
//		commentMapper.updateComment(updateComment);
//	}
//	
//	//댓글 삭제 메서드
//	public void deleteComment(int comment_idx) {
//		commentMapper.deleteComment(comment_idx);
//	}
	
//	//댓글 ???
//	public CommentBean getCommentInfo(int comment_idx) {
//		return commentMapper.getCommentInfo(comment_idx);
//	}
	
	//댓글 조회 리스트
	public List<CommentBean> getCommentList(int content_idx) {
		return commentMapper.getCommentList(content_idx);
	}
	
//	//답글 조회 리스트
//	public List<CommentBean> getReplyList(int comment_parent_idx) {
//		return commentMapper.getReplyList(comment_parent_idx);
//	}
	
}
