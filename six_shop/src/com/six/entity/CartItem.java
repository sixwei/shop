package com.six.entity;

public class CartItem {
	
	private Product p;
	
	private int qty;
	
	
	public CartItem() {
		super();
	}


	public CartItem(Product p, int qty) {
		super();
		this.p = p;
		this.qty = qty;
	}
	
	


	public Product getP() {
		return p;
	}


	public void setP(Product p) {
		this.p = p;
	}


	public int getQty() {
		return qty;
	}


	public void setQty(int qty) {
		this.qty = qty;
	}
	
	public double getTotals() {
		return p.getNormalPrice()*qty;
	}


	@Override
	public String toString() {
		return "CartItem [p=" + p + ", qty=" + qty + "]";
	}

	
	

}
