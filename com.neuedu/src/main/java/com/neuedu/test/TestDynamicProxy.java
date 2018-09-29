package com.neuedu.test;

import com.neuedu.dynamicproxy.Myinvonation;
import com.neuedu.dynamicproxy.Rent;
import com.neuedu.dynamicproxy.You;

public class TestDynamicProxy {
	
	public static void main(String[] args) {
		You you  = new You();
		
		Myinvonation invonation = new Myinvonation();
		
		invonation.setObject(you);
		Rent rent = (Rent) invonation.getProxy();
		rent.rent();
	}
	
	

}
