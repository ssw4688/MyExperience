package com.farmer.app.memberAlba.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class MemberAlbaDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public MemberAlbaDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
}
