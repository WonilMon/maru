package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.softsoldesk.beans.CommentBean;
import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.FaqBean;
import kr.co.softsoldesk.beans.PageBean;
import kr.co.softsoldesk.beans.SharingBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.BoardService;
import kr.co.softsoldesk.service.CompanyService;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	BoardService boardService;

	@Autowired
	private CompanyService companyService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	// ------------------------------

	// 회사소개 (company.jsp)
	@GetMapping("/company")
	private String company() {
		return "company/company";
	}

	// 공지사항 (notice_main.jsp)
	@GetMapping("/notice")
	private String notice(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
		
		int board_info_idx = 5;
		
		List<ContentBean> noticeList = companyService.getNoticeList(board_info_idx, page);
		
		PageBean pageBean = companyService.getNoticeCnt(page);
	
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("pageBean", pageBean);
		
		return "company/notice_main";
	}

	// 공지사항 글쓰기 (notice_write.jsp)
	@GetMapping("/notice_write")
	private String notice_write(Model model) {

		ContentBean writeContentBean = new ContentBean();
		writeContentBean.setBoard_info_idx(5);

		model.addAttribute("writeContentBean", writeContentBean);
		model.addAttribute("user_name", loginUserBean.getUser_nickname());

		return "company/notice_write";
	}

	// 공지사항 글쓰기 (notice_write.jsp)
	@PostMapping("/notice_write_pro")
	private String notice_wirte_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean,
			BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "company/notice_write";
		}

		boardService.addNoticeContent(writeContentBean);

		int content_idx = boardService.getContentIdx();

		model.addAttribute("content_idx", content_idx);
		model.addAttribute("board_info_idx", 5);

		return "company/notice_write_success";
	}

	// 공지사항 읽기 (notice_read.jsp)
	@GetMapping("/notice_read")
	private String board_read(@RequestParam("content_idx") int content_idx,
			@RequestParam("board_info_idx") int board_info_idx, Model model) {

		boolean favorite_idx = boardService.getFavoriteIdx(content_idx, loginUserBean.getUser_idx());
		int count = boardService.getCommentCount(content_idx);
		ContentBean readContent = boardService.getReadContent(content_idx);
		CommentBean commentBean = new CommentBean();
		String img;
		String favoriteOff = "/images/2099045.png";
		String favoriteOn = "/images/2099045-6f30adb4.png";
		if (favorite_idx) {
			img = favoriteOff;
		} else {
			img = favoriteOn;
		}
		model.addAttribute("user_name", loginUserBean.getUser_nickname());
		model.addAttribute("readContent", readContent);
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		model.addAttribute("user_idx", loginUserBean.getUser_idx());
		model.addAttribute("commentBean", commentBean);
		model.addAttribute("count", count);
		model.addAttribute("img", img);
		model.addAttribute("favorite_idx", favorite_idx);
		model.addAttribute("favoriteOn", favoriteOn);
		model.addAttribute("favoriteOff", favoriteOff);
		return "company/notice_read";

	}

	// FAQ (faq.jsp)
	@GetMapping("/faq")
	private String faq(@ModelAttribute("addFaqBean") FaqBean addFaqBean) {
		return "company/faq";
	}

	// FAQ 등록 (faq.jsp)
	@GetMapping("/faq_pro")
	private String faq_pro(@ModelAttribute("addFaqBean") FaqBean addFaqBean) {

		companyService.addFaq(addFaqBean);

		return "company/faq_success";
	}

	// FAQ관리
	@GetMapping("/manage_faq")
	private String manage_faq(@ModelAttribute("adminFaqBean") FaqBean adminFaqBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		List<FaqBean> faqList = companyService.getFaqList(page);

		model.addAttribute("faqList", faqList);

		PageBean pageBean = companyService.getFaqCnt(page);
		model.addAttribute("pageBean", pageBean);

		return "admin/manage_faq";
	}

	// FAQ관리 - 응답
	@PostMapping("/manage_faq_modal_answer")
	private String manage_faq_modal_answer(@ModelAttribute("adminFaqBean") FaqBean adminFaqBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		List<FaqBean> faqList = companyService.getFaqList(page);

		companyService.updateFaqAnswerToConfirmed(adminFaqBean.getFaq_idx());

		model.addAttribute("faqList", faqList);

		PageBean pageBean = companyService.getFaqCnt(page);
		model.addAttribute("pageBean", pageBean);
		try {
			String to = adminFaqBean.getFaq_user_email();
			String subject = "【重要】ご質問に対するご回答について";

			String text = "こんにちは、" + adminFaqBean.getFaq_user_nickname() + "さん。\n\n"
					+ "平素より弊社サービスをご利用いただき、誠にありがとうございます。\n\n"
					+ "この度は、ご質問をいただきありがとうございました。以下の通り、ご質問に対するご回答をお送りいたしますので、ご確認ください。" + "\n\n" + "【ご質問】\n"
					+ adminFaqBean.getFaq_user_text() + "\n\n" + "【応答】\n" + adminFaqBean.getResponse_text() + "\n\n"
					+ "ご不明な点や追加のご質問がございましたら、どうぞお気軽にご連絡ください。\n\n" + "この度はご利用いただき、誠にありがとうございます。引き続き、どうぞよろしくお願いいたします。\n\n"
					+ "敬具,\n" + "サポートチーム";

			companyService.sendFaqMail(to, subject, text);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/company/manage_faq?page=" + page;
	}

	// FAQ관리 - 삭제
	@PostMapping("/manage_faq_modal_delete")
	private String manage_faq_modal_delete(@ModelAttribute("adminFaqBean") FaqBean adminFaqBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		companyService.deleteFaq(adminFaqBean.getFaq_idx());

		List<FaqBean> faqList = companyService.getFaqList(page);

		model.addAttribute("faqList", faqList);

		PageBean pageBean = companyService.getFaqCnt(page);
		model.addAttribute("pageBean", pageBean);

		return "admin/manage_faq";
	}

	// 관리자 홈
	@GetMapping("/admin_index")
	private String admin_index(Model model) {

		loginUserBean.setNewUserCount(companyService.getNewUserCount());
		loginUserBean.setNewContentCount(companyService.getNewContentCount());
		loginUserBean.setNewCommentCount(companyService.getNewCommentCount());
		loginUserBean.setNewFaqCount(companyService.getNewFaqCount());

		List<UserBean> userList_mostContent = companyService.getUserList_mostContent();
		List<UserBean> userList_mostPoint = companyService.getUserList_mostPoint();
		List<UserBean> userList_admin = companyService.getUserList_admin();
		List<Integer> userList_flow = companyService.getUserList_flow();
		String admin_notice = companyService.getAdminNotice();

		model.addAttribute("userList_mostContent", userList_mostContent);
		model.addAttribute("userList_mostPoint", userList_mostPoint);
		model.addAttribute("userList_admin", userList_admin);
		model.addAttribute("userList_flow", userList_flow);
		model.addAttribute("admin_notice", admin_notice);

		return "admin/index";
	}

	// 관리자 홈 - 공지 업데이트
	@PostMapping("/updateStatusAdmin")
	@ResponseBody
	public String updateStatusAdmin(@RequestParam("admin_notice") String admin_notice) {

		try {
			companyService.updateStatusAdmin(admin_notice);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	// 회원관리 - 회원리스트
	@GetMapping("/manage_user")
	public String manage_user(@ModelAttribute("adminUserBean") UserBean adminUserBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		List<UserBean> userList = companyService.getUserList(page);

		model.addAttribute("userList", userList);

		PageBean pageBean = companyService.getUserCnt(page);
		model.addAttribute("pageBean", pageBean);

		return "admin/manage_user";
	}

	// 회원관리 - 회원수정
	@PostMapping("/manage_user_modal")
	public String manage_user_modal(@ModelAttribute("adminUserBean") UserBean adminUserBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		companyService.updateUser(adminUserBean);

		List<UserBean> userList = companyService.getUserList(page);

		model.addAttribute("userList", userList);

		PageBean pageBean = companyService.getUserCnt(page);
		model.addAttribute("pageBean", pageBean);

		return "admin/manage_user";
	}

	// 게시글관리 - 게시글리스트
	@GetMapping("/manage_content")
	public String manage_content(@RequestParam("board_info_idx") int board_info_idx,
			@ModelAttribute("adminContentBean") ContentBean adminContentBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		List<ContentBean> contentList = companyService.getContentList(board_info_idx, page);

		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("contentList", contentList);

		PageBean pageBean = companyService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);

		return "admin/manage_content";
	}

	// 게시글관리 - 게시글삭제
	@PostMapping("/manage_content_modal")
	public String manage_content_modal(@RequestParam("board_info_idx") int board_info_idx,
			@ModelAttribute("adminContentBean") ContentBean adminContentBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		companyService.deleteContent(adminContentBean.getContent_idx());

		List<ContentBean> contentList = companyService.getContentList(board_info_idx, page);

		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("contentList", contentList);

		PageBean pageBean = companyService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);

		return "admin/manage_content";
	}

	// 나눔관리 - 리스트
	@GetMapping("/manage_share")
	private String manage_share(@ModelAttribute("adminShareBean") SharingBean adminShareBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		List<SharingBean> shareList = companyService.getShareList(page);

		model.addAttribute("shareList", shareList);

		PageBean pageBean = companyService.getShareCnt(page);
		model.addAttribute("pageBean", pageBean);

		return "admin/manage_share";
	}

	// 나눔관리 - 응답
	@PostMapping("/manage_share_modal_answer")
	private String manage_share_modal_answer(@ModelAttribute("adminShareBean") SharingBean adminShareBean, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		List<SharingBean> shareList = companyService.getShareList(page);

		model.addAttribute("shareList", shareList);

		PageBean pageBean = companyService.getShareCnt(page);
		model.addAttribute("pageBean", pageBean);

		companyService.updatePoint(adminShareBean.getSender_name());
		companyService.updatePoint(adminShareBean.getReceiver_name());
		companyService.updateAfter(adminShareBean.getShare_idx());

		return "admin/manage_share_success";
	}

//	// FAQ관리 - 삭제
//	@PostMapping("/manage_faq_modal_delete")
//	private String manage_faq_modal_delete(@ModelAttribute("adminFaqBean") FaqBean adminFaqBean, Model model,
//			@RequestParam(value = "page", defaultValue = "1") int page) {
//
//		companyService.deleteFaq(adminFaqBean.getFaq_idx());
//
//		List<FaqBean> faqList = companyService.getFaqList(page);
//
//		model.addAttribute("faqList", faqList);
//
//		PageBean pageBean = companyService.getFaqCnt(page);
//		model.addAttribute("pageBean", pageBean);
//
//		return "admin/manage_faq";
//	}

}
