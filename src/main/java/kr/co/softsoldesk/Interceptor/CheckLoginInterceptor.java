 package kr.co.softsoldesk.Interceptor;

// public class CheckLoginInterceptor implements HandlerInterceptor {
//	
//	private UserBean loginUserBean;
////	생성자
//	public CheckLoginInterceptor(UserBean loginUserBean) {
//		this.loginUserBean = loginUserBean;
//	}
//
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {
//
//		if(loginUserBean.isUserLogin()==false) { // 로그아웃 상태
//			String contextPath = request.getContextPath(); // 루트경로
//			response.sendRedirect(contextPath + "/user/not_login");
//			return false;
//		}	// 로그아웃 상태(false)면 인터셉터해서 유저폴더에 not_login.jsp로 보내겠다는 의미
//			// (회원이 아닌 계정이 수정, 등록 등을 한다면 인터셉터가 잡겠다)
//		
//		
//		return true;
//	}
//}
