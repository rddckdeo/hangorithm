package kr.co.han.main.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.main.model.dao.MainDAO;
import kr.co.han.main.model.dto.BoardDTO;

@Service
public class MainServiceImpl {
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	MainDAO mainDao;

//	board
	// paging
	public int boardListCount() {
		return mainDao.boardListCount(sqlSession);
	}
	// List 불러오기
	public List<BoardDTO> boardList(PageInfo pi){
		return mainDao.boardList(sqlSession, pi);
	}
	public int boardEnroll(BoardDTO board) {
		return mainDao.boardEnroll(sqlSession, board); 
	}
//	info
	// paging
	public int infoListCount() {
		return mainDao.infoListCount(sqlSession);
	}
	public List<BoardDTO> infoList(PageInfo pi){
		return mainDao.infoList(sqlSession, pi);
	}
	public int boardEnrollInfo(BoardDTO board) {
		return mainDao.boardEnrollInfo(sqlSession, board); 
	}
	
//	tech
	public int techListCount() {
		return mainDao.techListCount(sqlSession);
	}
	public List<BoardDTO> techList(PageInfo pi){
		return mainDao.techList(sqlSession, pi);
	}
	public int boardEnrollTech(BoardDTO board) {
		return mainDao.boardEnrollTech(sqlSession, board); 
	}
	
//	detail
	public BoardDTO customerDetailInfo(int no){
		return mainDao.customerDetailInfo(sqlSession, no);
	}
	public BoardDTO customerDetailTech(int no){
		return mainDao.customerDetailTech(sqlSession, no);
	}
	public BoardDTO customerDetailBoard(int no){
		return mainDao.customerDetailBoard(sqlSession, no);
	}
	
// search
	public List<BoardDTO> infoListSearch(String item, PageInfo pi){
		return mainDao.infoListSearch(sqlSession, item, pi);
	}
	public List<BoardDTO> boardListSearch(String item,PageInfo pi){
		return mainDao.boardListSearch(sqlSession, item, pi);
	}
	public List<BoardDTO> techListSearch(String item,PageInfo pi){
		return mainDao.techListSearch(sqlSession, item,pi);
	}
//	search Count
	public int boardListCountSearch(String item) {
		return mainDao.boardListCountSearch(sqlSession, item);
	}
	public int infoListCountSearch(String item) {
		return mainDao.infoListCountSearch(sqlSession, item);
	}
	public int techListCountSearch(String item) {
		return mainDao.techListCountSearch(sqlSession, item);
	}
	
	
}
