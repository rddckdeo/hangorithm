package kr.co.han.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.common.paging.Pagenation;
import kr.co.han.member.model.dto.CompanyDTO;
import kr.co.han.member.model.dto.MemberDTO;
import kr.co.han.member.model.dto.RegisterDTO;
import kr.co.han.member.model.service.MemberServiceImpl;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	MemberServiceImpl memberService;
	@Autowired
	BCryptPasswordEncoder bc;
	
	@GetMapping("/loginForm.do")
	public String loginForm(HttpSession session, Model model) {
		
		String status = (String)session.getAttribute("status");
		session.removeAttribute("status");
		model.addAttribute("status", status);
		
		return "/member/loginForm";
	}
	@GetMapping("/registerForm.do")
	public String registerForm() {
		return "/member/registerForm";
	}
	@GetMapping("/findId.do")
	public String FindId() {
		return "/member/findId";
	}
	@GetMapping("/findPwd.do")
	public String FindPwd() {
		return "/member/findPwd";
	}
	@GetMapping("findCompany.do")
	public String findCompany() {
		return "/member/findCompany";
	}
	@GetMapping("myPageForm.do")
	public String myPageForm() {
		return "redirect:/mypage/myinfoForm.do";
	}
	
	//login
	@PostMapping("/login.do")
	public String login(HttpSession session, Model model,
						@RequestParam("id") String id,
						@RequestParam("pwd") String pwd) {
		MemberDTO login = new MemberDTO();
		login.setMId(id);
		login.setMPwd(pwd);
		
		try{
			// DB에서 정보 가져오기
			MemberDTO getLogin = memberService.login(login);
			if(bc.matches(login.getMPwd(),getLogin.getMPwd()) && login.getMPwd() != null){
				System.out.println("login 완료");
				// birth 뒤에 시간 우수리
				String birth = getLogin.getMBirth().substring(0,10);
				getLogin.setMBirth(birth);
				
				session.setAttribute("login", getLogin);
				
				return "redirect:/";
			}else if(login.getMPwd() == null){
				session.setAttribute("status", "null");
				return "redirect:/member/loginForm.do";
			}else {
				session.setAttribute("status", "false");
				return "redirect:/member/loginForm.do";
			}
		}catch(NullPointerException e) {
			session.setAttribute("status","notId");
			System.out.println("login NullPointer 발생");
			return "redirect:/member/loginForm.do";
		}
		
	}
	// logout
	@GetMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// idCheck
	@ResponseBody
	@GetMapping("/idCheck.do")
	public String idCheck(@RequestParam("id") String id) {
		int result = memberService.idCheck(id);
		if(result == 0) {
			return "0";
		}else {
			return "1";
		}
	}
	
	//find Company
	@GetMapping("/findCompanyBoard.do")
	public String findCompanyBoard(Model model,HttpSession session,
							@RequestParam("companyName")String companyName,
							@RequestParam(value="cpage", defaultValue="1")int cpage){
		//page
		int pageLimit = 5;
		int boardLimit = 5;
		int listCount = memberService.companyListCount(companyName);
		PageInfo pi = Pagenation.getPageInfo(listCount, cpage, pageLimit, boardLimit);
		
		//list
		List<CompanyDTO> company = memberService.findCompany(companyName, pi);
		//model
		model.addAttribute("companyName",companyName);
		model.addAttribute("company",company);
		model.addAttribute("pi",pi);
		
		return "/member/findCompany";
	}
	
	//Enroll Company
	@ResponseBody
	@PostMapping("companyEnroll.do")
	public String companyEnroll(@RequestBody CompanyDTO companyDTO) {
		// NullPointerException
		try{
			// 내용이 비어있는지 안비어있는지 확인하기
			if(companyDTO.getCName().equals("") ||
				companyDTO.getCNum().equals("") ||
				companyDTO.getCLocation().equals("") ||
				companyDTO.getCBusiness().equals("")) {
				return "null";
			}else {
				// 중복 회사가 있는지 확인
				int checkCompany = memberService.checkCompany(companyDTO);
				if(checkCompany == 0) {
					// 회사 추가
					int result = memberService.companyEnroll(companyDTO);
					if(result == 1) {
						return "success";
					}else {
						return "error";
					}
				}else {
					return "checkFalse";
				}
			}
		}catch(NullPointerException e){
			System.out.println("NullPointer 발생");
			return "null";
		}
	}
	
	@PostMapping("register.do")
	public String register(@ModelAttribute RegisterDTO register
							) {
		// BCrypt를 통한 password 암호화
		String password = bc.encode(register.getPwd());
		String path = null;
		register.setPwd(password);
		
		if(path == null) {
			register.setPath("/resources/upload/main/");
			register.setImg("default.png");
		}
		
		int result = memberService.register(register);
		System.out.println(result);
		if(result > 0) {
			return "/member/loginForm";
		}else {
			return "error";
		}
	}
	
}
