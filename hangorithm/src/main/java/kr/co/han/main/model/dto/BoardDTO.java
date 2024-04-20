package kr.co.han.main.model.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDTO {
	private int no;
	private String ondate;
	private String indate;
	private String deldate;
	private String title;
	private String content;
	private String mNo;
}
