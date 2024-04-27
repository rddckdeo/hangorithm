package kr.co.han.member.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.member.model.dao.MemberDAO;
import kr.co.han.member.model.dto.CompanyDTO;
import kr.co.han.member.model.dto.MemberDTO;
import kr.co.han.member.model.dto.RegisterDTO;

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
	public List<CompanyDTO> findCompany(String companyName, PageInfo pi){
		return memberDao.findCompany(sqlSession, companyName, pi);
	}
	// company Enroll
	public int companyEnroll(CompanyDTO company) {
		return memberDao.companyEnroll(sqlSession, company);
	}
	// check company
	public int checkCompany(CompanyDTO company) {
		return memberDao.checkCompany(sqlSession, company);
	}
//	paging 처리
	public int companyListCount(String companyName) {
		return memberDao.companyListCount(sqlSession, companyName);
	}
	// register
	public int register(RegisterDTO register) {
		return memberDao.register(sqlSession, register);
	}
	// login
	public MemberDTO login(MemberDTO login) {
		return memberDao.login(sqlSession, login);
	}
	
//	find
	
	public int findIdCheck(MemberDTO member) {
		return memberDao.findIdCheck(sqlSession, member);
	}
	
	public String findId(MemberDTO member) {
		return memberDao.findId(sqlSession, member);
	}
	
}
