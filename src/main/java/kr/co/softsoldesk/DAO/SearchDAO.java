package kr.co.softsoldesk.DAO;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.mapper.SearchMapper;

@Repository
public class SearchDAO {

	@Autowired
	SearchMapper searchMapper;

	// -----------------------------------------------

	// 메인
	public List<ContentBean> getSearchResult(String keyWord, RowBounds rowBounds) {
		return searchMapper.getSearchResult(keyWord, rowBounds);
	}

	// 메인 - 페이지네이션
	public int getFaqCnt(String keyWord) {
		return searchMapper.getFaqCnt(keyWord);
	}
}
