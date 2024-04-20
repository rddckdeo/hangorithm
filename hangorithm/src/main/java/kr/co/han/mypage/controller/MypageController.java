package kr.co.han.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@GetMapping("myinfoForm.do")
	public String myInfo() {
		return "mypage/myInfo";
	}
	@GetMapping("myCompanyForm.do")
	public String myCompany() {
		return "mypage/myCompany";
	}
	@GetMapping("myInqueryForm.do")
	public String myInquery() {
		return "mypage/myInquiry";
	}
	@GetMapping("myTechForm.do")
	public String myTech() {
		return "mypage/myTech";
	}
}
