package kr.co.softsoldesk.config;

import java.util.Properties;

import org.apache.ibatis.session.SqlSessionFactory;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.mapper.BoardMapper;
import kr.co.softsoldesk.mapper.CommentMapper;
import kr.co.softsoldesk.mapper.CompanyMapper;
import kr.co.softsoldesk.mapper.IconMapper;
import kr.co.softsoldesk.mapper.MessageMapper;
import kr.co.softsoldesk.mapper.RouletteMapper;
import kr.co.softsoldesk.mapper.SearchMapper;
import kr.co.softsoldesk.mapper.UserIconMapper;
import kr.co.softsoldesk.mapper.UserMapper;
import kr.co.softsoldesk.websocket.ChatMapper;

@Configuration
@EnableWebMvc
@ComponentScan("kr.co.softsoldesk.service")
@ComponentScan("kr.co.softsoldesk.DAO")
@PropertySource("/WEB-INF/properties/db.properties")
@PropertySource("/WEB-INF/properties/mail.properties")
public class RootAppContext implements WebMvcConfigurer {

	@Value("${db.classname}")
	private String db_classname;

	@Value("${db.url}")
	private String db_url;

	@Value("${db.username}")
	private String db_username;

	@Value("${db.password}")
	private String db_password;

	@Bean("loginUserBean") // 로그인 성공하면 로그인한 유저의 정보를 @Bean("loginUserBean")에 갖다 넣어줄거야
	@SessionScope // Session 으로 유지
	@Lazy // 객체의 생성시점을 loginUserBean을 호출하는 시점에 생성하겠다 (로그인 버튼을 눌렀을때)
	public UserBean loginUserBean() {

		return new UserBean();
	}

	@Value("${mail.host}")
	private String mailHost;

	@Value("${mail.port}")
	private int mailPort;

	@Value("${mail.username}")
	private String mailUsername;

	@Value("${mail.password}")
	private String mailPassword;

	@Bean
	public JavaMailSender getJavaMailSender() {

		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost(mailHost);
		mailSender.setPort(mailPort);
		mailSender.setUsername(mailUsername);
		mailSender.setPassword(mailPassword);

		Properties props = mailSender.getJavaMailProperties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");

		return mailSender;
	}

//	security config
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

//	데이터베이스 접속 정보 관리 (아예 컨테이너에 올려놓고 쓸게요)
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);

		return source;
	}

//	쿼리문과 접속 관리하는 객체
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();

		return factory;
	}

//	쿼리문 실행을 위한 객체 mapper1
	@Bean
	public MapperFactoryBean<BoardMapper> getBoardMapper(SqlSessionFactory factory) {
		MapperFactoryBean<BoardMapper> factoryBean = new MapperFactoryBean<BoardMapper>(BoardMapper.class);
		factoryBean.setSqlSessionFactory(factory);

		return factoryBean;
	}

////	쿼리문 실행을 위한 객체 mapper2
//	@Bean
//	public MapperFactoryBean<TopMenuMapper> getTopMenuMapper(SqlSessionFactory factory) {
//		MapperFactoryBean<TopMenuMapper> factoryBean = new MapperFactoryBean<TopMenuMapper>(TopMenuMapper.class);
//		factoryBean.setSqlSessionFactory(factory);
//		
//		return factoryBean;
//	}
//	쿼리문 실행을 위한 객체 mapper3
	@Bean
	public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory) {
		MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<UserMapper>(UserMapper.class);
		factoryBean.setSqlSessionFactory(factory);

		return factoryBean;
	}

//	쿼리문 실행을 위한 객체 mapper4
	@Bean
	public MapperFactoryBean<ChatMapper> getChatMapper(SqlSessionFactory factory) {
		MapperFactoryBean<ChatMapper> factoryBean = new MapperFactoryBean<ChatMapper>(ChatMapper.class);
		factoryBean.setSqlSessionFactory(factory);

		return factoryBean;
	}

//	쿼리문 실행을 위한 객체 mapper5
	@Bean
	public MapperFactoryBean<MessageMapper> getMessageMapper(SqlSessionFactory factory) {
		MapperFactoryBean<MessageMapper> factoryBean = new MapperFactoryBean<MessageMapper>(MessageMapper.class);
		factoryBean.setSqlSessionFactory(factory);

		return factoryBean;
	}

//	쿼리문 실행을 위한 객체 mapper6
	@Bean
	public MapperFactoryBean<IconMapper> getIconMapper(SqlSessionFactory factory) {
		MapperFactoryBean<IconMapper> factoryBean = new MapperFactoryBean<IconMapper>(IconMapper.class);
		factoryBean.setSqlSessionFactory(factory);

		return factoryBean;
	}

//	쿼리문 실행을 위한 객체 mapper7
	@Bean
	public MapperFactoryBean<UserIconMapper> getUserIconMapper(SqlSessionFactory factory) {
		MapperFactoryBean<UserIconMapper> factoryBean = new MapperFactoryBean<UserIconMapper>(UserIconMapper.class);
		factoryBean.setSqlSessionFactory(factory);

		return factoryBean;
	}

//	쿼리문 실행을 위한 객체 mapper8
	@Bean
	public MapperFactoryBean<CommentMapper> getCommentMapper(SqlSessionFactory factory) {
		MapperFactoryBean<CommentMapper> factoryBean = new MapperFactoryBean<CommentMapper>(CommentMapper.class);
		factoryBean.setSqlSessionFactory(factory);

		return factoryBean;
	}

//	쿼리문 실행을 위한 객체 mapper9
	@Bean
	public MapperFactoryBean<CompanyMapper> getCompanyMapper(SqlSessionFactory factory) {
		MapperFactoryBean<CompanyMapper> factoryBean = new MapperFactoryBean<CompanyMapper>(CompanyMapper.class);
		factoryBean.setSqlSessionFactory(factory);

		return factoryBean;
	}
	
//	쿼리문 실행을 위한 객체 mapper10
	@Bean
	public MapperFactoryBean<SearchMapper> getSearchMapper(SqlSessionFactory factory) {
		MapperFactoryBean<SearchMapper> factoryBean = new MapperFactoryBean<SearchMapper>(SearchMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		
		return factoryBean;
	}

	// 룰렛
	@Bean
	public MapperFactoryBean<RouletteMapper> getRouletteMapper(SqlSessionFactory factory) {
		MapperFactoryBean<RouletteMapper> factoryBean = new MapperFactoryBean<>(RouletteMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
}