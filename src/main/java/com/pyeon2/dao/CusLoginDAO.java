package com.pyeon2.dao;

import java.util.List;

import com.pyeon2.vo.UserMemVO;

public interface CusLoginDAO {

	// 회원가입 처리
		public void memberJoin(UserMemVO vo) throws Exception;
		
		// 회원가입시 아이디 비번 추가 처리(p2_member 에 입력)
		public void memberJoin2(UserMemVO vo) throws Exception;

		// 신규회원 권한 주입
		public void memberRole(UserMemVO vo) throws Exception;

		// 아이디 찾기
		public List<UserMemVO> getId(UserMemVO vo) throws Exception;

		// 비밀번호 찾기
		public List<UserMemVO> getPwd(UserMemVO vo) throws Exception;
}
