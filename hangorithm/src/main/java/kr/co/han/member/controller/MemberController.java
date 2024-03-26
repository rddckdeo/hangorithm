package kr.co.han.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@GetMapping("/loginForm.do")
	public String loginForm() {
		return "/member/loginForm";
	}
	
	@GetMapping("registerForm.do")
	public String registerForm() {
		return "/member/registerForm";
	}
	
}
