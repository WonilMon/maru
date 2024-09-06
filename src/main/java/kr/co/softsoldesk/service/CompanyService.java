package kr.co.softsoldesk.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.DAO.CompanyDAO;
import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.FaqBean;
import kr.co.softsoldesk.beans.PageBean;
import kr.co.softsoldesk.beans.UserBean;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class CompanyService {

	@Autowired
	private CompanyDAO companyDao;

	@Value("${path.upload}")
	private String path_upload;

	@Value("${page.listcnt}")
	private int page_list;

	@Value("${page.paginationcnt}")
	private int paginationcnt;
	
	@Autowired
	private MailSender mailSender;
	
	// ------------------------------

//	// 공지사항 (notice_main.jsp)
//	public List<ContentBean> getNoticeList(int board_info_idx){
//		return companyDao.getNoticeList(board_info_idx);
//	}
	
	// FAQ 등록 (faq.jsp)
	public void addFaq(FaqBean addFaqBean) {

		String user_nickname = companyDao.getUserNickName(addFaqBean.getFaq_user_email());

		if (user_nickname != null) {
			addFaqBean.setFaq_user_nickname(user_nickname);
		} else {
			addFaqBean.setFaq_user_nickname("匿名");
		}
		companyDao.addFaq(addFaqBean);
	}

	// FAQ관리 - FAQ리스트
	public List<FaqBean> getFaqList(int page) {
		
		int start = (page - 1) * page_list;

		RowBounds rowBounds = new RowBounds(start, page_list);
		
		return companyDao.getFaqList(rowBounds);
	}

	// FAQ관리 - FAQ삭제
	public void deleteFaq(int faq_idx) {
		companyDao.deleteFaq(faq_idx);
	}

	// FAQ관리 - 페이지네이션
	public PageBean getFaqCnt(int currentPage) {

		int content_cnt = companyDao.getFaqCnt();
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_list, paginationcnt);

		return pageBean;
	}
	
	// FAQ관리 - FAQ확인
	public void updateFaqAnswerToConfirmed(int faq_idx) {
		companyDao.updateFaqAnswerToConfirmed(faq_idx);
	}

	// 관리자 홈 - 글 TOP 5
	public List<UserBean> getUserList_mostContent() {
		return companyDao.getUserList_mostContent();
	}
	
	// 관리자 홈 - 포인트 TOP 5
	public List<UserBean> getUserList_mostPoint() {
		return companyDao.getUserList_mostPoint();
	}
	
	// 관리자 홈 - 관리자 리스트
	public List<UserBean> getUserList_admin() {
		return companyDao.getUserList_admin();
	}
	
	// 관리자 홈 - 신규 유저 (7일간)
	public List<Integer> getUserList_flow() {
		return companyDao.getUserList_flow();
	}
	
	// 관리자 홈 - 일주일간 가입한 회원 수
	public int getNewUserCount () {
		return companyDao.getNewUserCount();
	}
	
	// 관리자 홈 - 일주일간 들어온 FAQ 수
	public int getNewFaqCount () {
		return companyDao.getNewFaqCount();
	}
	
	// 관리자 홈 - 일주일간 들어온 게시글 수
	public int getNewContentCount () {
		return companyDao.getNewContentCount();
	}
	
	// 관리자 홈 - 일주일간 들어온 댓글 수
	public int getNewCommentCount () {
		return companyDao.getNewCommentCount();
	}

	// 상태메시지 get (profile_modify.jsp)
	public String getAdminNotice() {
		return companyDao.getAdminNotice();
	}

	// 관리자 홈 - 상태메시지 변경
	public void updateStatusAdmin(String admin_notice) {
		companyDao.updateStatusAdmin(admin_notice);
	}

	// 회원관리 - 회원리스트
	public List<UserBean> getUserList(int page) {
		
		int start = (page - 1) * page_list;

		RowBounds rowBounds = new RowBounds(start, page_list);
		
		return companyDao.getUserList(rowBounds);
	}

	// 회원관리 - 정보변경
	public void updateUser(UserBean adminUserBean) {
		companyDao.updateUser(adminUserBean);
	}

	// 회원관리 - 페이지네이션
	public PageBean getUserCnt(int currentPage) {

		int content_cnt = companyDao.getUserCnt();
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_list, paginationcnt);

		return pageBean;
	}

	// 게시글관리 - 게시글리스트
	public List<ContentBean> getContentList(int board_info_idx, int page) {
		
		int start = (page - 1) * page_list;

		RowBounds rowBounds = new RowBounds(start, page_list);
		
		return companyDao.getContentList(board_info_idx, rowBounds);
	}

	// 게시글관리 - 게시글삭제
	public void deleteContent(int content_idx) {
		companyDao.deleteContent(content_idx);
	}

	// 게시글관리 - 페이지네이션
	public PageBean getContentCnt(int board_info_idx, int currentPage) {

		int content_cnt = companyDao.getContentCnt(board_info_idx);
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_list, paginationcnt);

		return pageBean;
	}
	
	//faq 메일전송
    public void sendFaqMail(String to, String subject, String text) throws Exception {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(to);
        mailMessage.setSubject(subject);
        mailMessage.setText(text);
        mailSender.send(mailMessage);
    }

}
