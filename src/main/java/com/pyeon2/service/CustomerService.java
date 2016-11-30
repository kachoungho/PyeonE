package com.pyeon2.service;

import java.util.List;

import com.pyeon2.vo.GpsVO;
import com.pyeon2.vo.ItemVO;
import com.pyeon2.vo.ReqBoardVO;
import com.pyeon2.vo.SectorVO;
import com.pyeon2.vo.UserMemVO;

public interface CustomerService {
	// 물품 이름과 지점명으로 검색
	public List<ItemVO> searchItem(ItemVO vo) throws Exception;

	// 물품 이름으로 검색
	public List<ItemVO> searchItem_name(ItemVO vo) throws Exception;

	// 주소검색
	public List<GpsVO> getAddress(GpsVO vo) throws Exception;

	// 아이템 섹터 가져오기(판교)
	public List<SectorVO> getSector_p(SectorVO vo) throws Exception;

	// 아이템 섹터 가져오기(정자)
	public List<SectorVO> getSector_j(SectorVO vo) throws Exception;

	// 아이템 섹터 가져오기(야탑)
	public List<SectorVO> getSector_y(SectorVO vo) throws Exception;

	// 재고 요청 게시판 리스트 불러오기
	public List<ReqBoardVO> getReqBoardlist() throws Exception;

	// 로그인한 유저의 이름 가져오기
	public String getName(String id) throws Exception;

	// 재고 요청 게시판 글쓰기
	public void writeReq(ReqBoardVO vo) throws Exception;

	// 재고 요청 게시글 자세히 보기
	public List<ReqBoardVO> getReqBoardContant(ReqBoardVO vo) throws Exception;

	// 재고 요청 게시글 수정
	public void reqBoardupdate(ReqBoardVO vo) throws Exception;

	// 재고 요청 게시글 삭제
	public void reqBoardDelete(ReqBoardVO vo) throws Exception;

	// 인기 상품 가져오기(스낵)
	public List<ItemVO> getHitSum_s() throws Exception;

	// 인기 상품 가져오기(인스턴트)
	public List<ItemVO> getHitSum_i() throws Exception;

	// 인기 상품 가져오기(음료)
	public List<ItemVO> getHitSum_d() throws Exception;

	// 인기 상품 가져오기(주류)
	public List<ItemVO> getHitSum_a() throws Exception;
}
