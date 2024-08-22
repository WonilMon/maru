package kr.co.softsoldesk.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kr.co.softsoldesk.DAO.BoardDAO;
import kr.co.softsoldesk.beans.BoardInfoBean;
import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.PageBean;
import kr.co.softsoldesk.beans.UserBean;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class BoardService {

	@Autowired
	BoardDAO boardDAO;

	@Value("${path.upload}")
	private String path_upload;

	@Value("${page.listcnt}")
	private int page_list;

	@Value("${page.paginationcnt}")
	private int paginationcnt;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	public String saveUploadFile(MultipartFile upload_file) {

		String path_upload = "/Users/minki/git/maru/src/main/webapp/WEB-INF/resources/upload";
		String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();

		try {
			upload_file.transferTo(new File(path_upload + "/" + file_name));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return file_name;

	}

	public void addContent(ContentBean writeContentBean) {

		MultipartFile upload_file = writeContentBean.getUpload_file();

		if (upload_file.getSize() > 0) {
			String file_name = saveUploadFile(upload_file);
			writeContentBean.setContent_file(file_name);

		}

		writeContentBean.setUser_idx(loginUserBean.getUser_idx());
		boardDAO.addContent(writeContentBean);

	}

	public String getBoardInfoName(int board_info_idx) {

		return boardDAO.getBoardInfoName(board_info_idx);
	}

	public List<BoardInfoBean> getBoardInfoList() {
		List<BoardInfoBean> boardList = boardDAO.getBoardInfoList();

		return boardList;
	}
	
	@Transactional
	public ContentBean getReadContent(int content_idx) {
		
		boardDAO.contentView(content_idx);

		return boardDAO.getReadContent(content_idx);
	}

	public int getContentIdx() {
		return boardDAO.getContentIdx();
	}

	public List<ContentBean> getContentList(int board_info_idx, int page) {

		int start = (page - 1) * page_list;

		RowBounds rowBounds = new RowBounds(start, page_list);

		return boardDAO.getContentList(board_info_idx, rowBounds);
	}

	public List<ContentBean> getPrevContentList(int board_info_idx) {

		RowBounds rowBounds = new RowBounds(0, 10);

		return boardDAO.getContentList(board_info_idx, rowBounds);

	}

	public PageBean getContentCnt(int board_info_idx, int currentPage) {

		int content_cnt = boardDAO.getContentCnt(board_info_idx);// 게시판의 전체 글 개수

		PageBean pageBean = new PageBean(content_cnt, currentPage, page_list, paginationcnt);

		return pageBean;
	}

	public void updateContent(ContentBean modifyContentBean) {

		MultipartFile upload_file = modifyContentBean.getUpload_file();

		if (upload_file.getSize() > 0) {

			String file_name = saveUploadFile(upload_file);
			modifyContentBean.setContent_file(file_name);
		}

		modifyContentBean.setUser_idx(loginUserBean.getUser_idx());

		boardDAO.updateContent(modifyContentBean);
	}

	public void deleteContent(int content_idx) {
		boardDAO.deleteContent(content_idx);
	}

	public List<ContentBean> getprevList(int board_info_idx) {

		RowBounds rowBounds = new RowBounds(0, 5);

		return boardDAO.getContentList(board_info_idx, rowBounds);

	}
	
}
