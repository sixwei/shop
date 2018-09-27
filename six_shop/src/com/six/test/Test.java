package com.six.test;

public class Test {

	
	public static void main(String[] args) {
		int a =1;
		int b=add(a);
		
		
		String admin = "admin";
		
		
		System.out.println(a);
		System.out.println("-------");
		System.out.println(b);
		
		
		String Admin = add(admin);
		
		System.out.println(admin);
		System.out.println("-------");
		System.out.println(Admin);
		System.out.println("-------");
		System.out.println("-------");
		
		Person p = new Student("lisi");
		
		p.showName();
		
		
		char cs=90;
		
		
		
		
		System.out.println("zheshi"+cs);
		
		
	
	}
	
	public static int add(int a) {
		return ++a;
	}
	
	public static String add(String admin) {
		return admin+"hello";
	}
}
