package kr.co.softsoldesk.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.FaqBean;
import kr.co.softsoldesk.beans.UserBean;

public interface CompanyMapper {

	// FAQ 등록 (faq.jsp)
	@Insert("insert into faq(faq_idx, faq_user_nickname, faq_user_email, faq_user_text, faq_date) values (faq_seq.nextval, #{faq_user_nickname}, #{faq_user_email}, #{faq_user_text}, SYSDATE)")
	void addFaq(FaqBean addFaqBean);

	// FAQ 등록을 위한 getUserNickName (faq.jsp)
	@Select("select user_nickname from users where user_email = #{user_email}")
	String getUserNickName(String user_email);

	// FAQ관리 - FAQ리스트
	@Select("select * from faq order by faq_idx")
	List<FaqBean> getFaqList(RowBounds rowBounds);

	// FAQ관리 - 페이지네이션 (FAQ 수)
	@Select("select count(*) from faq")
	int getFaqCnt();

	// FAQ관리 - 응답
	@Update("update faq set faq_answer = '確認' WHERE faq_idx = #{faq_idx}")
	void updateFaqAnswerToConfirmed(@Param("faq_idx") int faqIdx);

	// FAQ관리 - 삭제
	@Delete("delete faq where faq_idx = #{faq_idx}")
	void deleteFaq(int faq_idx);

	// 관리자홈 - 글 TOP 5
	@Select("SELECT u.user_nickname, " + "COUNT(DISTINCT c.content_idx) AS user_content_count "
			+ "FROM users u LEFT JOIN content c ON u.user_idx = c.user_idx " + "GROUP BY u.user_nickname "
			+ "ORDER BY user_content_count DESC " + "FETCH FIRST 5 ROWS ONLY")
	List<UserBean> getUserList_mostContent();

	// 관리자홈 - 포인트 TOP 5
	@Select("select user_nickname, user_point from users order by user_point desc FETCH FIRST 5 ROWS ONLY")
	List<UserBean> getUserList_mostPoint();

	// 관리자홈 - 관리자 리스트
	@Select("select * from users where user_role = '管理者'")
	List<UserBean> getUserList_admin();

	// 관리자홈 - 신규 유저 (7일간)
	@Select("SELECT COUNT(u.user_idx) AS user_count "
			+ "FROM (SELECT TRUNC(SYSDATE) - LEVEL + 1 AS date_val FROM DUAL CONNECT BY LEVEL <= 7) d "
			+ "LEFT JOIN users u ON TRUNC(u.user_date) = d.date_val " + "GROUP BY d.date_val "
			+ "ORDER BY d.date_val ASC")
	List<Integer> getUserList_flow();

	// 상태메시지 get (profile_modify.jsp)
	@Select("select admin_notice from admin where admin_idx = 1")
	String getAdminNotice();

	// 관리자 홈 - 상태메시지 수정
	@Update("UPDATE admin SET admin_notice = #{admin_notice} WHERE admin_idx = 1")
	void updateStatusAdmin(@Param("admin_notice") String admin_notice);

	// 관리자 홈 - 일주일간 가입한 회원 수
	@Select("select count(*) from users where user_date >= SYSDATE - INTERVAL '7' DAY")
	int getNewUserCount();

	// 관리자 홈 - 일주일간 들어온 FAQ 수
	@Select("select count(*) from faq where faq_date >= SYSDATE - INTERVAL '7' DAY")
	int getNewFaqCount();

	// 관리자 홈 - 일주일간 들어온 게시글 수
	@Select("select count(*) from content where content_date >= SYSDATE - INTERVAL '7' DAY")
	int getNewContentCount();

	// 관리자 홈 - 일주일간 들어온 댓글 수
	@Select("select count(*) from comments where comment_date >= SYSDATE - INTERVAL '7' DAY")
	int getNewCommentCount();

	// 회원관리 - 회원리스트
	@Select("SELECT u.user_nickname, u.user_email, u.user_pass, "
			+ "COUNT(DISTINCT c.content_idx) AS user_content_count, "
			+ "COUNT(DISTINCT cm.comment_idx) AS user_comment_count, u.user_age, u.user_gender, "
			+ "u.user_point, u.user_role FROM users u LEFT JOIN content c ON u.user_idx = c.user_idx "
			+ "LEFT JOIN comments cm ON u.user_idx = cm.user_idx "
			+ "GROUP BY u.user_nickname, u.user_email, u.user_pass, u.user_age, u.user_gender, u.user_point, u.user_role "
			+ "ORDER BY u.user_nickname")
	List<UserBean> getUserList(RowBounds rowBounds);

	// 회원관리 - 정보변경
	@Update("update users set user_point = #{user_point}, user_role = #{user_role} where user_nickname = #{user_nickname}")
	void updateUser(UserBean adminUserBean);

	// 회원관리 - 페이지네이션 (회원 수)
	@Select("select count(*) from users")
	int getUserCnt();

	// 게시글관리 - 게시글리스트
	@Select("SELECT c.content_idx, " + "c.content_subject, " + "u.user_nickname AS user_name,"
			+ "COUNT(cm.comment_idx) AS content_comment_count, " + "c.content_date " + "FROM content c "
			+ "LEFT JOIN users u ON c.user_idx = u.user_idx "
			+ "LEFT JOIN comments cm ON c.content_idx = cm.content_idx " + "WHERE c.board_info_idx = #{board_info_idx} "
			+ "GROUP BY c.content_idx, c.content_subject, u.user_nickname, c.content_date " + "ORDER BY c.content_idx")
	List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds);

	// 게시글관리 - 게시글삭제
	@Delete("delete content where content_idx = #{content_idx}")
	void deleteContent(int content_idx);

	// 게시글관리 - 페이지네이션 (게시글 수)
	@Select("select count(*) from content where board_info_idx = #{board_info_idx}")
	int getContentCnt(int board_info_idx);
}
