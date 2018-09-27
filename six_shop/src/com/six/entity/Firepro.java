package com.six.entity;

public class Firepro {
	
	private int id;
	
	private Product p;
	
	private int qty;
	
	public Firepro() {
		super();
	}

	public Firepro(int id, Product p, int qty) {
		super();
		this.id = id;
		this.p = p;
		this.qty = qty;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Product getP() {
		return p;
	}

	public void setP(Product p) {
		this.p = p;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	@Override
	public String toString() {
		return "Firepro [id=" + id + ", p=" + p + ", qty=" + qty + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((p == null) ? 0 : p.hashCode());
		result = prime * result + qty;
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
		Firepro other = (Firepro) obj;
		if (id != other.id)
			return false;
		if (p == null) {
			if (other.p != null)
				return false;
		} else if (!p.equals(other.p))
			return false;
		if (qty != other.qty)
			return false;
		return true;
	}
	
	
	

}
