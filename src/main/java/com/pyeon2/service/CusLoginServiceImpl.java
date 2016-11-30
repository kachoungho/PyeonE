package com.pyeon2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pyeon2.dao.CusLoginDAO;
import com.pyeon2.vo.UserMemVO;

@Repository
public class CusLoginServiceImpl implements CusLoginService {

	@Autowired
	private CusLoginDAO loginDAO;
	
	@Override
	public void memberJoin(UserMemVO vo) throws Exception {
		loginDAO.memberJoin(vo);
	}

	@Override
	public void memberRole(UserMemVO vo) throws Exception {
		loginDAO.memberRole(vo);
	}

	@Override
	public List<UserMemVO> getId(UserMemVO vo) throws Exception {
		return loginDAO.getId(vo);
	}

	@Override
	public List<UserMemVO> getPwd(UserMemVO vo) throws Exception {
		return loginDAO.getPwd(vo);
	}

	@Override
	public void memberJoin2(UserMemVO vo) throws Exception {
		loginDAO.memberJoin2(vo);
	}

}
