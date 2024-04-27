package kr.co.han.mypage.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.main.model.dto.BoardDTO;
import kr.co.han.member.model.dto.CompanyDTO;

@Repository
public class MypageDAO {
	
	public int update(SqlSessionTemplate sqlSession, Map<String, Object> data) {
		return sqlSession.update("mypageMapper.update",data);
	}
	
	public CompanyDTO companySelect(SqlSessionTemplate sqlSession, int no) {
		return sqlSession.selectOne("mypageMapper.selectCompany", no);
	}
	
	public List<BoardDTO> selectBoard(SqlSessionTemplate sqlSession, int no, PageInfo pi){
		int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("mypageMapper.selectBoard",no, rb);
	}
	public int selectBoardListCount(SqlSessionTemplate sqlSession, int no) {
		return sqlSession.selectOne("mypageMapper.selectBoardListCount",no);
	}
	
	
	public List<BoardDTO> selectTech(SqlSessionTemplate sqlSession, int no, PageInfo pi){
		int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("mypageMapper.selectTech",no, rb);
	}
	public int selectTechListCount(SqlSessionTemplate sqlSession, int no) {
		return sqlSession.selectOne("mypageMapper.selectTechListCount",no);
	}
}
