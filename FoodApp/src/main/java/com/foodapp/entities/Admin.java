package com.foodapp.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Admin {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	 private String name;
	 @Column(unique =true)
	 private String email;
	 private String password;
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin( String name, String email, String password) {
		super();
		//this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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

}
