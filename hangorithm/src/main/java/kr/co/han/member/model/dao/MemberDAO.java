package kr.co.han.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.han.member.model.dto.CompanyDTO;

@Repository
public class MemberDAO {
	public int idCheck(SqlSessionTemplate sqlSession,String id) {
		return sqlSession.selectOne("memberMapper.idCheck", id);
	}
	public List<String> findCompany(SqlSessionTemplate sqlSession, String companyName){
		return sqlSession.selectList("memberMapper.findCompany",companyName);
	}
	public int companyEnroll(SqlSessionTemplate sqlSession, CompanyDTO company) {
		int result = sqlSession.insert("memberMapper.companyEnroll", company);
		return result;
	}
	public int checkCompany(SqlSessionTemplate sqlSession, CompanyDTO company) {
		return sqlSession.selectOne("memberMapper.checkCompany",company);
	}
}
