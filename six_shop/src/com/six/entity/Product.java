package com.six.entity;



public class Product {
	private int Id;
	private String name;
	private String Descr;
	private double NormalPrice;
	private double MemberPrice;
	private String Pdate;
	private int CateGoryid;
	private Category Category1;
	
	

	public Product() {
	   super();
	}
	public Product(int id, String name, String descr, double normalPrice, double memberPrice, String pdate,
			int cateGoryid) {
		super();
		Id = id;
		this.name = name;
		Descr = descr;
		NormalPrice = normalPrice;
		MemberPrice = memberPrice;
		Pdate = pdate;
		CateGoryid = cateGoryid;
	}
	public Product(int id, String name, String descr, double normalPrice, double memberPrice, String pdate,
			int cateGoryid, Category category1) {
		super();
		Id = id;
		this.name = name;
		Descr = descr;
		NormalPrice = normalPrice;
		MemberPrice = memberPrice;
		Pdate = pdate;
		CateGoryid = cateGoryid;
		Category1 = category1;
	}
	public Product(String name, String descr, double normalPrice, String pdate, Category category1) {
		super();
		this.name = name;
		Descr = descr;
		NormalPrice = normalPrice;
		Pdate = pdate;
		Category1 = category1;
		CateGoryid=category1.getId();
	}
	public Product(String name, String descr, double normalPrice, String pdate, int cateGoryid, Category category1) {
		super();
		this.name = name;
		Descr = descr;
		NormalPrice = normalPrice;
		Pdate = pdate;
		CateGoryid = cateGoryid;
		Category1 = category1;
	}
	public Product(String name, String descr, double normalPrice,  int cateGoryid) {
		super();
		this.name = name;
		Descr = descr;
		NormalPrice = normalPrice;
	
		CateGoryid = cateGoryid;

	}
	@Override
	public String toString() {
		return "Product [Id=" + Id + ", name=" + name + ", Descr=" + Descr + ", NormalPrice=" + NormalPrice
				+ ", MemberPrice=" + MemberPrice + ", Pdate=" + Pdate + ", CateGoryid=" + CateGoryid + ", Category1="
				+ Category1 + "]";
	}
	public Product(String name, String descr, double normalPrice,  Category category1) {
		super();
		this.name = name;
		Descr = descr;
		NormalPrice = normalPrice;
		Category1 = category1;
		CateGoryid=category1.getId();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + CateGoryid;
		result = prime * result + ((Category1 == null) ? 0 : Category1.hashCode());
		result = prime * result + ((Descr == null) ? 0 : Descr.hashCode());
		result = prime * result + Id;
		long temp;
		temp = Double.doubleToLongBits(MemberPrice);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(NormalPrice);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((Pdate == null) ? 0 : Pdate.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
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
		Product other = (Product) obj;
		if (CateGoryid != other.CateGoryid)
			return false;
		if (Category1 == null) {
			if (other.Category1 != null)
				return false;
		} else if (!Category1.equals(other.Category1))
			return false;
		if (Descr == null) {
			if (other.Descr != null)
				return false;
		} else if (!Descr.equals(other.Descr))
			return false;
		if (Id != other.Id)
			return false;
		if (Double.doubleToLongBits(MemberPrice) != Double.doubleToLongBits(other.MemberPrice))
			return false;
		if (Double.doubleToLongBits(NormalPrice) != Double.doubleToLongBits(other.NormalPrice))
			return false;
		if (Pdate == null) {
			if (other.Pdate != null)
				return false;
		} else if (!Pdate.equals(other.Pdate))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescr() {
		return Descr;
	}
	public void setDescr(String descr) {
		Descr = descr;
	}
	public double getNormalPrice() {
		return NormalPrice;
	}

	public void setNormalPrice(double normalPrice) {
		NormalPrice = normalPrice;
	}
	public double getMemberPrice() {
		return MemberPrice;
	}
	public void setMemberPrice(double memberPrice) {
		MemberPrice = memberPrice;
	}
	public String getPdate() {
		return Pdate;
	}
	public void setPdate(String pdate) {
		Pdate = pdate;
	}
	public int getCateGoryid() {
		return CateGoryid;
	}
	public void setCateGoryid(int cateGoryid) {
		CateGoryid = cateGoryid;
	}
	
	//修改为直接赶回category1
	public Category getCategory1() {
		return Category1;
	}
	public void setCategory1(Category category1) {
		Category1 = category1;
	}
	
}
