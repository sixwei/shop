package com.six.dao;

import java.util.List;

import com.six.entity.CartItem;
import com.six.entity.SalesOrder;

public interface OrderDao {
	
	
	
	//�������ѹ��ﳵ�е����ݴ洢��salesItem�У������ﹲͬʹ�õ���CartItem��
	
	/*
	 * 
	 * �����ӵ����������ӹ�����Ѷ�����id�ó�����Ϊsalesitem�����
	 * ���Ӱѹ��ﳵ�е��������ӵ����ﳵ��
	 */
	
	
	public int  addOrder(SalesOrder order);
	public  void  addItem(CartItem item,int oid); 
	
	
	public void add(CartItem item,SalesOrder order);
	
	
	
	/*
	 * ��ѯ���еĶ���
	 */
	
	public  List<SalesOrder> find();
	
	
	/*
	 * �������ѹ��ﳵ�е����� ��ŵ�salesitem��
	 * 
	 */
	
	
	public void add(SalesOrder order);
	


}