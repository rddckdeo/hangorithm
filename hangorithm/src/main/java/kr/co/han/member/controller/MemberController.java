package kr.co.han.member.controller;

import java.util.List;

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

import kr.co.han.member.model.dto.CompanyDTO;
import kr.co.han.member.model.service.MemberServiceImpl;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	MemberServiceImpl memberService;
	
	@GetMapping("/loginForm.do")
	public String loginForm() {
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
	
	//login
	@PostMapping("/login.do")
	public String login(HttpSession session,
						@RequestParam("id") String id,
						@RequestParam("pwd") String pwd) {
		System.out.println(id);
		System.out.println(pwd);
		
		
		return "redirect:/member/loginForm.do";
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
							@RequestParam("companyName")String companyName) {
		
		List<String>company = memberService.findCompany(companyName);
		
		
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
	
}
