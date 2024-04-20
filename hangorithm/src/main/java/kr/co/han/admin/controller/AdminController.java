package kr.co.han.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.han.admin.model.service.AdminServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminServiceImpl adminService;
	
	@GetMapping("adminForm.do")
	public String adminForm() {
		return "admin/admin";
	}
}
