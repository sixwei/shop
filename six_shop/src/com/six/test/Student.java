package com.six.test;

public class Student extends Person {
	
	
	String name;
	
	
	public Student(String name) {
		this.name = name;
	}
	 public void showName() {
    	 System.out.println("student:"+name);
     }

}
