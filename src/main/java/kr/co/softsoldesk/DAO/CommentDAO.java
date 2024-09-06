package kr.co.softsoldesk.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.CommentBean;
import kr.co.softsoldesk.mapper.CommentMapper;

@Repository
public class CommentDAO {
	
	@Autowired
	CommentMapper commentMapper;

	public int addComment(CommentBean addComment) {
		return commentMapper.addComment(addComment);
	}
	
	public int addReply(CommentBean addReply) {
		return commentMapper.addReply(addReply);
	}
	
	public void modifyComment(int comment_idx, String comment_text) {
		commentMapper.modifyComment(comment_idx, comment_text);
	}
	
	public void deleteComment(int comment_idx) {
		commentMapper.deleteComment(comment_idx);
	}
	
	public List<CommentBean> getCommentList(int content_idx) {
		return commentMapper.getCommentList(content_idx);
	}
}
