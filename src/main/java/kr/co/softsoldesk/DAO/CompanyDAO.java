package kr.co.softsoldesk.DAO;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.FaqBean;
import kr.co.softsoldesk.beans.SharingBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.mapper.CompanyMapper;

@Repository
public class CompanyDAO {

	@Autowired
	private CompanyMapper companyMapper;

	// ------------------------------

	// 공지사항 (notice_main.jsp)
	public List<ContentBean> getNoticeList(int board_info_idx, RowBounds rowBounds) {
		return companyMapper.getNoticeList(board_info_idx, rowBounds);
	}

	// 공지사항 - 페이지네이션
	public int getNoticeCnt(int board_info_idx) {
		return companyMapper.getNoticeCnt(board_info_idx);
	}

	// FAQ 등록 (faq.jsp)
	public void addFaq(FaqBean addFaqBean) {
		companyMapper.addFaq(addFaqBean);
	}

	// FAQ 등록을 위한 getUserNickName (faq.jsp)
	public String getUserNickName(String user_email) {
		return companyMapper.getUserNickName(user_email);
	}

	// FAQ관리 - FAQ리스트
	public List<FaqBean> getFaqList(RowBounds rowBounds) {
		return companyMapper.getFaqList(rowBounds);
	}

	// FAQ관리 - FAQ삭제
	public void deleteFaq(int faq_idx) {
		companyMapper.deleteFaq(faq_idx);
	}

	// FAQ관리 - FAQ확인
	public void updateFaqAnswerToConfirmed(int faq_idx) {
		companyMapper.updateFaqAnswerToConfirmed(faq_idx);
	}

	// FAQ관리 - 페이지네이션 (FAQ 수)
	public int getFaqCnt() {
		return companyMapper.getFaqCnt();
	}

	// 관리자 홈 - 글 TOP 5
	public List<UserBean> getUserList_mostContent() {
		return companyMapper.getUserList_mostContent();
	}

	// 관리자 홈 - 포인트 TOP 5
	public List<UserBean> getUserList_mostPoint() {
		return companyMapper.getUserList_mostPoint();
	}

	// 관리자 홈 - 관리자 리스트
	public List<UserBean> getUserList_admin() {
		return companyMapper.getUserList_admin();
	}

	// 관리자 홈 - 신규 유저 (7일간)
	public List<Integer> getUserList_flow() {
		return companyMapper.getUserList_flow();
	}

	// 관리자 홈 - 일주일간 가입한 회원 수
	public int getNewUserCount() {
		return companyMapper.getNewUserCount();
	}

	// 관리자 홈 - 일주일간 들어온 FAQ 수
	public int getNewFaqCount() {
		return companyMapper.getNewFaqCount();
	}

	// 관리자 홈 - 일주일간 들어온 게시글 수
	public int getNewContentCount() {
		return companyMapper.getNewContentCount();
	}

	// 관리자 홈 - 일주일간 들어온 댓글 수
	public int getNewCommentCount() {
		return companyMapper.getNewCommentCount();
	}

	// 상태메시지 get (profile_modify.jsp)
	public String getAdminNotice() {
		return companyMapper.getAdminNotice();
	}

	// 관리자 홈 - 상태메시지 변경
	public void updateStatusAdmin(String admin_notice) {
		companyMapper.updateStatusAdmin(admin_notice);
	}

	// 회원관리 - 회원리스트
	public List<UserBean> getUserList(RowBounds rowBounds) {
		return companyMapper.getUserList(rowBounds);
	}

	// 회원관리 - 정보변경
	public void updateUser(UserBean adminUserBean) {
		companyMapper.updateUser(adminUserBean);
	}

	// 회원관리 - 페이지네이션 (회원 수)
	public int getUserCnt() {
		return companyMapper.getUserCnt();
	}

	// 게시글관리 - 게시글리스트
	public List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds) {
		return companyMapper.getContentList(board_info_idx, rowBounds);
	}

	// 게시글관리 - 게시글삭제
	public void deleteContent(int content_idx) {
		companyMapper.deleteContent(content_idx);
	}

	// 게시글관리 - 페이지네이션 (게시글 수)
	public int getContentCnt(int board_info_idx) {
		return companyMapper.getContentCnt(board_info_idx);
	}

	// share 인증파일 추가
	public void addImgFile(String file_name, int sender_idx, int receiver_idx, int content_idx) {
		companyMapper.addImgFile(file_name, sender_idx, receiver_idx, content_idx);
	}

	// 나눔관리 - 리스트
	public List<SharingBean> getShareList(RowBounds rowBounds) {
		return companyMapper.getShareList(rowBounds);
	}

	// 나눔관리 - 페이지네이션
	public int getShareCnt() {
		return companyMapper.getShareCnt();
	}

	// 나눔관리 - 포인트 지급
	public void updatePoint(String user_nickname) {
		companyMapper.updatePoint(user_nickname);
	}

	// 나눔관리 - 완료처리
	public void updateAfter(int share_idx) {
		companyMapper.updateAfter(share_idx);
	}
}
