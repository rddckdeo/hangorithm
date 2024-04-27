package kr.co.han.mypage.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.han.common.paging.PageInfo;
import kr.co.han.main.model.dto.BoardDTO;
import kr.co.han.member.model.dto.CompanyDTO;
import kr.co.han.mypage.model.dao.MypageDAO;

@Service
public class MypageServiceImpl {
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	MypageDAO mypageDao;
	// 내정보 수정
	public int update(Map<String,Object> data) {
		return mypageDao.update(sqlSession, data);
	}
	// 회사 정보 가져오기
	public CompanyDTO companySelect(int no) {
		return mypageDao.companySelect(sqlSession, no);
	}
	// 내 문의
	public List<BoardDTO> selectBoard(int no, PageInfo pi){
		return mypageDao.selectBoard(sqlSession, no, pi);
	}
	public int selectBoardListCount(int no) {
		return mypageDao.selectBoardListCount(sqlSession, no);
	}
	// 내 기술지원
	public List<BoardDTO> selectTech(int no, PageInfo pi){
		return mypageDao.selectTech(sqlSession, no, pi);
	}
	public int selectTechListCount(int no) {
		return mypageDao.selectTechListCount(sqlSession, no);
	}
	
}
