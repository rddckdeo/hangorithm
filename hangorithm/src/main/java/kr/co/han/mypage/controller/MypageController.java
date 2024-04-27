package kr.co.han.mypage.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.common.paging.Pagenation;
import kr.co.han.main.model.dto.BoardDTO;
import kr.co.han.member.model.dto.CompanyDTO;
import kr.co.han.member.model.dto.MemberDTO;
import kr.co.han.mypage.model.service.MypageServiceImpl;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	MypageServiceImpl mypageService;
	
	@GetMapping("myPageForm.do")
	public String myInfo(@RequestParam(value="status", defaultValue="info")String status,
						@RequestParam(value="cpage", defaultValue="1")int cpage,
						Model model, HttpSession session) {
		MemberDTO login = (MemberDTO)session.getAttribute("login");
		int boardLimit = 10;
		int pageLimit = 10;
		int listCount = 0;
		if(login != null && status.equals("info")) {
			
			model.addAttribute("status",status);
			model.addAttribute("login",login);
			
			return "mypage/myPage";
			
			
		}else if(login != null && status.equals("company")) {
			
			CompanyDTO company = mypageService.companySelect(login.getCNo());
			model.addAttribute("company",company);
			model.addAttribute("status",status);
			
			return "mypage/myPage";
		}else if(login != null && status.equals("board")) {
			listCount = mypageService.selectBoardListCount(login.getMNo());
			PageInfo pi = Pagenation.getPageInfo(listCount, cpage, pageLimit, boardLimit);
			
			List<BoardDTO> list = mypageService.selectBoard(login.getMNo(), pi);
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			model.addAttribute("status",status);
			return "mypage/myPage";
		}else if(login != null && status.equals("tech")) {
			listCount = mypageService.selectTechListCount(login.getMNo());
			PageInfo pi = Pagenation.getPageInfo(listCount, cpage, pageLimit, boardLimit);
			
			List<BoardDTO> list = mypageService.selectTech(login.getMNo(), pi);
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			model.addAttribute("status",status);
			return "mypage/myPage";
		}else {
			return "redirect:/member/loginForm.do";
		}
	}
	@ResponseBody
	@PostMapping("updateMyInfo.do")
	public int updateMyInfo(@RequestBody Map<String, Object>data,HttpSession session) {
		if(data != null) {
			int result = mypageService.update(data);
			session.invalidate();
			System.out.println(result);
			return result;
		}else {
			return 0;
		}
		
	}
	
}
