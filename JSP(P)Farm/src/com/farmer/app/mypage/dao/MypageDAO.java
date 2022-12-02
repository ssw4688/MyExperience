package com.farmer.app.mypage.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class MypageDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public MypageDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	   }
}
