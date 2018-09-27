package com.six.game;

public class Node {
	
	private int i;
	
	private int j;
	
	
	public Node() {
		super();
	}
	public Node(int i, int j) {
		super();
		this.i = i;
		this.j = j;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	public int getJ() {
		return j;
	}

	public void setJ(int j) {
		this.j = j;
	}

	@Override
	public String toString() {
		return "Node [i=" + i + ", j=" + j + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + i;
		result = prime * result + j;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Node other = (Node) obj;
		if (i != other.i)
			return false;
		if (j != other.j)
			return false;
		return true;
	}

	
	
	

}
