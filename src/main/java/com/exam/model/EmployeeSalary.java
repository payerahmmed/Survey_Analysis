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
	private String eName;
	private String eEmail;
	private String eaddress;
	private double eBasicSalary;
	private int eExtrafromFee;
	private int eTrans;
	private int eLunch;
	private int eOthers;
	private double totalSalary;
	
	
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
	
	public int geteExtrafromFee() {
		return eExtrafromFee;
	}
	public void seteExtrafromFee(int eExtrafromFee) {
		this.eExtrafromFee = eExtrafromFee;
	}
	
	public double geteBasicSalary() {
		return eBasicSalary;
	}
	public void seteBasicSalary(double eBasicSalary) {
		this.eBasicSalary = eBasicSalary;
	}
	public double getTotalSalary() {
		return totalSalary;
	}
	public void setTotalSalary(double totalSalary) {
		this.totalSalary = totalSalary;
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
		return "EmployeeSalary [id=" + id + ", eName=" + eName + ", eEmail=" + eEmail + ", eaddress=" + eaddress
				+ ", eBasicSalary=" + eBasicSalary + ", eExtrafromFee=" + eExtrafromFee + ", eTrans=" + eTrans
				+ ", eLunch=" + eLunch + ", eOthers=" + eOthers + ", totalSalary=" + totalSalary + "]";
	}
	
	
	
	
}
