package com.sj.test2;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sj.dao.CustomerQnaDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:conf/dao-context.xml")
public class CustomerQnaTest {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Test
	public void testTime()throws Exception{
		System.out.println(sqlSessionTemplate.selectOne("mapper.CustomerQnaMapper.getTime"));
	}
	
	@Test
	public void testQuery() throws Exception{
		System.err.println(sqlSessionTemplate);
		List list = sqlSessionTemplate.selectList("mapper.CustomerQnaMapper.selectCustomerQnaList");
		
		if(list != null){
			int iList = list.size();
			for(int i=0; i<iList; i++){
				HashMap hm = (HashMap)list.get(i);
				System.out.println(">>" + hm.get("ASK_TITLE"));
			}
		}
	}

}
