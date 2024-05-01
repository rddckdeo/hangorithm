package kr.co.han.main.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	@GetMapping("customerForm.do")
	public String customerForm(Model model,
								@RequestParam(value="status" ,defaultValue="info")String status,
								@RequestParam(value="cpage", defaultValue="1")int cpage) {
		// 기본변수 설정
		int boardLimit = 5;
		int pageLimit = 5;
		int pageListCount = 0;
		
		// status 별로 List 나오게 설정하기
		if(status.equals("info")) {
			// 공지사항
			pageListCount = mainService.infoListCount();
			PageInfo pi = Pagenation.getPageInfo(pageListCount, cpage, pageLimit, boardLimit);
			List<BoardDTO> list = mainService.infoList(pi);
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			model.addAttribute("status",status);
			
		}else if(status.equals("board")) {
			// 문의사항
			pageListCount = mainService.boardListCount();
			PageInfo pi = Pagenation.getPageInfo(pageListCount, cpage, pageLimit, boardLimit);
			List<BoardDTO> list = mainService.boardList(pi);
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			model.addAttribute("status",status);
		}else if(status.equals("tech")) {
			// 기술지원
			pageListCount = mainService.techListCount();
			PageInfo pi = Pagenation.getPageInfo(pageListCount, cpage, pageLimit, boardLimit);
			List<BoardDTO> list = mainService.techList(pi);
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			model.addAttribute("status",status);
		}
		return "main/customer";
	}
	
	@GetMapping("boardEnrollForm.do")
	public String boardEnrollForm(@RequestParam(value="status", defaultValue="info")String status,
								Model model, HttpSession session) {
		try{
			MemberDTO login = (MemberDTO)session.getAttribute("login");
			Integer mNo = login.getMNo();
			model.addAttribute("status",status);
			return "main/customer/customerEnroll";
		}catch(NullPointerException e) {
			return "redirect:/member/loginForm.do";
		}
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
			
			int boardLimit = 5;
			int pageLimit = 5;
			int listCount = 0;
			// status별 List 불러오기
			if(data.equals("infoList")) {
				// infoList
				listCount = mainService.infoListCount();
				PageInfo infoPi = Pagenation.getPageInfo(listCount, cpage, pageLimit, boardLimit);
				List<BoardDTO> infoList = mainService.infoList(infoPi);
				
				for(BoardDTO board : infoList) {
					String ondate = board.getOndate();
					String subOndate = ondate.substring(2,16);
					board.setOndate(subOndate);
				}
				
				model.addAttribute("list",infoList);
				model.addAttribute("pi",infoPi);
				
			}else if(data.equals("boardList")) {
				listCount = mainService.boardListCount();
				PageInfo boardPi = Pagenation.getPageInfo(listCount, cpage, pageLimit, boardLimit);
				List<BoardDTO> boardList = mainService.boardList(boardPi);
				
				for(BoardDTO board : boardList) {
					String ondate = board.getOndate();
					String subOndate = ondate.substring(2,16);
					board.setOndate(subOndate);
				}
				
				model.addAttribute("list",boardList);
				model.addAttribute("pi",boardPi);
			}else if(data.equals("techList")) {
				listCount = mainService.techListCount();
				PageInfo techPi = Pagenation.getPageInfo(listCount, cpage, pageLimit, boardLimit);
				List<BoardDTO> techList = mainService.techList(techPi);
				
				for(BoardDTO board : techList) {
					String ondate = board.getOndate();
					String subOndate = ondate.substring(2,16);
					board.setOndate(subOndate);
				}
				
				model.addAttribute("list",techList);
				model.addAttribute("pi",techPi);
			}
			
		}
		return "main";
	}
	
	@PostMapping("boardEnroll.do")
	public String boardEnroll(@ModelAttribute BoardDTO board,
							@RequestParam("status") String status) {
		
		int result = 0;
		
		if(status.equals("info")) {
			result = mainService.boardEnrollInfo(board);
		}else if(status.equals("tech")) {
			result = mainService.boardEnrollTech(board);
		}else if(status.equals("board")) {
			result = mainService.boardEnroll(board);
		}
		if(result > 0) {
			return "redirect:/main/customerForm.do?status=" + status;
		}else {
			return "error";
		}
	}

	@GetMapping("customerDetailForm.do")
	public String customerDetailForm(@RequestParam("no")int no,
									@RequestParam("status")String status,
									Model model) {
		if(status.equals("info")) {
			BoardDTO list = mainService.customerDetailInfo(no);
			
			String ondate = list.getOndate().substring(2,16);
			list.setOndate(ondate);
			if(list.getIndate() != null) {
				String indate = list.getIndate().substring(2,16);
				list.setIndate(indate);
			}
			
			model.addAttribute("list",list);
			
		}else if(status.equals("tech")) {
			BoardDTO  list = mainService.customerDetailTech(no);
			String ondate = list.getOndate().substring(2,16);
			list.setOndate(ondate);
			if(list.getIndate() != null) {
				String indate = list.getIndate().substring(2,16);
				list.setIndate(indate);
			}
			model.addAttribute("list",list);
		}else if(status.equals("board")) {
			BoardDTO list = mainService.customerDetailBoard(no);
			String ondate = list.getOndate().substring(2,16);
			list.setOndate(ondate);
			if(list.getIndate() != null) {
				String indate = list.getIndate().substring(2,16);
				list.setIndate(indate);
			}
			model.addAttribute("list",list);
		}
		
		return "main/customer/customerDetail";
	}
	
	
	@GetMapping("searchItem.do")
	public String searchItem(Model model,
							@RequestParam(value="item", defaultValue="")String item,
							@RequestParam(value="boardCountAdd", defaultValue="0")int boardCountAdd
							) {
		int boardLimit = 0;
		if(boardCountAdd > 0) {
			boardLimit = boardCountAdd;
		}else {
			boardLimit = 5;
		}
		
		int cpage = 1;
		int pageLimit = 5;
		int boardListCount = mainService.boardListCountSearch(item);
		int infoListCount = mainService.infoListCountSearch(item);
		int techListCount = mainService.techListCountSearch(item);
		
		PageInfo piB = Pagenation.getPageInfo(boardListCount, cpage, pageLimit, boardLimit);
		PageInfo piI = Pagenation.getPageInfo(infoListCount, cpage, pageLimit, boardLimit);
		PageInfo piT = Pagenation.getPageInfo(techListCount, cpage, pageLimit, boardLimit);
		
		List<BoardDTO> infoList = mainService.infoListSearch(item, piI);
		List<BoardDTO> boardList = mainService.boardListSearch(item, piB);
		List<BoardDTO> techList = mainService.techListSearch(item, piT);
		
		model.addAttribute("item",item);
		model.addAttribute("infoList",infoList);
		model.addAttribute("boardList",boardList);
		model.addAttribute("techList",techList);
		
		model.addAttribute("boardLimit",boardLimit);
		
		
		return "/main/searchList";
	}
	
}
