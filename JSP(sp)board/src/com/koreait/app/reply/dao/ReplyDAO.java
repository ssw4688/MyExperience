package com.koreait.app.reply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.reply.vo.ReplyVO;
import com.koreait.mybatis.config.MyBatisConfig;

public class ReplyDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public ReplyDAO() {
	      sqlSession = sqlSessionFactory.openSession(true);
	   }
	   
	   public List<ReplyVO> selectAll(int boardNumber) {
		  return sqlSession.selectList("Reply.selectAll", boardNumber);
	   }
	   
	   public void insert(ReplyVO replyVO) {
		   sqlSession.insert("Reply.insert", replyVO);
	   }
	   
	   public void delete(int boardNumber) {
		   sqlSession.delete("Reply.delete", boardNumber);
	   }
}
