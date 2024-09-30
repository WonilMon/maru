package kr.co.softsoldesk.service;

import com.auth0.jwt.JWT;
import com.auth0.jwt.interfaces.DecodedJWT;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import kr.co.softsoldesk.beans.LineProfile;

import java.util.Map;

@Service
@PropertySource("/WEB-INF/properties/line_login.properties")
public class LineLoginService {

	@Value("${line.client_id}")
	private String clientId;

	@Value("${line.client_secret}")
	private String clientSecret;

	// 리다이렉트 URI
	private String redirectUri = "http://localhost:8078/Maru/user/line";

	// Access Token과 Id Token을 동시에 가져오는 메서드
	public Map<String, String> getTokens(String code) {
		String tokenUrl = "https://api.line.me/oauth2/v2.1/token";

		RestTemplate restTemplate = new RestTemplate();
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("code", code);
		params.add("redirect_uri", redirectUri);
		params.add("client_id", clientId);
		params.add("client_secret", clientSecret);

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<>(params, headers);

		ResponseEntity<Map> response = restTemplate.postForEntity(tokenUrl, request, Map.class);
		return response.getBody();
	}

	// Access Token을 반환하는 메서드
	public String getAccessToken(String code) {
		Map<String, String> tokens = getTokens(code);
		return tokens.get("access_token");
	}

	// Id Token을 반환하는 메서드
	public String getIdToken(String code) {
		Map<String, String> tokens = getTokens(code);
		return tokens.get("id_token");
	}

	// 사용자 프로필 정보를 가져오는 메서드
	public LineProfile getUserProfile(String accessToken) {
		String profileUrl = "https://api.line.me/v2/profile";

		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.set("Authorization", "Bearer " + accessToken);

		HttpEntity<String> entity = new HttpEntity<>(headers);

		ResponseEntity<LineProfile> response = restTemplate.exchange(profileUrl, HttpMethod.GET, entity,
				LineProfile.class);
		return response.getBody();
	}

	// id_token에서 이메일을 추출하는 메서드
	public String getEmailFromIdToken(String idToken) {
		DecodedJWT jwt = JWT.decode(idToken);
		return jwt.getClaim("email").asString(); // 이메일 클레임 추출
	}
}
