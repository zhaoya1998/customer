package com.zhaoya.service.impl;

import java.util.List;

import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhaoya.dao.CustomerDao;
import com.zhaoya.pojo.Customer;
import com.zhaoya.pojo.Vo;
import com.zhaoya.service.CustomerService;

@Service(interfaceClass = CustomerService.class)
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerDao customerDao;

	@Override
	public PageInfo<Customer> list(Vo vo, int pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 3);
        List<Customer> list=customerDao.getCusList(vo);
		PageInfo<Customer> info=new PageInfo<Customer>(list);
		return info;
	}
	
	@Override
	public int add(Customer customer) {
		return customerDao.add(customer);
	}

	@Override
	public int update(Customer customer) {
		return customerDao.update(customer);
	}

	@Override
	public Customer getById(Integer id) {
		return customerDao.getById(id);
	}

	@Override
	public int delete(Integer id) {
		return customerDao.delete(id);
	}

	@Override
	public Customer validByRoomId(Integer roomId) {
		return customerDao.validByRoomId(roomId);
	}

	@Override
	public int getRoomId(String roomNumber) {
		return customerDao.getRoomId(roomNumber);
	}

}
