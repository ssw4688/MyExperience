package com.farmer.app.localSpeciality.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class LocalSpecialityDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public LocalSpecialityDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	   }
}
