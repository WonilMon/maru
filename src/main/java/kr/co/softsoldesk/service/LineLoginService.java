package kr.co.softsoldesk.service;

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

	// 기존 값에서 /home 경로로 수정
	private String redirectUri = "http://localhost:8078/Maru/user/line";

	public String getAccessToken(String code) {
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
		Map<String, String> responseBody = response.getBody();

		return responseBody.get("access_token");
	}

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
}
