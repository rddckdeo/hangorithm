package kr.co.han.main.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.main.model.dto.BoardDTO;

@Repository
public class MainDAO {
	//paging
	public int boardListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("mainMapper.boardListCount");
	}
	
	// list
	public List<BoardDTO> boardList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("mainMapper.boardList", rb);
	}
	
}
