 package kr.co.softsoldesk.Interceptor;

//public class CheckUserInterceptor implements HandlerInterceptor {
	
//	private UserBean loginUserBean;
	
//	private BoardService boardService;

////	생성자
//	public CheckUserInterceptor(UserBean loginUserBean, BoardService boardService) {
//		this.loginUserBean = loginUserBean;
//		this.boardService = boardService;
//	}

////	preHandle : 동작하기 전 수행을 하는 메서드
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {
//
//		int content_idx = Integer.parseInt(request.getParameter("content_idx")); // read.jsp에서 '파라미터'로 보냄
//		
//		ContentBean currentContentBean = boardService.getContentWriterIdx(content_idx);
//		
//		if(loginUserBean.getUser_idx()!=currentContentBean.getContent_writer_idx()) {
//			String contextPath = request.getContextPath(); // 루트경로
//			response.sendRedirect(contextPath + "/board/not_equal_user");
//			return false;
//		}
//		
//		
//		return true;
//	}
//}
