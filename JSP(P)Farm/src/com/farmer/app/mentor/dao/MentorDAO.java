package com.farmer.app.mentor.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class MentorDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public MentorDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	   }
}
