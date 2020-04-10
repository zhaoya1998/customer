package com.zhaoya.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

public class Room implements Serializable{

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String roomNumber;
	private BigDecimal price;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Room(Integer id, String roomNumber, BigDecimal price) {
		super();
		this.id = id;
		this.roomNumber = roomNumber;
		this.price = price;
	}
	public Room() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
