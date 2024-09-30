package kr.co.softsoldesk.config;

import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.softsoldesk.Interceptor.MainInterceptor;
import kr.co.softsoldesk.Interceptor.CheckLoginInterceptor;
import kr.co.softsoldesk.Interceptor.CheckUserInterceptor;
import kr.co.softsoldesk.Interceptor.ShopInterceptor;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.BoardService;
import kr.co.softsoldesk.service.UserService;

@Configuration
@EnableWebMvc
@ComponentScan("kr.co.softsoldesk.controller")
@ComponentScan(basePackages = "kr.co.softsoldesk")
@ComponentScan(basePackages = { "kr.co.softsoldesk.controller", "kr.co.softsoldesk.dao", "kr.co.softsoldesk.websocket",
		"kr.co.softsoldesk.service", "kr.co.softsoldesk.config" })
public class ServletAppContext implements WebMvcConfigurer {
//WebMvcConfigurer: Spring MVC 프로젝트 설정 인터페이스

	@Autowired
	UserService userService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@Bean
	public LocalValidatorFactoryBean defaultValidator() {
		return new LocalValidatorFactoryBean();
	}

	@Override
	public Validator getValidator() {
		return defaultValidator(); // 기본 Validator 등록
	}

	@Autowired
	private BoardService boardService;

	// -----------------------------------------------------------------------

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// Controller의 메서드가 반환하는 jsp 이름 앞 뒤에 경로와 확장자를 붙여주도록 설정
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// 정적 파일 경로 매핑
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/WEB-INF/resources/");
	}

	// 인터셉트 등록 (어떤 페이지에서든 보여지도록)
	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		WebMvcConfigurer.super.addInterceptors(registry);

		MainInterceptor mainInterceptor = new MainInterceptor(userService, loginUserBean);
		InterceptorRegistration reg1 = registry.addInterceptor(mainInterceptor);
		reg1.addPathPatterns("/**");

		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginUserBean);
		InterceptorRegistration reg2 = registry.addInterceptor(checkLoginInterceptor);
		reg2.addPathPatterns("/user/modify", "/user/logout", "/board/*");
		reg2.excludePathPatterns("/board/main", "/board/search");

		CheckLoginInterceptor checkInterceptor = new CheckLoginInterceptor(loginUserBean);
		InterceptorRegistration reg3 = registry.addInterceptor(checkInterceptor);
		reg3.addPathPatterns("/user/modify", "/user/logout", "/board/*"); // 해당요청들을 잡아서 checkInterceptor 하겠다
		reg3.excludePathPatterns("/board/main", "/board/search"); // 예외처리 (로그아웃 사용자가 게시판 글쓰기,수정 등은 안되지만 게시판은 들어갈 수 있게)

		CheckUserInterceptor checkUserInterceptor = new CheckUserInterceptor(loginUserBean, boardService);
		InterceptorRegistration reg4 = registry.addInterceptor(checkUserInterceptor);
		reg4.addPathPatterns("/board/modify", "/board/delete");

		ShopInterceptor shopInterceptor = new ShopInterceptor(loginUserBean);
		InterceptorRegistration reg5 = registry.addInterceptor(shopInterceptor);
		reg5.addPathPatterns("/shop/**");

	}

	// 에러메시지 등록
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {

		return new PropertySourcesPlaceholderConfigurer();
	}// 프로퍼티 파일 로딩

	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		res.setBasename("/WEB-INF/properties/error_message");
		return res;
	}

	// 파일 업로드 처리 클래스
	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}

	//-------웹소켓 비동기지원 활성화----------
	@Bean
	public DispatcherServlet dispatcherServlet() {
	    return new DispatcherServlet();
	}
	
	@Bean
	public ServletRegistrationBean<DispatcherServlet> dispatcherServletRegistration(DispatcherServlet dispatcherServlet) {
	    ServletRegistrationBean<DispatcherServlet> registration = new ServletRegistrationBean<>(dispatcherServlet);
	    registration.addUrlMappings("/");
	    registration.setAsyncSupported(true); // 비동기 지원 활성화
	    return registration;
	}

	@Bean
	public FilterRegistrationBean<CharacterEncodingFilter> characterEncodingFilterRegistration() {
	    FilterRegistrationBean<CharacterEncodingFilter> registration = new FilterRegistrationBean<>();
	    registration.setFilter(new CharacterEncodingFilter());
	    registration.setAsyncSupported(true); // 비동기 지원 활성화
	    return registration;
	}

}
