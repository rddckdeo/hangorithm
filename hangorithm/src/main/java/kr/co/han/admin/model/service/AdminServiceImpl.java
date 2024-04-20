package kr.co.han.admin.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.han.admin.model.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	AdminDAO adminDao;
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
}
