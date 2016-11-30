package com.pyeon2.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pyeon2.vo.UserMemVO;

@Repository
public class CusLoginDAOImpl implements CusLoginDAO {

	@Autowired
	private SqlSession session;
	
	private static String namespace="com.pyeon2.mappers.CusLoginMapper";
	
	@Override
	public void memberJoin(UserMemVO vo) throws Exception {
		session.insert(namespace + ".memberJoin", vo);
	}

	@Override
	public void memberRole(UserMemVO vo) throws Exception {
		session.insert(namespace+ ".memberRole", vo);
	}

	@Override
	public List<UserMemVO> getId(UserMemVO vo) throws Exception {
		return session.selectList(namespace + ".getId", vo);
	}

	@Override
	public List<UserMemVO> getPwd(UserMemVO vo) throws Exception {
		return session.selectList(namespace + ".getPwd", vo);
	}

	@Override
	public void memberJoin2(UserMemVO vo) throws Exception {
		session.insert(namespace + ".memberJoin2", vo);
	}

}
