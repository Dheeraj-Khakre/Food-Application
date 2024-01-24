package com.foodapp.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", mobileNo=" + mobileNo + ", email=" + email + ", password="
				+ password + ", foodOrders=" + foodOrders + "]";
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String name, String mobileNo, String email, String password, List<FoodOrder> foodOrders) {
		super();
		this.name = name;
		this.mobileNo = mobileNo;
		this.email = email;
		this.password = password;
		this.foodOrders = foodOrders;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<FoodOrder> getFoodOrders() {
		return foodOrders;
	}
	public void setFoodOrders(List<FoodOrder> foodOrders) {
		this.foodOrders = foodOrders;
	}
	public int getId() {
		return id;
	}
	private String name;
	@Column(unique = true)
	private String mobileNo;
	@Column(unique = true, nullable = false)
	private String email;
	private String password;
	@OneToMany(mappedBy = "user",cascade = CascadeType.ALL)
	private List<FoodOrder> foodOrders;

}
