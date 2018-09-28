package com.six.entity;


public class Address {
	
	private Integer areid;
	
	private Integer uid;
	
	private String address;
	
	private String createdate;
	
	

	public Address() {
		super();
	}
	
	public Address(Integer uid, String address) {
		super();
		this.uid = uid;
		this.address = address;
	}

	public Integer getAreid() {
		return areid;
	}

	public void setAreid(Integer areid) {
		this.areid = areid;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCreatedate() {
		return createdate;
	}

	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((areid == null) ? 0 : areid.hashCode());
		result = prime * result + ((createdate == null) ? 0 : createdate.hashCode());
		result = prime * result + ((uid == null) ? 0 : uid.hashCode());
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
		Address other = (Address) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (areid == null) {
			if (other.areid != null)
				return false;
		} else if (!areid.equals(other.areid))
			return false;
		if (createdate == null) {
			if (other.createdate != null)
				return false;
		} else if (!createdate.equals(other.createdate))
			return false;
		if (uid == null) {
			if (other.uid != null)
				return false;
		} else if (!uid.equals(other.uid))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Address [areid=" + areid + ", uid=" + uid + ", address=" + address + ", createdate=" + createdate + "]";
	}

	
	
	
	

}
