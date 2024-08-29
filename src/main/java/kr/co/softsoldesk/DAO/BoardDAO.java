package kr.co.softsoldesk.DAO;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.BoardInfoBean;
import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.mapper.BoardMapper;

@Repository
public class BoardDAO {

	@Autowired
	private BoardMapper boardMapper;

//	글 등록
	public void addContent(ContentBean writeContentBean) {
		boardMapper.addContent(writeContentBean);
	}
//	public int getLatestIdx() {
//		return boardMapper.getLatestIdx();
//	}
//

	public List<BoardInfoBean> getBoardInfoList() {
		List<BoardInfoBean> boardList = boardMapper.getBoardInfoList();
		return boardList;
	}

	public String getBoardInfoName(int board_info_idx) {
		return boardMapper.getBoardInfoName(board_info_idx);
	}

	public ContentBean getReadContent(int content_idx) {
		return boardMapper.getReadContent(content_idx);
	}

	public List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds) {
		return boardMapper.getContentList(board_info_idx, rowBounds);
	}

	public void deleteContent(int content_idx) {
		boardMapper.deleteContent(content_idx);
	}

//
//	public ContentBean getContentWriterIdx(int content_idx) {
//		return boardMapper.getContentWriterIdx(content_idx);
//	}
//	
	public int getContentCnt(int board_info_idx) {
		return boardMapper.getContentCnt(board_info_idx);
	}

	public int getContentIdx() {
		return boardMapper.getContentIdx();
	}

	public void updateContent(ContentBean modifyContentBean) {
		boardMapper.updateContent(modifyContentBean);
	}

	public void contentView(int content_idx) {
		boardMapper.contentView(content_idx);
	}

	// 일간베스트 main
	public List<ContentBean> getToday3Content() {
		return boardMapper.getToday3Content();
	}

	// 주간베스트 main
	public List<ContentBean> getWeekly3Content() {
		return boardMapper.getWeekly3Content();
	}

	// 월간베스트 main
	public List<ContentBean> getMonthly3Content() {
		return boardMapper.getMonthly3Content();
	}
}
