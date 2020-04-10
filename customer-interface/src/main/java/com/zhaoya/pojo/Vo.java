package com.zhaoya.pojo;

import java.io.Serializable;

public class Vo implements Serializable {

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;

	private String name;
	private String roomNumber;
	private String idCard;
	private String cusDate;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getCusDate() {
		return cusDate;
	}
	public void setCusDate(String cusDate) {
		this.cusDate = cusDate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Vo(String name, String roomNumber, String idCard, String cusDate) {
		super();
		this.name = name;
		this.roomNumber = roomNumber;
		this.idCard = idCard;
		this.cusDate = cusDate;
	}
	public Vo() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
