package com.foodapp.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class FoodOrder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	private String name;
	private String mobileNo;
	private double totalBill;
	@ManyToOne
	private User user;
	@OneToMany(mappedBy = "foodOrder")
	private List<Item> items;
	@Override
	public String toString() {
		return "FoodOrder [id=" + id + ", name=" + name + ", mobileNo=" + mobileNo + ", totalBill=" + totalBill
				+ ", user=" + user + "]";
	}
	public FoodOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FoodOrder(String name, String mobileNo, double totalBill, User user) {
		super();
		this.name = name;
		this.mobileNo = mobileNo;
		this.totalBill = totalBill;
		this.user = user;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public double getTotalBill() {
		return totalBill;
	}
	public void setTotalBill(double totalBill) {
		this.totalBill = totalBill;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getId() {
		return id;
	}

}
