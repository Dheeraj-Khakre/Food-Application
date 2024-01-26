package com.foodapp.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
   private String name;
   private String type;
   private double cost;
   private int qty;
@Override
public String toString() {
	return "Product [id=" + id + ", name=" + name + ", type=" + type + ", cost=" + cost + "]";
}
public void setId(int id) {
	this.id = id;
}
public Product() {
	super();
	// TODO Auto-generated constructor stub
}
public Product(String name, String type, double cost) {
	super();
	this.name = name;
	this.type = type;
	this.cost = cost;
}
public int getQty() {
	return qty;
}
public void setQty(int qty) {
	this.qty = qty;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public double getCost() {
	return cost;
}
public void setCost(double cost) {
	this.cost = cost;
}
public int getId() {
	return id;
}
}
