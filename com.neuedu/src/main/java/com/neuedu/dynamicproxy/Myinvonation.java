package com.neuedu.dynamicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class Myinvonation implements InvocationHandler {

	
	private Object object;
	
	public void setObject(Object object) {
		this.object = object;
	}
	
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		seeHose();
		method.invoke(object, args);
		pay();
		return null;
	}
	
	
	public Object getProxy() {
		return Proxy.newProxyInstance(this.getClass().getClassLoader(), object.getClass().getInterfaces(),this);
	}
	
	
	private void seeHose() {
		System.out.println("≤ª¥Ì");
	}
	
	private void pay() {
		System.out.println("¬Ú¡À");
	}

}
