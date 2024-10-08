package kr.co.softsoldesk.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.softsoldesk.DAO.CommentDAO;
import kr.co.softsoldesk.beans.CommentBean;
import kr.co.softsoldesk.beans.UserBean;

@Transactional
@Service
public class CommentService {
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	private CommentDAO commentDAO;
	
	public int addComment(CommentBean addComment) {
		addComment.setComment_text(addComment.getComment_text().replace("\n", "<br>"));
		addComment.setComment_parent_idx(addComment.getComment_idx());
		int result = commentDAO.addComment(addComment);
		return result;
	}
	
	public int addReply(CommentBean addReply) {
		addReply.setComment_text(addReply.getComment_text().replace("\n", "<br>"));
		addReply.setComment_step(1);
		return commentDAO.addReply(addReply);
	}
	
	public void modifyComment(int comment_idx, String comment_text) {
		commentDAO.modifyComment(comment_idx, comment_text);
	}
	
	public void deleteComment(int comment_idx) {
		commentDAO.deleteComment(comment_idx);
	}
	
	public List<CommentBean> getCommentList(int cotent_idx) {
		return commentDAO.getCommentList(cotent_idx);
	}
}
