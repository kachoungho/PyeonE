package com.pyeon2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pyeon2.dao.CustomerDAO;
import com.pyeon2.vo.GpsVO;
import com.pyeon2.vo.ItemVO;
import com.pyeon2.vo.NoticeReplVO;
import com.pyeon2.vo.ReqBoardVO;
import com.pyeon2.vo.SectorVO;
import com.pyeon2.vo.UserMemVO;

@Repository
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO cusDao;

	@Override
	public List<ItemVO> searchItem(ItemVO vo) throws Exception {
		return cusDao.searchItem(vo);
	}

	@Override
	public List<ItemVO> searchItem_name(ItemVO vo) throws Exception {
		return cusDao.searchItem_name(vo);
	}

	@Override
	public List<GpsVO> getAddress(SectorVO vo) throws Exception {
		return cusDao.getAddress(vo);
	}

	@Override
	public List<SectorVO> getSector(SectorVO vo) throws Exception {
		return cusDao.getSector(vo);
	}

	@Override
	public List<ReqBoardVO> getReqBoardlist() throws Exception {
		return cusDao.getReqBoardlist();
	}

	@Override
	public String getName(String id) throws Exception {
		return cusDao.getName(id);
	}

	@Override
	public void writeReq(ReqBoardVO vo) throws Exception {
		cusDao.writeReq(vo);
	}

	@Override
	public List<ReqBoardVO> getReqBoardContant(ReqBoardVO vo) throws Exception {
		return cusDao.getReqBoardContant(vo);
	}

	@Override
	public void reqBoardupdate(ReqBoardVO vo) throws Exception {
		cusDao.reqBoardupdate(vo);
	}

	@Override
	public void reqBoardDelete(ReqBoardVO vo) throws Exception {
		cusDao.reqBoardDelete(vo);
	}

	@Override
	public List<ItemVO> getHitSum_s() throws Exception {
		return cusDao.getHitSum_s();
	}

	@Override
	public List<ItemVO> getHitSum_i() throws Exception {
		return cusDao.getHitSum_i();
	}

	@Override
	public List<ItemVO> getHitSum_d() throws Exception {
		return cusDao.getHitSum_d();
	}

	@Override
	public List<ItemVO> getHitSum_a() throws Exception {
		return cusDao.getHitSum_a();
	}

	@Override
	public List<NoticeReplVO> reqBoardReplList(int bno) throws Exception {
		return cusDao.reqBoardReplList(bno);
	}

	@Override
	public void reqBoardReplWrite(NoticeReplVO vo) throws Exception {
		cusDao.reqBoardReplWrite(vo);
	}

	@Override
	public void reqBoardReplUpdate(NoticeReplVO vo) throws Exception {
		cusDao.reqBoardReplUpdate(vo);
	}

	@Override
	public void reqBoardReplDelete(NoticeReplVO vo) throws Exception {
		cusDao.reqBoardReplDelete(vo);
	}
}
