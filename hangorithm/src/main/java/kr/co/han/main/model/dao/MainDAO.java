package kr.co.han.main.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.main.model.dto.BoardDTO;

@Repository
public class MainDAO {
//	info
	//paging
	public int infoListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("mainMapper.infoListCount");
	}
	// list
	public List<BoardDTO> infoList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("mainMapper.infoList",null,rb);
		
	}
	// enroll
	public int boardEnrollInfo(SqlSessionTemplate sqlSession, BoardDTO board) {
		return sqlSession.insert("mainMapper.boardEnrollInfo",board);
	}
//	board
	//paging
	public int boardListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("mainMapper.boardListCount");
	}
	// list
	public List<BoardDTO> boardList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("mainMapper.boardList",null, rb);
	}
	// enroll
	public int boardEnroll(SqlSessionTemplate sqlSession, BoardDTO board) {
		return sqlSession.insert("mainMapper.boardEnroll",board);
	}
//	tech
	//paging
	public int techListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("mainMapper.techListCount");
	}
	// list
	public List<BoardDTO> techList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("mainMapper.techList", null ,rb);
	}
	// enroll
	public int boardEnrollTech(SqlSessionTemplate sqlSession, BoardDTO board) {
		return sqlSession.insert("mainMapper.boardEnrollTech",board);
	}
	
//	detail
	public BoardDTO customerDetailInfo(SqlSessionTemplate sqlSession, int no){
		return sqlSession.selectOne("mainMapper.infoDetail",no);
	}
	public BoardDTO customerDetailTech(SqlSessionTemplate sqlSession, int no){
		return sqlSession.selectOne("mainMapper.techDetail",no);
	}
	public BoardDTO customerDetailBoard(SqlSessionTemplate sqlSession, int no){
		return sqlSession.selectOne("mainMapper.boardDetail",no);
	}
	
	// search
		public List<BoardDTO> infoListSearch(SqlSessionTemplate sqlSession,String item, PageInfo pi){
			int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
			RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
			return sqlSession.selectList("mainMapper.infoListSearch", item, rb);
		}
		public List<BoardDTO> boardListSearch(SqlSessionTemplate sqlSession,String item, PageInfo pi){
			int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
			RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
			return sqlSession.selectList("mainMapper.boardListSearch", item, rb);
		}
		public List<BoardDTO> techListSearch(SqlSessionTemplate sqlSession,String item, PageInfo pi){
			int offset = (pi.getCpage() - 1) * pi.getBoardLimit();
			RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
			return sqlSession.selectList("mainMapper.techListSearch", item, rb);
		}
//		search Count
		public int boardListCountSearch(SqlSessionTemplate sqlSession, String item) {
			return sqlSession.selectOne("mainMapper.boardListCountSearch", item);
		}
		public int infoListCountSearch(SqlSessionTemplate sqlSession, String item) {
			return sqlSession.selectOne("mainMapper.infoListCountSearch", item);
		}
		public int techListCountSearch(SqlSessionTemplate sqlSession, String item) {
			return sqlSession.selectOne("mainMapper.techListCountSearch", item);
		}
		
}
