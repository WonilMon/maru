package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.FaqBean;
import kr.co.softsoldesk.beans.PageBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.CompanyService;

@Controller
@RequestMapping("/company")
public class CompanyController {

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

		model.addAttribute("faqList", faqList);

		PageBean pageBean = companyService.getFaqCnt(page);
		model.addAttribute("pageBean", pageBean);

		return "admin/manage_faq";
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
		String admin_notice = companyService.getAdminNotice();

		model.addAttribute("userList_mostContent", userList_mostContent);
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

}
