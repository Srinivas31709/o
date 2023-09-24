package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="marketingmanager_table")
public class MarketingManager {
	
	
	@Column(nullable = false,name="marketingmanager_id")
	private int id;
	@Column(nullable = false,name="marketingmanager_name",length=100)
	private String name;
	@Column(nullable = false,name="marketingmanager_emailid",unique=true,length=100)
	private String emailid;
	
	@Column(nullable = false,name="marketingmanager_mobileno.",unique=true,length=100)
	private String mobileno;
	
	@Id
	@Column(nullable = false,name="marketingmanager_username",unique=true,length=100)
	private String username;
	@Column(nullable = false,name="marketingmanager_password",length=100)
	private String password;
	
	@Override
	public String toString() {
		return "MarketingManager [id=" + id + ", name=" + name + ", emailid=" + emailid + ", mobileno=" + mobileno
				+ ", username=" + username + ", password=" + password + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	
	
}
