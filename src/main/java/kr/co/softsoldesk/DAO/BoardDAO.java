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

		if (writeContentBean.getContent_files() != null) {
			for (String fileName : writeContentBean.getContent_files()) {
				boardMapper.addFile(boardMapper.getLatestIdx(), fileName);
			}
		}
	}

	public void addHashTag(int content_idx, String tag) {
		boardMapper.addHashTag(content_idx, tag);
	}
	
	public void deleteHashTag(int content_idx) {
		boardMapper.deleteHashTag(content_idx);
	}

	public List<BoardInfoBean> getBoardInfoList() {
		List<BoardInfoBean> boardList = boardMapper.getBoardInfoList();
		return boardList;
	}

	public String getBoardInfoName(int board_info_idx) {
		return boardMapper.getBoardInfoName(board_info_idx);
	}

	public ContentBean getReadContent(int content_idx) {
		ContentBean content = boardMapper.getReadContent(content_idx);

		// 파일 목록
		List<String> contentFiles = boardMapper.getContentFiles(content_idx);
		content.setContent_files(contentFiles);
		
		// 해시태그 목록
		List<String> hashTags = boardMapper.getHashTags(content_idx);
		content.setHashTags(hashTags);

		return content;
	}

	// 파일 목록
	public List<String> getContentFiles(int content_idx) {
		return boardMapper.getContentFiles(content_idx);
	}

	// 해시태그 목록
	public List<String> getHashTags(int content_idx) {
		return boardMapper.getHashTags(content_idx);
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

	public int getCommentCount(int content_idx) {
		return boardMapper.getCommentCount(content_idx);
	}

	public void addfavorite(int content_idx, int user_idx) {
		boardMapper.addfavorite(content_idx, user_idx);
	}

	public void deletefavorite(int content_idx, int user_idx) {
		boardMapper.deletefavorite(content_idx, user_idx);
	}

	public int favorList(int user_idx) {
		return boardMapper.favorList(user_idx);
	}

	public int getFavoriteIdx(int content_idx, int user_idx) {
		return boardMapper.getFavoriteIdx(content_idx, user_idx);
	}

	public boolean anonymous(boolean content_isAnonymous) {
		return boardMapper.anonymous(content_isAnonymous);
	}
	
	public List<ContentBean> selectContentList(int board_info_idx) {
	    return boardMapper.selectContentList(board_info_idx);
	}

}
