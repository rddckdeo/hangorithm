package kr.co.han.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.member.model.dto.CompanyDTO;

@Repository
public class MemberDAO {
	public int idCheck(SqlSessionTemplate sqlSession,String id) {
		return sqlSession.selectOne("memberMapper.idCheck", id);
	}
	public List<CompanyDTO> findCompany(SqlSessionTemplate sqlSession, String companyName, PageInfo pi){
		int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("memberMapper.findCompany",companyName, rb);
	}
	public int companyEnroll(SqlSessionTemplate sqlSession, CompanyDTO company) {
		int result = sqlSession.insert("memberMapper.companyEnroll", company);
		return result;
	}
	public int checkCompany(SqlSessionTemplate sqlSession, CompanyDTO company) {
		return sqlSession.selectOne("memberMapper.checkCompany",company);
	}
	
	
//	paing 처리
	public int companyListCount(SqlSessionTemplate sqlSession,String companyName) {
		return sqlSession.selectOne("memberMapper.companyListCount", companyName);
	}
}
