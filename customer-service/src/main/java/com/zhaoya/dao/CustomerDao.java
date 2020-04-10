package com.zhaoya.dao;

import java.util.List;

import com.zhaoya.pojo.Customer;
import com.zhaoya.pojo.Vo;

public interface CustomerDao {

	List<Customer> getCusList(Vo vo);

	int add(Customer customer);

	int update(Customer customer);

	Customer getById(Integer id);

	int delete(Integer id);

	Customer validByRoomId(Integer roomId);

	int getRoomId(String roomNumber);

}
