package kr.co.han.member.model.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class RegisterDTO {
	private String id;
	private String pwd;
	private String email;
	private String name;
	private String position;
	private String number;
	private String birth;
	private int companyNo;
	private String path;
	private String img;
	
}
