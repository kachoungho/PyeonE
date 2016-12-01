package com.pyeon2.service;

import java.util.List;

import com.pyeon2.vo.GpsVO;
import com.pyeon2.vo.ItemVO;
import com.pyeon2.vo.NoticeReplVO;
import com.pyeon2.vo.ReqBoardVO;
import com.pyeon2.vo.SectorVO;
import com.pyeon2.vo.UserMemVO;

public interface CustomerService {
	// ��ǰ �̸��� ���������� �˻�
	public List<ItemVO> searchItem(ItemVO vo) throws Exception;

	// ��ǰ �̸����� �˻�
	public List<ItemVO> searchItem_name(ItemVO vo) throws Exception;

	// �ּҰ˻�
	public List<GpsVO> getAddress(GpsVO vo) throws Exception;

	// ������ ���� ��������(�Ǳ�)
	public List<SectorVO> getSector_p(SectorVO vo) throws Exception;

	// ������ ���� ��������(����)
	public List<SectorVO> getSector_j(SectorVO vo) throws Exception;

	// ������ ���� ��������(��ž)
	public List<SectorVO> getSector_y(SectorVO vo) throws Exception;

	// ��� ��û �Խ��� ����Ʈ �ҷ�����
	public List<ReqBoardVO> getReqBoardlist() throws Exception;

	// �α����� ������ �̸� ��������
	public String getName(String id) throws Exception;

	// ��� ��û �Խ��� �۾���
	public void writeReq(ReqBoardVO vo) throws Exception;

	// ��� ��û �Խñ� �ڼ��� ����
	public List<ReqBoardVO> getReqBoardContant(ReqBoardVO vo) throws Exception;

	// ��� ��û �Խñ� ����
	public void reqBoardupdate(ReqBoardVO vo) throws Exception;

	// ��� ��û �Խñ� ����
	public void reqBoardDelete(ReqBoardVO vo) throws Exception;

	// �α� ��ǰ ��������(����)
	public List<ItemVO> getHitSum_s() throws Exception;

	// �α� ��ǰ ��������(�ν���Ʈ)
	public List<ItemVO> getHitSum_i() throws Exception;

	// �α� ��ǰ ��������(����)
	public List<ItemVO> getHitSum_d() throws Exception;

	// �α� ��ǰ ��������(�ַ�)
	public List<ItemVO> getHitSum_a() throws Exception;
	
	//상품 신청 댓글 리스트
	public List<NoticeReplVO> reqBoardReplList(int bno) throws Exception;
	
	//상품 신청 댓글 쓰기
	public void reqBoardReplWrite(NoticeReplVO vo) throws Exception;
	
	//상품 신청 댓글 수정
	public void reqBoardReplUpdate(NoticeReplVO vo) throws Exception;
	
	//상품 신청 댓글 삭제
	public void reqBoardReplDelete(NoticeReplVO vo) throws Exception;
}
