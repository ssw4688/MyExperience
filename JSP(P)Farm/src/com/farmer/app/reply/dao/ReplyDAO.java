package com.farmer.app.reply.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class ReplyDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public ReplyDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	   }
}
