package com.six.entity.menu;

public class City {

	
	private Integer id;
	private String cityID;
	private String city;
	private String provinceid;
	
	public City() {
		
	}
	
	
	public City(Integer id, String cityID, String city, String provinceid) {
		super();
		this.id = id;
		this.cityID = cityID;
		this.city = city;
		this.provinceid = provinceid;
	}


	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCityID() {
		return cityID;
	}
	public void setCityID(String cityID) {
		this.cityID = cityID;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getProvinceid() {
		return provinceid;
	}
	public void setProvinceid(String provinceid) {
		this.provinceid = provinceid;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((cityID == null) ? 0 : cityID.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		City other = (City) obj;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (cityID == null) {
			if (other.cityID != null)
				return false;
		} else if (!cityID.equals(other.cityID))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
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
		return "City [id=" + id + ", cityID=" + cityID + ", city=" + city + ", provinceid=" + provinceid + "]";
	}
	
	
}
