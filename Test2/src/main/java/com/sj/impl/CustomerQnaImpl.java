package com.sj.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sj.dao.CustomerQnaDao;
import com.sj.vo.CustomerQna;

@Repository
public class CustomerQnaImpl implements CustomerQnaDao{
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "mapper.CustomerQnaMapper";

	
	@Override
	public String getTime() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getTime");
	}

	@Override
	public List<CustomerQna> selectCusomerQnaList() {
		// TODO Auto-generated method stub
		
		List<CustomerQna> result = null;
		System.err.println("selectCusomerQnaList");
		result = sqlSession.selectList(namespace + ".selectCustomerQnaList");
		
		return result;
	}

}
