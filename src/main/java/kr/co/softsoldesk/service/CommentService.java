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
		
		return commentDAO.addComment(addComment);
	}
	
//	public void modifyComment(CommentBean updateComment) {
//		commentDAO.updateComment(updateComment);
//	}
//	
//	public void deleteComment(int comment_idx) {
//		commentDAO.deleteComment(comment_idx);
//	}
//	
//	public CommentBean getCommentInfo(int comment_idx) {
//		return commentDAO.getCommentInfo(comment_idx);
//	}
	
	public List<CommentBean> getCommentList(int cotent_idx) {
		return commentDAO.getCommentList(cotent_idx);
	}
	
//	public List<CommentBean> getReplyList(int comment_parent_idx) {
//		return commentDAO.getReplyList(comment_parent_idx);
//	}
}
