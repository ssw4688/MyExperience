package com.farmer.app.alba;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmer.app.Result;

public class AlbaFrontController extends HttpServlet {
	
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
	    
	      if(target.equals("/alba/apply01.ab")) {//알바 신청상세페이지 1로 이동
	          
	       }
	      else if(target.equals("/alba/applyListOk.ab")) {//알바 목록페이지 들어갔을 때, DB에서 알바 전체목록 가져오기(SELECT)
		   		
	       }
	      else if(target.equals("/alba/viewCountOk.ab")) {//알바 목록페이지 조회순 정렬
		   		
	      }
	      else if(target.equals("/alba/registerOk.ab")) {//알바 목록페이지 가장최근등록일순 정렬
	    	  
	       }
	      else if(target.equals("/alba/deadlineOk.ab")) {//알바목록 최근 마감일로 정렬
		   		
	       }
	      else if(target.equals("/alba/apply02.ab")) {//알바 신청상세페이지2로 이동
	   		
	       }
	      else if(target.equals("/alba/applyCancel.ab")) {//알바 신청상세페이지2에서 취소 , 알바목록페이지로 이동
	    	  
	      }
	      else if(target.equals("/alba/albaWrite.ab")) { //알바 등록페이지로 이동
	    	  
	      }
	      else if(target.equals("/alba/albaWriteOk.ab")) { //알바 등록하기(INSERT)
	    	  
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