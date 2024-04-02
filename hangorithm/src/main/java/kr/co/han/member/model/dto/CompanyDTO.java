package kr.co.han.member.model.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyDTO {
	private int cNo;
	private String cOndate;
	private String cIndate;
	private String cDeldate;
	
    @JsonProperty("cName")
	private String cName;
    @JsonProperty("cNum")
    private String cNum;
    @JsonProperty("cLocation")
	private String cLocation;
    @JsonProperty("cBusiness")
	private String cBusiness;
	
}
