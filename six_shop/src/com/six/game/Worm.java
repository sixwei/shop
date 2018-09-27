package com.six.game;

import java.util.LinkedList;

public class Worm {
	
	private LinkedList<Node> nodes = new LinkedList<>();
	
	private int dir;
	
	public static final int UP=-10;
	public static final int DOWN=10;
	public static final int LEFT=-1;
	public static final int RIGHT=1;
	
	
	/*
	 * ������һ����
	 */
	
	public Worm() {
		nodes.add(new Node(3,8));
		nodes.add(new Node(4,8));
		nodes.add(new Node(5,8));
		nodes.add(new Node(6,8));
		nodes.add(new Node(6,9));
		nodes.add(new Node(6,10));
		nodes.add(new Node(7,10));
		nodes.add(new Node(8,10));
		
		dir=RIGHT;
		
		
	}
	
	public Worm(LinkedList<Node> nodes) {
		this.nodes.clear();  
		this.nodes.addAll(nodes);
	}
	
	//����·����Ĭ�ϵķ��������·
	public void step() {
		Node node = nodes.getFirst();
		int i = node.getI()+dir/10;
		int j = node.getJ()+dir%10;
		node = new Node(i,j);
		nodes.addFirst(node);
		nodes.removeLast();
	}
	
	//�ı䷽�����·
	public void step(int dir) {
		if(this.dir==-dir) {
			throw new RuntimeException();
		}else {
			this.dir=dir;
			step();
		}
	}
	
	//�ж����ɵĽڵ��Ƿ������nodes��
	public boolean contains(int i,int j) {
		boolean contains = nodes.contains(new Node(i,j));
		
		return contains;
	}

	@Override
	public String toString() {
		return nodes.toString();
	}
	
	
	
	
	
	

}