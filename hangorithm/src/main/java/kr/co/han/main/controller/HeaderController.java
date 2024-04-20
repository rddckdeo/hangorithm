package kr.co.han.main.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.common.paging.Pagenation;
import kr.co.han.main.model.dto.BoardDTO;
import kr.co.han.main.model.service.MainServiceImpl;
import kr.co.han.member.model.dto.MemberDTO;

@Controller
@RequestMapping("/main")
public class HeaderController {
	@Autowired
	MainServiceImpl mainService;
	
//	form 이동
	@GetMapping("companyForm.do")
	public String companyForm() {
		return "main/company";
	}
	@GetMapping("productForm.do")
	public String productForm() {
		return "main/product";
	}
	@GetMapping("customerForm.do")
	public String customerForm() {
		return "main/customer";
	}
	// status별 페이지 이동
	@GetMapping("mainForm.do")
	public String mainForm(@RequestParam("status")String status) {
		
		//info
		if(status.equals("info")) {
			return "redirect:/main/infoList.do";
		}else if(status.equals("board")) {
			return "redirect:/main/boardList.do";
		}
		
		return "/";
	}
	
	// 메인 Content 교체 및 List 불러오기
	@GetMapping("headerChange.do")
	public String sessionChang(HttpSession session, Model model,
							@RequestParam("data")String data,
							@RequestParam(value="cpage", defaultValue="1")int cpage) {
		if(session.getAttribute("login") != null) {
			session.setAttribute("BtnStatus", data);
			// login 정보
			MemberDTO loginDTO = (MemberDTO)session.getAttribute("login");
			
			int boardList = 5;
			int pageLimit = 5;
			int listCount = 0;
			System.out.println(data);
			// status별 List 불러오기
			if(data.equals("infoList")) {
				// infoList
				listCount = mainService.boardListCount();
				
				PageInfo infoPi = Pagenation.getPageInfo(listCount, cpage, pageLimit, boardList);
				List<BoardDTO> infoList = mainService.boardList(infoPi);
				
				model.addAttribute("infoList",infoList);
				model.addAttribute("infoPi",infoPi);
				
			}else if(data.equals("techList")) {
				System.out.println("techList 실행");
				
			}else if(data.equals("education")) {
				System.out.println("education 실행");
				
			}
			
		}
		return "main";
	}
	
//	Customer
	//infoList
	@GetMapping("infoList.do")
	public String infoList() {
		
		//여기 작성하기
		// Enroll도 추가하기 24.04.18
		
		return "main/customer/infoList";
	}
	//boardList
	@GetMapping("boardList.do")
	public String boardList() {
		
		
		return "main/customer/boardList";
	}
	
}
