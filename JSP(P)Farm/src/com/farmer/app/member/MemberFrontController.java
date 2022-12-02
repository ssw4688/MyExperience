package com.farmer.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmer.app.Result;

public class MemberFrontController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
	    String contextPath = req.getContextPath();
	    String target = requestURI.substring(contextPath.length());
	    Result result = null;
	    
	      if(target.equals("/member/checkIdOk.me")) {//아이디중복검사 실행(SELECT)
	          
	       }else if(target.equals("/member/join.me")) {//회원가입페이지 이동
	          
	       }else if(target.equals("/member/joinOk.me")) {//회원가입 실행(INSERT)
	          
	       }else if(target.equals("/member/login.me")) {//로그인페이지 이동
	          
	       }else if(target.equals("/member/loginOk.me")) {//로그인 실행(SELECT)
	          
	       }else if(target.equals("/member/findIdOk.me")) {//아이디 찾기 실행(SELECT)
	    	   
	       }else if(target.equals("/member/findPwOk.me")) {//비밀번호 찾기 실행(UPDATE)
	   		
	       }else if(target.equals("/member/logout.me")) {//로그아웃 (controller 필요)
	   
	       }
			   
		  
	    if(result != null) {
	         if(result.isRedirect()) {
	            resp.sendRedirect(result.getPath());
	         }else {
	            RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
	            dispatcher.forward(req, resp);
	         }
	    }
	}
}