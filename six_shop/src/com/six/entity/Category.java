package com.six.entity;

public class Category {
public String Descr;
public int Grade;
public int Id;
public boolean Leaf;
public String Name;
public int Pid;
public Category(int id, String name, String descr, int pid, boolean leaf, int grade) {
	this(name,descr,pid,leaf,grade);
	Id = id;
}
public Category() {
	
}
public  Category(String name,String descr) {
	this.Name=name;
	this.Descr=descr;
}

public  Category(String name,String descr,int pid) {
	this(name,descr);
	this.Pid=pid;
}
public Category( String name, String descr, int pid, boolean leaf, int grade) {
	super();
	Name = name;
	Descr = descr;
	this.Pid = pid;
	this.Leaf = leaf;
	this.Grade = grade;
}
public String getDescr() {
	return Descr;
}
public void setDescr(String descr) {
	Descr = descr;
}
public int getGrade() {
	return Grade;
}
public void setGrade(int grade) {
	Grade = grade;
}
public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public boolean isLeaf() {
	return Leaf;
}
public void setLeaf(boolean leaf) {
	Leaf = leaf;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public int getPid() {
	return Pid;
}
public void setPid(int pid) {
	Pid = pid;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((Descr == null) ? 0 : Descr.hashCode());
	result = prime * result + Grade;
	result = prime * result + Id;
	result = prime * result + (Leaf ? 1231 : 1237);
	result = prime * result + ((Name == null) ? 0 : Name.hashCode());
	result = prime * result + Pid;
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
	Category other = (Category) obj;
	if (Descr == null) {
		if (other.Descr != null)
			return false;
	} else if (!Descr.equals(other.Descr))
		return false;
	if (Grade != other.Grade)
		return false;
	if (Id != other.Id)
		return false;
	if (Leaf != other.Leaf)
		return false;
	if (Name == null) {
		if (other.Name != null)
			return false;
	} else if (!Name.equals(other.Name))
		return false;
	if (Pid != other.Pid)
		return false;
	return true;
}
@Override
public String toString() {
	return "Category [Id=" + Id + ",Name=" + Name+ ",Descr=" + Descr + ", Grade=" + Grade + ",  Leaf=" + Leaf + ",  Pid=" + Pid + "]";
}

}
