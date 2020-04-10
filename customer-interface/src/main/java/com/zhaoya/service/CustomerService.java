package com.zhaoya.service;

import com.github.pagehelper.PageInfo;
import com.zhaoya.pojo.Customer;
import com.zhaoya.pojo.Vo;

public interface CustomerService {

	PageInfo<Customer> list(Vo vo, int pageNum);

	int add(Customer customer);

	int update(Customer customer);

	Customer getById(Integer id);

	int delete(Integer id);
	
	Customer validByRoomId(Integer roomId);

	int getRoomId(String roomNumber);

 
}
