package kr.co.han.main.model.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDTO {
	// common
	private int no;
	private String ondate;
	private String indate;
	private String deldate;
	private String title;
	private String content;
	private String mNo;
	
	// list 추가 내용
	private String name;
	private int view;
}
