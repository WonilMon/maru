package kr.co.softsoldesk.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.softsoldesk.beans.UserBean;

public class ShopInterceptor implements HandlerInterceptor {

    private UserBean loginUserBean;

    public ShopInterceptor(UserBean loginUserBean) {
        this.loginUserBean = loginUserBean;
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // URL에서 user_idx를 추출
        String requestURI = request.getRequestURI();
        String[] uriParts = requestURI.split("/");
        String lastPart = uriParts[uriParts.length - 1];

        // 마지막 부분이 정수인지 확인
        try {
            int user_idx = Integer.parseInt(lastPart);

            // 로그인 상태 확인
            if (!loginUserBean.isUserLogin()) {
                String contextPath = request.getContextPath();
                response.sendRedirect(contextPath + "/user/not_login");
                return false;
            }

            // 로그인된 사용자의 user_idx와 URL의 user_idx 비교
            if (loginUserBean.getUser_idx() != user_idx) {
                String contextPath = request.getContextPath();
                response.sendRedirect(contextPath + "/user/not_authorized");
                return false;
            }

        } catch (NumberFormatException e) {
        //buyIcon 메서드 수행할 때 예외 처리가 발생해서 추가함
        
        }

        return true;
    }
}