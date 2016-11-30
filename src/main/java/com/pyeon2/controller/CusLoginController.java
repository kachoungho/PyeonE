package com.pyeon2.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pyeon2.service.CusLoginService;
import com.pyeon2.vo.UserMemVO;

@Controller
public class CusLoginController {

	@Autowired
	private CusLoginService loginService;
	/*cus_login*/
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginGET() {
		return "login/cus_login2";
	}

	@RequestMapping(value = "cus_join", method = RequestMethod.POST)
	public ModelAndView JoinPOST(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		UserMemVO vo = new UserMemVO();
		System.out.println("�Ӵ�");

		vo.setUserid(request.getParameter("userid"));
		vo.setUserpwd(request.getParameter("userpwd"));
		vo.setUsername(request.getParameter("username"));
		vo.setUserphone(request.getParameter("userphone"));
		vo.setUseremail(request.getParameter("useremail"));

		loginService.memberJoin(vo);
		loginService.memberJoin2(vo);
		loginService.memberRole(vo);
		mav.setViewName("login/cus_joinSuc");

		return mav;
	}

	@RequestMapping(value = "cus_loginSuc")
	public String loginSuc() {
		return "login/cus_loginSuc";
	}
	
	@RequestMapping(value="cus_idPwd")
	public String idPwdFing(){
		return "login/cus_idPwd";
	}
	
	
	@RequestMapping(value="cus_id")
	public ModelAndView idFind(HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		UserMemVO vo = new UserMemVO();
		
		vo.setUsername(request.getParameter("username"));
		vo.setUseremail(request.getParameter("useremail"));
		
		System.out.println("request.getParameter(username)" + request.getParameter("username"));
		System.out.println("request.getParameter(useremail)" + request.getParameter("useremail"));
		
		List<UserMemVO> list =  loginService.getId(vo);
		
		mav.addObject("id", list);
		mav.setViewName("login/cus_idPwd");
		
		return mav;
	}
	
	@RequestMapping(value="cus_pwd")
	public ModelAndView pwdFind(HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		UserMemVO vo = new UserMemVO();
		
		vo.setUsername(request.getParameter("username"));
		vo.setUseremail(request.getParameter("useremail"));
		
		List<UserMemVO> list =  loginService.getPwd(vo);
		
		mav.addObject("pwd", list);
		mav.setViewName("login/cus_idPwd");
		
		return mav;
	}
}
