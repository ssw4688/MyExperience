package com.farmer.app.memberProgram.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class MemberProgramDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public MemberProgramDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
}
