package com.petworld.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Supplier {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int spid;
    private String spname;
    private String splace;
	
    public int getSpid() {
		return spid;
	}
	public void setSpid(int spid) {
		this.spid = spid;
	}
	public String getSpname() {
		return spname;
	}
	public void setSpname(String spname) {
		this.spname = spname;
	}
	public String getSplace() {
		return splace;
	}
	public void setSplace(String splace) {
		this.splace = splace;
	}
    
}
