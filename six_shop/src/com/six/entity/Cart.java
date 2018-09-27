package com.six.entity;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	
	public List<CartItem> items = new ArrayList<>();
	
	
	public void add(CartItem item){
		items.add(item);
	}
	
	public double getTotals() {
		double totals=0;
		for(int i=0;i<items.size();i++) {
			CartItem ci =items.get(i);
			totals+=ci.getTotals();
		}
		return totals;
	}

	@Override
	public String toString() {
		return "Cart [items=" + items + "]";
	}

	public List<CartItem> getItems() {
		return items;
	}

	public void setItems(List<CartItem> items) {
		this.items = items;
	}
	

	



	
	
	


}
