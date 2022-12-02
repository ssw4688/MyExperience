package com.farmer.app.noticeFile.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.farmer.mybatis.config.MyBatisConfig;

public class NoticeFileDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public NoticeFileDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	   }
}
