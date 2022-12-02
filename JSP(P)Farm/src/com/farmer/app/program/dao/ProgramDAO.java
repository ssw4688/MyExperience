package com.farmer.app.program.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class ProgramDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public ProgramDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	   }
}
