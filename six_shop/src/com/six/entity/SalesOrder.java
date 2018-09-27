package com.six.entity;

import java.sql.Timestamp;

public class SalesOrder {

	
	private Integer id;
	private User user;
	
	private Timestamp odate;
	
	private Cart cart;
	
	private int status;
	
	

	public SalesOrder() {
		super();
	}



	public SalesOrder(Integer id, User user, Timestamp odate, Cart cart, int status) {
		super();
		this.id = id;
		this.user = user;
		this.odate = odate;
		this.cart = cart;
		this.status = status;
	}



	public SalesOrder(User user, Cart cart, int status) {
		super();
		this.user = user;
		this.cart = cart;
		this.status = status;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public Timestamp getOdate() {
		return odate;
	}



	public void setOdate(Timestamp odate) {
		this.odate = odate;
	}



	public Cart getCart() {
		return cart;
	}



	public void setCart(Cart cart) {
		this.cart = cart;
	}



	public int getStatus() {
		return status;
	}



	public void setStatus(int status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "SalesOrder [id=" + id + ", user=" + user + ", odate=" + odate + ", cart=" + cart + ", status=" + status
				+ "]";
	}

	
	
	
}
