package kr.co.softsoldesk.service;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import kr.co.softsoldesk.beans.Article;
import kr.co.softsoldesk.beans.NewsResponse;

@Service
@PropertySource("/WEB-INF/properties/news.properties")
public class NewsService {

	@Value("${newsapi.url}")
	private String newsApiUrl;

	public List<Article> getTopHeadlines() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<NewsResponse> response = restTemplate.getForEntity(newsApiUrl, NewsResponse.class);
		if (response.getStatusCode() == HttpStatus.OK) {
			return response.getBody().getArticles();
		}
		return Collections.emptyList();
	}
}
