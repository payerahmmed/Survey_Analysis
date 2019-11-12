package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EmployeeReg {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String ename;
	private String email;
	private String efather;
	private String emother;
	private String gender;
	private String qualification;
	private String password;
	private int eage;
	private int econtact;
	private String address;
	private double salary;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEfather() {
		return efather;
	}
	public void setEfather(String efather) {
		this.efather = efather;
	}
	public String getEmother() {
		return emother;
	}
	public void setEmother(String emother) {
		this.emother = emother;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getEage() {
		return eage;
	}
	public void setEage(int eage) {
		this.eage = eage;
	}
	public int getEcontact() {
		return econtact;
	}
	public void setEcontact(int econtact) {
		this.econtact = econtact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "EmployeeReg [id=" + id + ", ename=" + ename + ", email=" + email + ", efather=" + efather + ", emother="
				+ emother + ", gender=" + gender + ", qualification=" + qualification + ", password=" + password
				+ ", eage=" + eage + ", econtact=" + econtact + ", address=" + address + "]";
	}
	
	
}
