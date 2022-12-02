package com.koreait.app.reply;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.reply.dao.ReplyDAO;
import com.koreait.app.reply.vo.ReplyVO;

public class DeleteController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ReplyVO replyVO = new ReplyVO();
		ReplyDAO replyDAO = new ReplyDAO();
		
		Result result = new Result();
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		
		replyDAO.select(boardNumber).stream().map(file -> req.getSession().getServletContext().getRealPath("/") + "upload/" + file.getFileSystemName())
		.map(path -> new File(path)).forEach(f -> f.delete());
		
		boardDAO.delete(boardNumber);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/board/listOk.bo");
		return result;
		
		
	}
}
