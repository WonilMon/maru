package kr.co.softsoldesk.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.DAO.SearchDAO;
import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.PageBean;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class SearchService {

	@Autowired
	SearchDAO searchDAO;

	@Value("${path.upload}")
	private String path_upload;

	@Value("${page.listcnt}")
	private int page_list;

	@Value("${page.paginationcnt}")
	private int paginationcnt;

	// --------------------------------

	// 메인
	public List<ContentBean> getSearchResult(String keyWord, int page) {
		
		int start = (page - 1) * page_list;
		
		RowBounds rowBounds = new RowBounds(start, page_list);
		
		return searchDAO.getSearchResult(keyWord, rowBounds);
	}

	// 메인 - 페이지네이션
	public PageBean getFaqCnt(int currentPage, String keyWord) {

		int content_cnt = searchDAO.getFaqCnt(keyWord);
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_list, paginationcnt);

		return pageBean;
	}
}
