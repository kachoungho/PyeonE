package com.pyeon2.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pyeon2.service.CustomerService;
import com.pyeon2.vo.GpsVO;
import com.pyeon2.vo.ItemVO;
import com.pyeon2.vo.NoticeReplVO;
import com.pyeon2.vo.ReqBoardVO;
import com.pyeon2.vo.SectorVO;
import com.pyeon2.vo.UserMemVO;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "customer", method = RequestMethod.GET)
	public String home() {
		return ".customer";
	}

	@RequestMapping(value = "customer/cus_search", method = RequestMethod.POST)
	public ModelAndView cus_searchPOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		ItemVO vo = new ItemVO();
		List<ItemVO> list;

		String item_name = request.getParameter("item_name");
		String area = request.getParameter("dong");
		vo.setItem_name("%" + item_name + "%");
		vo.setArea(area);

		if (area.equals("null")) {
			list = customerService.searchItem_name(vo);
			mav.addObject("list", list);
			mav.addObject("size", list.size());
		} else {
			list = customerService.searchItem(vo);
			mav.addObject("list", list);
			mav.addObject("size", list.size());
		}
		mav.setViewName(".customer.cus_search");

		return mav;
	}

	@RequestMapping(value = "customer/cus_map")
	public ModelAndView cus_mapPOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		GpsVO vo = new GpsVO();

		vo.setArea(request.getParameter("area"));

		List<GpsVO> list = customerService.getAddress(vo);

		mav.addObject("list", list);
		mav.setViewName(".customer.cus_map2");
		return mav;
	}

	@RequestMapping(value = "customer/cus_sector", method = RequestMethod.GET)
	public ModelAndView cus_sectorPOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		SectorVO vo = new SectorVO();
		List<SectorVO> list;

		String area = request.getParameter("area");
		vo.setArea(area);

		if (area.equals("판교")) {
			list = customerService.getSector_p(vo);
			mav.addObject("list", list);
			mav.setViewName(".customer.cus_pangyo");

		} else if (area.equals("정자")) {
			list = customerService.getSector_j(vo);
			mav.addObject("list", list);
			mav.setViewName(".customer.cus_jeongja");

		} else if (area.equals("야탑")) {
			list = customerService.getSector_y(vo);
			mav.addObject("list", list);
			mav.setViewName(".customer.cus_yatap");
		}

		return mav;
	}

	@RequestMapping(value = "customer/req_board/list", method = RequestMethod.GET)
	public ModelAndView ReqBoardlistGET() throws Exception {
		ModelAndView mav = new ModelAndView();

		List<ReqBoardVO> list = customerService.getReqBoardlist();
		mav.addObject("result", list);
		mav.setViewName(".customer.req_board_list");
		return mav;
	}

	@RequestMapping(value = "customer/req_board/list", method = RequestMethod.POST)
	public ModelAndView ReqBoardlistPOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();

		ReqBoardVO vo = new ReqBoardVO();

		vo.setTitle(request.getParameter("title"));
		vo.setItem_name(request.getParameter("item_name"));
		vo.setPosition(request.getParameter("position"));
		vo.setName(request.getParameter("name"));
		vo.setContant(request.getParameter("contant"));

		customerService.writeReq(vo);
		List<ReqBoardVO> list = customerService.getReqBoardlist();
		mav.addObject("result", list);
		mav.setViewName(".customer.req_board_listCall");
		return mav;
	}

	@RequestMapping(value = "customer/req_board/write", method = RequestMethod.POST)
	public ModelAndView ReqBoardWritePOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();

		UserMemVO vo = new UserMemVO();

		String id = request.getParameter("id");

		vo.setUsername(customerService.getName(id));
		mav.addObject("name", vo.getUsername());
		mav.setViewName(".customer.req_board_write");
		return mav;
	}

	@RequestMapping(value = "customer/req_board/contant", method = RequestMethod.GET)
	public ModelAndView ReqBoardContantGET(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		ReqBoardVO vo = new ReqBoardVO();
		int result = 0;
		int req_num = 0;
		String select = "customer";

		String sessionid = request.getParameter("sessionid");
		String sessionid2 = (String) request.getAttribute("sessionid");
		vo.setReq_num(Integer.parseInt(request.getParameter("req_num")));

		String name = null;
		if (sessionid != null) {
			name = customerService.getName(sessionid);
		} else if (sessionid2 != null) {
			name = customerService.getName(sessionid2);
		}

		List<ReqBoardVO> list = customerService.getReqBoardContant(vo);
		if (name.equals(list.get(0).getName())) {
			result = 1;
		} else {
			result = 2;
		}
		
		req_num = vo.getReq_num();

		mav.addObject("select", select);
		mav.addObject("req_num", req_num);
		mav.addObject("result", result);
		mav.addObject("list", list);
		mav.setViewName(".customer.req_board_contant");
		return mav;
	}

	@RequestMapping(value = "customer/req_board/modify", method = RequestMethod.POST)
	public ModelAndView ReqBoardModifyPOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();

		ReqBoardVO vo = new ReqBoardVO();
		vo.setReq_num(Integer.parseInt(request.getParameter("req_num")));

		List<ReqBoardVO> list = customerService.getReqBoardContant(vo);

		mav.addObject("list", list);
		mav.setViewName(".customer.req_board_modify");
		return mav;
	}

	@RequestMapping(value = "customer/req_board/update", method = RequestMethod.POST)
	public ModelAndView ReqBoardUpdatePOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();

		ReqBoardVO vo = new ReqBoardVO();
		vo.setReq_num(Integer.parseInt(request.getParameter("req_num")));
		vo.setTitle(request.getParameter("title"));
		vo.setContant(request.getParameter("contant"));
		vo.setItem_name(request.getParameter("item_name"));
		vo.setPosition(request.getParameter("position"));
		customerService.reqBoardupdate(vo);

		String id = request.getParameter("id");
		request.setAttribute("sessionid", id);
		request.setAttribute("req_num", vo.getReq_num());

		mav = ReqBoardContantGET(request);
		return mav;
	}

	@RequestMapping(value = "customer/req_board/delete", method = RequestMethod.POST)
	public ModelAndView ReqBoardDeletePOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		ReqBoardVO vo = new ReqBoardVO();

		vo.setReq_num(Integer.parseInt(request.getParameter("req_num")));
		customerService.reqBoardDelete(vo);

		mav = ReqBoardlistGET();
		return mav;
	}

	@RequestMapping("customer/cus_hit")
	public ModelAndView cus_hitSum() throws Exception {
		ModelAndView mav = new ModelAndView();
		ItemVO vo = new ItemVO();
		List<ItemVO> list1, list2, list3, list4;

		list1 = customerService.getHitSum_s();
		list2 = customerService.getHitSum_i();
		list3 = customerService.getHitSum_d();
		list4 = customerService.getHitSum_a();
		mav.addObject("result1", list1);
		mav.addObject("result2", list2);
		mav.addObject("result3", list3);
		mav.addObject("result4", list4);
		mav.setViewName(".customer.cus_hit");

		return mav;
	}

	@RequestMapping(value = "customer/req_board/cus_item_req_board_repl_write", method=RequestMethod.POST)
	public ResponseEntity<String> reqBoardReplRegister(@RequestBody NoticeReplVO vo) throws Exception {
		ResponseEntity<String> entity = null;
		
		try {
			customerService.reqBoardReplWrite(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value = "customer/req_board/cus_item_req_board_repl_list/{bno}", method=RequestMethod.GET)
	public ResponseEntity<List<NoticeReplVO>> reqBoardReplList(@PathVariable("bno")int bno) {
		ResponseEntity<List<NoticeReplVO>> entity = null;
		try {
			entity = new ResponseEntity<>(customerService.reqBoardReplList(bno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "customer/req_board/cus_item_req_board_repl_delete", method=RequestMethod.POST)
	public ResponseEntity<String> reqBoardReplDelete(@RequestBody NoticeReplVO vo){
		ResponseEntity<String> entity = null;
		
		try {
			customerService.reqBoardReplDelete(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
