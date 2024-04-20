package kr.co.han.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
	
	@GetMapping("test.do")
	public String testForm() {
		return "test/parent";
	}
	@GetMapping("test2.do")
	public String test2Form() {
		return "test/child";
	}
	
	
}
