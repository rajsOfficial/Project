package com.Contact;

import java.util.*;
import java.io.*;

public class BeanClass implements java.io.Serializable {

	BeanClass() {
	}

	private String name, addr, email;
	private int age;
	private Long phno;
	private String dob;

	public void setName(String name) {
		this.name = name;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setPh(long ph) {

		this.phno = ph;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getName() {
		return name;
	}

	public String getAddr() {
		return addr;
	}

	public String getEmail() {
		return email;
	}

	public int getAge() {
		return age;
	}

	public Long getPh() {
		return phno;
	}

	public String getDob() {
		return dob;
	}
}
