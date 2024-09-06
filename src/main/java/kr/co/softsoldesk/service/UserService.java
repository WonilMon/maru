package kr.co.softsoldesk.service;

import java.time.LocalDate;
import java.time.Month;
import java.time.MonthDay;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.softsoldesk.DAO.UserDAO;
import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.mapper.IconMapper;
import kr.co.softsoldesk.mapper.UserMapper;

@Service
public class UserService {

	@Resource(name = "loginUserBean") // RootAppContext에 올려놨던거 가져오기 (lazy를 줬기떄문에 이시점에서 생성)
	private UserBean loginUserBean;

	@Autowired
	private UserDAO userDao;

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private MailSender mailSender;

//	--------------------------------------------------------

//	회원가입
	public void addUser(UserBean addUserBean) {

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate birthDate = LocalDate.parse(addUserBean.getUser_age(), formatter);
		LocalDate currentDate = LocalDate.now();
		Period age = Period.between(birthDate, currentDate);

		// 별자리 계산
		String zodiacSign = getZodiacSign(birthDate);

		// password hash
		String encryptedPassword = passwordEncoder.encode(addUserBean.getUser_pass());
		addUserBean.setUser_pass(encryptedPassword);

		addUserBean.setUser_role("사용자");
		addUserBean.setUser_statustext("기본 상태메시지");
		addUserBean.setUser_point(500);
		addUserBean.setUser_age(String.valueOf(age.getYears()));
		addUserBean.setUser_zodiac(zodiacSign);

		userDao.addUser(addUserBean);
	}

//별자리
	public static String getZodiacSign(LocalDate date) {
		MonthDay birthMonthDay = MonthDay.from(date);

		if (birthMonthDay.isAfter(MonthDay.of(Month.MARCH, 20))
				&& birthMonthDay.isBefore(MonthDay.of(Month.APRIL, 20))) {
			return "おひつじ座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.APRIL, 19))
				&& birthMonthDay.isBefore(MonthDay.of(Month.MAY, 21))) {
			return "おうし座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.MAY, 20))
				&& birthMonthDay.isBefore(MonthDay.of(Month.JUNE, 21))) {
			return "ふたご座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.JUNE, 20))
				&& birthMonthDay.isBefore(MonthDay.of(Month.JULY, 23))) {
			return "かに座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.JULY, 22))
				&& birthMonthDay.isBefore(MonthDay.of(Month.AUGUST, 23))) {
			return "しし座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.AUGUST, 22))
				&& birthMonthDay.isBefore(MonthDay.of(Month.SEPTEMBER, 23))) {
			return "おとめ座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.SEPTEMBER, 22))
				&& birthMonthDay.isBefore(MonthDay.of(Month.OCTOBER, 23))) {
			return "てんびん座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.OCTOBER, 22))
				&& birthMonthDay.isBefore(MonthDay.of(Month.NOVEMBER, 22))) {
			return "さそり座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.NOVEMBER, 21))
				&& birthMonthDay.isBefore(MonthDay.of(Month.DECEMBER, 22))) {
			return "いて座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.DECEMBER, 21))
				|| birthMonthDay.isBefore(MonthDay.of(Month.JANUARY, 20))) {
			return "やぎ座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.JANUARY, 19))
				&& birthMonthDay.isBefore(MonthDay.of(Month.FEBRUARY, 19))) {
			return "みずがめ座";
		} else if (birthMonthDay.isAfter(MonthDay.of(Month.FEBRUARY, 18))
				&& birthMonthDay.isBefore(MonthDay.of(Month.MARCH, 21))) {
			return "うお座";
		} else {
			return "Unknown";
		}
	}

//	중복확인 NickName
	public boolean checkUserNickNameExist(String user_nickname) {
		String checkNickName = userDao.checkUserNickNameExist(user_nickname);
		if (checkNickName == null) {
			return true;
		} else {
			return false;
		}
	}

//	중복확인 Email
	public boolean checkUserEmailExist(String user_email) {
		String checkEmail = userDao.checkUserEmailExist(user_email);
		if (checkEmail == null) {
			return true;
		} else {
			return false;
		}
	}

//	로그인
	public void getLoginUser(UserBean tempLoginUserBean) {

		UserBean tempLoginUserBean2 = userDao.getLoginUser(tempLoginUserBean);

		String encodedPassword = tempLoginUserBean2 != null ? tempLoginUserBean2.getUser_pass() : null;
		String rawPassword = tempLoginUserBean.getUser_pass();

		// 패스워드 비교
		boolean isPasswordMatch = encodedPassword != null && passwordEncoder.matches(rawPassword, encodedPassword);

		if (isPasswordMatch) {
			loginUserBean.setUser_idx(tempLoginUserBean2.getUser_idx());
			loginUserBean.setUser_nickname(tempLoginUserBean2.getUser_nickname());
			loginUserBean.setUser_age(tempLoginUserBean2.getUser_age());
			loginUserBean.setUser_gender(tempLoginUserBean2.getUser_gender());
			loginUserBean.setUser_email(tempLoginUserBean2.getUser_email());
			loginUserBean.setUser_pass(tempLoginUserBean2.getUser_pass());
			loginUserBean.setUser_point(tempLoginUserBean2.getUser_point());
			loginUserBean.setUser_role(tempLoginUserBean2.getUser_role());
			loginUserBean.setUser_statustext(tempLoginUserBean2.getUser_statustext());
			loginUserBean.setUser_img(tempLoginUserBean2.getUser_img());
			loginUserBean.setUser_zodiac(tempLoginUserBean2.getUser_zodiac());
			loginUserBean.setUserLogin(true); // 판별을 true로 바꾸기
			loginUserBean.setUserAnonymous(false);
		}
	}

//	로그인 API
	public void getLoginUserAPI(UserBean tempLoginUserBean) {

		UserBean tempLoginUserBean2 = userDao.getLoginUser(tempLoginUserBean);

		if (tempLoginUserBean2 != null) {
			loginUserBean.setUser_idx(tempLoginUserBean2.getUser_idx());
			loginUserBean.setUser_nickname(tempLoginUserBean2.getUser_nickname());
			loginUserBean.setUser_age(tempLoginUserBean2.getUser_age());
			loginUserBean.setUser_gender(tempLoginUserBean2.getUser_gender());
			loginUserBean.setUser_email(tempLoginUserBean2.getUser_email());
			loginUserBean.setUser_pass(tempLoginUserBean2.getUser_pass());
			loginUserBean.setUser_point(tempLoginUserBean2.getUser_point());
			loginUserBean.setUser_role(tempLoginUserBean2.getUser_role());
			loginUserBean.setUser_statustext(tempLoginUserBean2.getUser_statustext());
			loginUserBean.setUser_img(tempLoginUserBean2.getUser_img());
			loginUserBean.setUser_zodiac(tempLoginUserBean2.getUser_zodiac());
			loginUserBean.setUserLogin(true); // 판별을 true로 바꾸기
			loginUserBean.setUserAnonymous(false);
		}

	}

	public UserBean getModifyUserInfo(int user_idx) {
		return userDao.getModifyUserBeanInfo(user_idx);
	}

	// 패스워드 리셋
	public String resetPassword(String user_email) {
		// 패스워드 랜덤값 생성
		String newPassword = generateRandomPassword();

		try {
			// 이메일로 새 패스워드를 전송
			sendMail(user_email, newPassword);
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

		// 새 패스워드를 암호화
		String encryptedRandomPassword = passwordEncoder.encode(newPassword);

		// 데이터베이스에서 패스워드 갱신
		userDao.updatePassword(user_email, encryptedRandomPassword);

		return newPassword; // 평문 패스워드 반환 (필요에 따라 변경 가능)
	}

	private String generateRandomPassword() {
		int length = 10;
		String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		Random random = new Random();
		StringBuilder newPassword = new StringBuilder(length);

		for (int i = 0; i < length; i++) {
			newPassword.append(chars.charAt(random.nextInt(chars.length())));
		}

		return newPassword.toString();
	}

	private void sendMail(String to, String newPassword) throws Exception {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(to);
		mailMessage.setSubject("【重要】パスワードリセットのお知らせ");
		mailMessage.setText("こんにちは、\n\n" + "ご依頼に基づき、アカウントのパスワードがリセットされました。\n" + "新しいパスワードは以下の通りです:\n\n" + "新しいパスワード: "
				+ newPassword + "\n\n" + "セキュリティ保護のため、ログイン後、速やかにパスワードを変更することをお勧めします。\n\n"
				+ "もしこのメールに覚えがない場合は、アカウントの不正利用の可能性があります。" + "直ちにサイト内のFAQにアクセスし、サポートチームにご連絡ください。\n\n"
				+ "また、その他の質問やサポートが必要な場合も、同じくFAQページをご参照ください。\n\n" + "この度はご利用いただき、誠にありがとうございます。\n\n" + "敬具,\n"
				+ "サポートチーム");

		mailSender.send(mailMessage);
	}

//	modify update
	public void modifyUserInfo(UserBean modifyUserBean) {
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		userDao.modifyUserInfo(modifyUserBean);
	}

	public void modifyUser(UserBean modifyUser) {
		loginUserBean.setUser_nickname(modifyUser.getUser_nickname());

		// 새 패스워드 암호화
		String encryptedPassword = passwordEncoder.encode(modifyUser.getUser_pass());
		loginUserBean.setUser_pass(encryptedPassword);
		modifyUser.setUser_pass(encryptedPassword); // modifyUser에 암호화된 패스워드 설정
		userDao.modifyUser(modifyUser);
	}

	// 회원삭제
	public void deleteUser(int user_idx) {
		userDao.deleteUser(user_idx);
	}

	// 상태메시지 변경
	public void updateStatusText(String user_statustext, int user_idx) {
		loginUserBean.setUser_statustext(user_statustext);
		userDao.updateStatusText(user_statustext, user_idx);
	}

	// 모달 유저 정보
	public UserBean getUserModal(String user_nickname) {
		return userDao.getUserModal(user_nickname);
	}

	// -----------------------------현석--
	// 기존 상점 관련 메서드들

	public int getUserPoints(int user_idx) {
		UserBean user = getUserById(user_idx);
		return user.getUser_point();
	}

	public UserBean getUserById(int user_idx) {
		return userMapper.getUserById(user_idx);
	}

	public void updateUserPoints(UserBean user) {
		userMapper.updateUser(user);
	}

	// 프로필 이미지 업로드
	public void updateImgFile(String user_img, int user_idx) {
		loginUserBean.setUser_img(user_img);
		userDao.updateImgFile(user_img, user_idx);
	}

	// 프로필 이미지 가져오기
	public String getImgFile(int user_idx) {
		return userDao.getImgFile(user_idx);
	}

	// 아이콘 경로 업데이트 메서드
	public void updateUserIcon(int userIdx, String iconPath) {
		userMapper.updateUserIcon(userIdx, iconPath);
	}

}