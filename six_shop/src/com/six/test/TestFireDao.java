package com.six.test;

import java.util.List;

import com.six.dao.FireproDao;
import com.six.dao.impl.FireproDaoImpl;
import com.six.entity.Firepro;

public class TestFireDao {

	
	public static void main(String[] args) {
		
		FireproDao firedao = new FireproDaoImpl();
		List<Firepro> listfire = firedao.findAll();
		
		for (Firepro firepro : listfire) {
			System.out.println(firepro);
			
		}
		
	}
}
