package com.six.entity.menu;

public class Area {
	
	private Integer id;
	private String areaID;
	private String area;
	private String cityid;
	
	public Area() {
		
	}
	public Area(Integer id, String areaID, String area, String cityid) {
		super();
		this.id = id;
		this.areaID = areaID;
		this.area = area;
		this.cityid = cityid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAreaID() {
		return areaID;
	}
	public void setAreaID(String areaID) {
		this.areaID = areaID;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCityid() {
		return cityid;
	}
	public void setCityid(String cityid) {
		this.cityid = cityid;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((area == null) ? 0 : area.hashCode());
		result = prime * result + ((areaID == null) ? 0 : areaID.hashCode());
		result = prime * result + ((cityid == null) ? 0 : cityid.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		Area other = (Area) obj;
		if (area == null) {
			if (other.area != null)
				return false;
		} else if (!area.equals(other.area))
			return false;
		if (areaID == null) {
			if (other.areaID != null)
				return false;
		} else if (!areaID.equals(other.areaID))
			return false;
		if (cityid == null) {
			if (other.cityid != null)
				return false;
		} else if (!cityid.equals(other.cityid))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Area [id=" + id + ", areaID=" + areaID + ", area=" + area + ", cityid=" + cityid + "]";
	}
	
	

}
