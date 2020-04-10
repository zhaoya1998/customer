package com.zhaoya.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.zhaoya.pojo.Customer;
import com.zhaoya.pojo.Vo;
import com.zhaoya.service.CustomerService;

@Controller
public class CustomerController {

	@Reference
	private CustomerService service;
	
	//��ѯ�б�
	@RequestMapping("list")
	public String list(HttpServletRequest request,Vo vo,@RequestParam(defaultValue = "1")int pageNum) {
		PageInfo<Customer> info=service.list(vo,pageNum);
		request.setAttribute("vo", vo);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("info", info);
		return "list";
	}
	
	// ��ת���ҳ��
	@RequestMapping("toAdd")
	public String toAdd() {
		return "add";
	}
	
	//ִ�����
	@RequestMapping("add")
	public String add(HttpServletRequest request, Customer customer, String roomNumber) {
		int roomId = service.getRoomId(roomNumber);
		Customer validByRoomId = service.validByRoomId(roomId); // �жϷ����Ƿ�ռ��
		if (validByRoomId != null) {
			request.setAttribute("error", "�÷����ѱ���");
			request.setAttribute("roomNumber", roomNumber);
			request.setAttribute("cus", customer);
			return "add";
		}
		customer.setRoomId(roomId);
		service.add(customer); // ���
		return "redirect:list";
	}
	
	@RequestMapping("delete")
	public String delete(Integer id) {
		service.delete(id); // ִ��ɾ��
		return "redirect:list";
	}
	
	//��ת�޸�ҳ��
	@RequestMapping("toUpdate")
	public String toUpdate(HttpServletRequest request, Integer id) {
		Customer byId = service.getById(id);
		request.setAttribute("cus", byId);
		return "update";
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request, Customer customer) {

		service.update(customer); // ִ���޸�
		return "redirect:list";
	}
}
