package com.koreait.app.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Result;

public class ReplyFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		doProcess(req, resp);
	}
		
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = requestURI.substring(contextPath.length());
		Result result = null;
		
		if(target.equals("/reply/listOk.re")) {
			rusult = new ListOkController().execute(req,resp);
		
		}else if(target.equals("/reply/writeOk.re")) {
			new WriteOkController().execute(req,resp);
			
		}else if(target.equals("/reply/delete.re")) {
			new DeleteController().execute(req,resp);
		}
	}
}
