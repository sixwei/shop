package com.six.entity.menu;

public class Province {
	
	private Integer id;
	private String provinceid;
	private String province;
	
	public Province(){
		super();
	}
	
	
	public Province(Integer id, String provinceid, String province) {
		super();
		this.id = id;
		this.provinceid = provinceid;
		this.province = province;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProvinceid() {
		return provinceid;
	}
	public void setProvinceid(String provinceid) {
		this.provinceid = provinceid;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((province == null) ? 0 : province.hashCode());
		result = prime * result + ((provinceid == null) ? 0 : provinceid.hashCode());
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
		Province other = (Province) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (province == null) {
			if (other.province != null)
				return false;
		} else if (!province.equals(other.province))
			return false;
		if (provinceid == null) {
			if (other.provinceid != null)
				return false;
		} else if (!provinceid.equals(other.provinceid))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Province [id=" + id + ", provinceid=" + provinceid + ", province=" + province + "]";
	}
	
	

}
