package com.sj.dao;

import java.util.List;
import com.sj.vo.CustomerQna;

public interface CustomerQnaDao {
	public String getTime();
	public List<CustomerQna> selectCusomerQnaList();
}
