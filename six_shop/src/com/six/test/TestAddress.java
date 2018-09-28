package com.six.test;

import com.six.dao.AddressDao;
import com.six.dao.impl.AddressDaoImpl;

public class TestAddress {
	
	public static void main(String[] args) {
		
		
		AddressDao addredao = new AddressDaoImpl();
		addredao.addAddre(1, "河北省衡水市武义县");
	}

}
