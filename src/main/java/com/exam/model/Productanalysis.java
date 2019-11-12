package com.exam.model;



import java.util.Arrays;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Productanalysis {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String name;
	private String gender;
	private String age;
	private String profession;
	private String luxShop;
	private String howOften;	
	private String[] flavorUse;
	private String flavor;
	private String notflavor;
	private String luxSize;	
	private String[] namySize;
	private String prices;	
	private String[] aboutPrice;
	private String thinkprice;
	private String familyUse;	
	private String[] satisfied;
	private String seeAd;	
	private String[] whereSee;
	private String likeUse;
	private String whyU;
	private String always;
	
	@Temporal(TemporalType.DATE)
	private Date createdDate;
	private String selectValue;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	
	public String getLuxShop() {
		return luxShop;
	}
	public void setLuxShop(String luxShop) {
		this.luxShop = luxShop;
	}
	public String getHowOften() {
		return howOften;
	}
	public void setHowOften(String howOften) {
		this.howOften = howOften;
	}
	public String[] getFlavorUse() {
		return flavorUse;
	}
	public void setFlavorUse(String[] flavorUse) {
		this.flavorUse = flavorUse;
	}
	public String getFlavor() {
		return flavor;
	}
	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}
	public String getNotflavor() {
		return notflavor;
	}
	public void setNotflavor(String notflavor) {
		this.notflavor = notflavor;
	}
	public String getLuxSize() {
		return luxSize;
	}
	public void setLuxSize(String luxSize) {
		this.luxSize = luxSize;
	}
	public String[] getNamySize() {
		return namySize;
	}
	public void setNamySize(String[] namySize) {
		this.namySize = namySize;
	}
	public String getPrices() {
		return prices;
	}
	public void setPrices(String prices) {
		this.prices = prices;
	}
	public String[] getAboutPrice() {
		return aboutPrice;
	}
	public void setAboutPrice(String[] aboutPrice) {
		this.aboutPrice = aboutPrice;
	}
	
	public String getFamilyUse() {
		return familyUse;
	}
	public void setFamilyUse(String familyUse) {
		this.familyUse = familyUse;
	}


	public String[] getSatisfied() {
		return satisfied;
	}
	public void setSatisfied(String[] satisfied) {
		this.satisfied = satisfied;
	}
	public String getSeeAd() {
		return seeAd;
	}
	public void setSeeAd(String seeAd) {
		this.seeAd = seeAd;
	}
	public String[] getWhereSee() {
		return whereSee;
	}
	public void setWhereSee(String[] whereSee) {
		this.whereSee = whereSee;
	}
	public String getLikeUse() {
		return likeUse;
	}
	public void setLikeUse(String likeUse) {
		this.likeUse = likeUse;
	}
	public String getWhyU() {
		return whyU;
	}
	public void setWhyU(String whyU) {
		this.whyU = whyU;
	}
	public String getAlways() {
		return always;
	}
	public void setAlways(String always) {
		this.always = always;
	}	
	
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
	
	public String getSelectValue() {
		return selectValue;
	}
	public void setSelectValue(String selectValue) {
		this.selectValue = selectValue;
	}
	public String getThinkprice() {
		return thinkprice;
	}
	public void setThinkprice(String thinkprice) {
		this.thinkprice = thinkprice;
	}
	@Override
	public String toString() {
		return "Productanalysis [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age + ", profession="
				+ profession + ", luxShop=" + luxShop + ", howOften=" + howOften + ", flavorUse="
				+ Arrays.toString(flavorUse) + ", flavor=" + flavor + ", notflavor=" + notflavor + ", luxSize="
				+ luxSize + ", namySize=" + Arrays.toString(namySize) + ", prices=" + prices + ", aboutPrice="
				+ Arrays.toString(aboutPrice) + ", thinkprice=" + thinkprice + ", familyUse=" + familyUse
				+ ", satisfied=" + Arrays.toString(satisfied) + ", seeAd=" + seeAd + ", whereSee="
				+ Arrays.toString(whereSee) + ", likeUse=" + likeUse + ", whyU=" + whyU + ", always=" + always
				+ ", createdDate=" + createdDate + ", selectValue=" + selectValue + "]";
	}
	
	
	
	

}
