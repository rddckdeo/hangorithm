package kr.co.han.member.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.han.member.model.dao.MemberDAO;
import kr.co.han.member.model.dto.CompanyDTO;

@Service
public class MemberServiceImpl {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDAO memberDao;
	// id check
	public int idCheck(String id) {
		return memberDao.idCheck(sqlSession, id);
	}
	// company find
	public List<String> findCompany(String companyName){
		return memberDao.findCompany(sqlSession, companyName);
	}
	// company Enroll
	public int companyEnroll(CompanyDTO company) {
		return memberDao.companyEnroll(sqlSession, company);
	}
	// check company
	public int checkCompany(CompanyDTO company) {
		return memberDao.checkCompany(sqlSession, company);
	}
	
	
}
