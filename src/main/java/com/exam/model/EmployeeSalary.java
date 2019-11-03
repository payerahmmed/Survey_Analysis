package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EmployeeSalary {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private long search;
	
	private String eName;
	private String eEmail;
	private String eaddress;
	private int eBasicSalary;
	private int eExtra;
	private int eTrans;
	private int eLunch;
	private int eOthers;
	public long getSearch() {
		return search;
	}
	public void setSearch(long search) {
		this.search = search;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String geteName() {
		return eName;
	}
	public void seteName(String eName) {
		this.eName = eName;
	}
	public String geteEmail() {
		return eEmail;
	}
	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}
	public String getEaddress() {
		return eaddress;
	}
	public void setEaddress(String eaddress) {
		this.eaddress = eaddress;
	}
	public int geteBasicSalary() {
		return eBasicSalary;
	}
	public void seteBasicSalary(int eBasicSalary) {
		this.eBasicSalary = eBasicSalary;
	}
	public int geteExtra() {
		return eExtra;
	}
	public void seteExtra(int eExtra) {
		this.eExtra = eExtra;
	}
	public int geteTrans() {
		return eTrans;
	}
	public void seteTrans(int eTrans) {
		this.eTrans = eTrans;
	}
	public int geteLunch() {
		return eLunch;
	}
	public void seteLunch(int eLunch) {
		this.eLunch = eLunch;
	}
	public int geteOthers() {
		return eOthers;
	}
	public void seteOthers(int eOthers) {
		this.eOthers = eOthers;
	}
	@Override
	public String toString() {
		return "EmployeeSalary [search=" + search + ", id=" + id + ", eName=" + eName + ", eEmail=" + eEmail
				+ ", eaddress=" + eaddress + ", eBasicSalary=" + eBasicSalary + ", eExtra=" + eExtra + ", eTrans="
				+ eTrans + ", eLunch=" + eLunch + ", eOthers=" + eOthers + "]";
	}
	
	
}
