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
	// paging
	public int boardListCount() {
		return mainDao.boardListCount(sqlSession);
	}
	
	// List 불러오기
	public List<BoardDTO> boardList(PageInfo pi){
		return mainDao.boardList(sqlSession, pi);
	}
	
}
