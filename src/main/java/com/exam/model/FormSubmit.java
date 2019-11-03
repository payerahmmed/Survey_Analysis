package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FormSubmit {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long submitid;
	private String emName;
	private String selectValue;
	private int submitnum;
	public long getSubmitid() {
		return submitid;
	}
	public void setSubmitid(long submitid) {
		this.submitid = submitid;
	}
	public String getSelectValue() {
		return selectValue;
	}
	public void setSelectValue(String selectValue) {
		this.selectValue = selectValue;
	}
	public int getSubmitnum() {
		return submitnum;
	}
	public void setSubmitnum(int submitnum) {
		this.submitnum = submitnum;
	}
	
	public String getEmName() {
		return emName;
	}
	public void setEmName(String emName) {
		this.emName = emName;
	}
	@Override
	public String toString() {
		return "FormSubmit [submitid=" + submitid + ", emName=" + emName + ", selectValue=" + selectValue
				+ ", submitnum=" + submitnum + "]";
	}
	
	
	
}
