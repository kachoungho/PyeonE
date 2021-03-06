package com.pyeon2.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pyeon2.vo.GpsVO;
import com.pyeon2.vo.ItemVO;
import com.pyeon2.vo.NoticeReplVO;
import com.pyeon2.vo.ReqBoardVO;
import com.pyeon2.vo.SectorVO;
import com.pyeon2.vo.UserMemVO;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "com.pyeon2.mappers.customerMapper";

	@Override
	public List<ItemVO> searchItem(ItemVO vo) throws Exception {
		return session.selectList(namespace + ".searchItem", vo);
	}

	@Override
	public List<ItemVO> searchItem_name(ItemVO vo) throws Exception {
		return session.selectList(namespace + ".searchItem_name", vo);
	}

	@Override
	public List<GpsVO> getAddress(SectorVO vo) throws Exception {
		return session.selectList(namespace + ".getAddress", vo);
	}

	@Override
	public List<SectorVO> getSector(SectorVO vo) throws Exception {
		return session.selectList(namespace + ".getSector", vo);
	}

	@Override
	public List<ReqBoardVO> getReqBoardlist() throws Exception {
		return session.selectList(namespace + ".getReqBoardlist");
	}

	@Override
	public String getName(String id) throws Exception {
		return session.selectOne(namespace + ".getName", id);
	}

	@Override
	public void writeReq(ReqBoardVO vo) throws Exception {
		session.insert(namespace + ".writeReq", vo);
	}

	@Override
	public List<ReqBoardVO> getReqBoardContant(ReqBoardVO vo) throws Exception {
		return session.selectList(namespace + ".getReqBoardContant", vo);
	}

	@Override
	public void reqBoardupdate(ReqBoardVO vo) throws Exception {
		session.update(namespace + ".reqBoardupdate", vo);
	}

	@Override
	public void reqBoardDelete(ReqBoardVO vo) throws Exception {
		session.delete(namespace + ".reqBoardDelete", vo);
	}

	@Override
	public List<ItemVO> getHitSum_s() throws Exception {
		return session.selectList(namespace + ".getHitSum_s");
	}

	@Override
	public List<ItemVO> getHitSum_i() throws Exception {
		return session.selectList(namespace + ".getHitSum_i");
	}

	@Override
	public List<ItemVO> getHitSum_d() throws Exception {
		return session.selectList(namespace + ".getHitSum_d");
	}

	@Override
	public List<ItemVO> getHitSum_a() throws Exception {
		return session.selectList(namespace + ".getHitSum_a");
	}

	@Override
	public List<NoticeReplVO> reqBoardReplList(int bno) throws Exception {
		return session.selectList(namespace + ".reqBoardReplList", bno);
	}

	@Override
	public void reqBoardReplWrite(NoticeReplVO vo) throws Exception {
		session.insert(namespace + ".reqBoardReplWrite", vo);
	}

	@Override
	public void reqBoardReplUpdate(NoticeReplVO vo) throws Exception {
		session.update(namespace + ".reqBoardReplUpdate", vo);
	}

	@Override
	public void reqBoardReplDelete(NoticeReplVO vo) throws Exception {
		session.delete(namespace + ".reqBoardReplDelete", vo);
	}
}
