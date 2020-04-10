package com.zhaoya.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Customer implements Serializable {

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private String cusName;
	private String cusIdCard;
	private Integer roomId;
	private Integer peopleNumber;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date cusDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date leaceDate;
	private Room room;
	private BigDecimal totalPrice;
	private Integer total;

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCusName() {
		return cusName;
	}

	public void setCusName(String cusName) {
		this.cusName = cusName;
	}

	public String getCusIdCard() {
		return cusIdCard;
	}

	public void setCusIdCard(String cusIdCard) {
		this.cusIdCard = cusIdCard;
	}

	public Integer getRoomId() {
		return roomId;
	}

	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}

	public Integer getPeopleNumber() {
		return peopleNumber;
	}

	public void setPeopleNumber(Integer peopleNumber) {
		this.peopleNumber = peopleNumber;
	}

	public Date getCusDate() {
		return cusDate;
	}

	public void setCusDate(Date cusDate) {
		this.cusDate = cusDate;
	}

	public Date getLeaceDate() {
		return leaceDate;
	}

	public void setLeaceDate(Date leaceDate) {
		this.leaceDate = leaceDate;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cusName == null) ? 0 : cusName.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Customer other = (Customer) obj;
		if (cusName == null) {
			if (other.cusName != null)
				return false;
		} else if (!cusName.equals(other.cusName))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", cusName=" + cusName + ", cusIdCard=" + cusIdCard + ", roomId=" + roomId
				+ ", peopleNumber=" + peopleNumber + ", cusDate=" + cusDate + ", leaceDate=" + leaceDate + ", room="
				+ room + ", total=" + total + "]";
	}

}
