package com.farmer.app.cropsInfo.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class CropsInfoDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public CropsInfoDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
}
