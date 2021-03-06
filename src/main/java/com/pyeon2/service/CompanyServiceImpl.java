package com.pyeon2.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.pyeon2.dao.CompanyDAO;
import com.pyeon2.domain.Criteria;
import com.pyeon2.vo.CalendarMemoVO;
import com.pyeon2.vo.ComItemVO;
import com.pyeon2.vo.ItemVO;
import com.pyeon2.vo.MemberVO;
import com.pyeon2.vo.NoticeVO;
import com.pyeon2.vo.ReqBoardVO;
import com.pyeon2.vo.SectorVO;

@Repository
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyDAO comDao;
	
	@Override
	public List<ItemVO> orderList() throws Exception {
		return comDao.orderList();	
	}

	@Override
	public void updateItemCount(ItemVO vo) throws Exception {
		comDao.updateItemCount(vo);
	}

	@Override
	public void odertDelete(ItemVO vo) throws Exception {
		comDao.odertDelete(vo);
	}

	@Override
	public List<MemberVO> getAdminMember() throws Exception {
		return comDao.getAdminMember();
	}

	@Override
	public List<MemberVO> getPSMember(MemberVO Mvo) throws Exception {
		return comDao.getPSMember(Mvo);
	}

	@Override
	public void insertAdminMember(MemberVO Mvo) throws Exception {
		comDao.insertAdminMember(Mvo);
	}

	@Override
	public void insertPosition(MemberVO Mvo) throws Exception {
		comDao.insertPosition(Mvo);
	}

	@Override
	public List<ItemVO> areaItemList(ItemVO vo) throws Exception {
		return comDao.areaItemList(vo);
	}

	@Override
	public List<MemberVO> getMember(MemberVO Mvo) throws Exception {
		return comDao.getMember(Mvo);
	}

	@Override
	public void updateMember(MemberVO Mvo) throws Exception {
		comDao.updateMember(Mvo);
	}

	@Override
	public List<MemberVO> getAllMember() throws Exception {
		return comDao.getAllMember();
	}

	@Override
	public void deleteMember(MemberVO Mvo) throws Exception {
		comDao.deleteMember(Mvo);
	}
	
	@Override
	public List<ComItemVO> comItemListAll(Criteria cri) throws Exception {
		return comDao.comItemListAll(cri);
	}

	@Override
	public List<ComItemVO> comItemList(ComItemVO vo) throws Exception {
		return comDao.comItemList(vo);
	}

	@Override
	public void orderUpdate(ItemVO vo) throws Exception {
		comDao.orderUpdate(vo);
	}

	@Override
	public void deleteRole(MemberVO Mvo) throws Exception {
		comDao.deleteRole(Mvo);
	}
	
	@Override
	public int getAreaCount(ItemVO vo) throws Exception {
		return comDao.getAreaCount(vo);
	}

	@Override
	public int getComItemCount() throws Exception {
		return comDao.getComItemCount();
	}

	@Override
	public int getComItemCountCategory(String category) throws Exception {
		return comDao.getComItemCountCategory(category);
	}

	@Override
	public void updateOrderState(ItemVO vo) throws Exception {
		comDao.updateOrderState(vo);
	}
	
	@Override
	public List<NoticeVO> getnoticelist(NoticeVO Nvo) throws Exception {
		return comDao.getnoticelist(Nvo);
	}

	@Override
	public void noticewrite(NoticeVO Nvo) throws Exception {
		comDao.noticewrite(Nvo);
	}

	@Override
	public List<NoticeVO> getnoticecontant(NoticeVO Nvo) throws Exception {
		return comDao.getnoticecontant(Nvo);
	}

	@Override
	public void noticeupdate(NoticeVO Nvo) throws Exception {
		comDao.noticeupdate(Nvo);
	}

	@Override
	public void noticedelete(NoticeVO Nvo) throws Exception {
		comDao.noticedelete(Nvo);
	}
	
	@Override
	public List<NoticeVO> getNotConfirm() throws Exception {
		return comDao.getNotConfirm();
	}

	@Override
	public int getNotConfirmCount() throws Exception {
		return comDao.getNotConfirmCount();
	}

	@Override
	public void calendarMemoInsert(CalendarMemoVO vo) throws Exception {
		comDao.calendarMemoInsert(vo);
	}

	@Override
	public List<CalendarMemoVO> calendarMemoList(CalendarMemoVO vo) throws Exception {
		return comDao.calendarMemoList(vo);
	}

	@Override
	public List<CalendarMemoVO> calendarMemoSelect(CalendarMemoVO vo) throws Exception {
		return comDao.calendarMemoSelect(vo);
	}

	@Override
	public void calendarMemoDelete(CalendarMemoVO vo) throws Exception {
		comDao.calendarMemoDelete(vo);
	}
	
	@Override
	public String getNoticeCount(NoticeVO nvo) throws Exception {
		return comDao.getNoticeCount(nvo);
	}

	@Override
	public void newproduct(ComItemVO cvo) throws Exception {
		MultipartFile uploadfile = cvo.getFile();
        if (uploadfile != null) {
            String fileName = uploadfile.getOriginalFilename();
            try {
                File file = new File("C:/springProject/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/PyeonE/resources/item_image/" + fileName);
               int count = 0;
                while(file.exists()) {              
                      int indexes = fileName.lastIndexOf(".");
                      System.out.println("순서 = "+indexes);
                      String extension = fileName.substring(indexes);
                      System.out.println("확장자 = "+extension);
                      String newFileName = fileName.substring(0, indexes) + count + extension;
                      System.out.println("새 파일 이름 = "+newFileName);
                      fileName = newFileName;
                      file = new File("C:/springProject/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/PyeonE/resources/item_image/" + newFileName);
                      
                      count++;
                   }
                cvo.setItem_image(fileName); 
                  uploadfile.transferTo(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        System.out.println("vo " + cvo.getItem_image());
		
		
		comDao.newproduct(cvo);
	}

	@Override
	public String newproductcode1(ComItemVO cvo) throws Exception {
		return comDao.newproductcode1(cvo);
	}

	@Override
	public int newproductcode2(ComItemVO cvo) throws Exception {
		return comDao.newproductcode2(cvo);
	}

	@Override
	public List<ItemVO> newproductarea() throws Exception {
		return comDao.newproductarea();
	}

	@Override
	public void newproductareainsert(ItemVO vo) throws Exception {
		comDao.newproductareainsert(vo);
	}

	@Override
	public List<ReqBoardVO> getReqBoardList() throws Exception {
		return comDao.getReqBoardList();
	}

	@Override
	public List<ItemVO> drawPayGraph(ItemVO vo) throws Exception {
		return comDao.drawPayGraph(vo);
	}
	
	@Override
	public void newProductSector(SectorVO Svo) throws Exception {
		comDao.newProductSector(Svo);
	}
}
