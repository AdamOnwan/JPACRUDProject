package com.skilldistillery.wwehof.entities;

import java.time.*;
import java.util.*;

import javax.persistence.*;

@Entity
public class Inductee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	@Column(name = "crowd_name")
	private String crowdName;
	@Column(name = "real_name")
	private String realName;
	private Integer inducted;
	private LocalDate birthday;
	private String description;
	private String finisher;
	
	
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
	public String getCrowdName() {
		return crowdName;
	}
	public void setCrowdName(String crowdName) {
		this.crowdName = crowdName;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public Integer getInducted() {
		return inducted;
	}
	public void setInducted(Integer inducted) {
		this.inducted = inducted;
	}
	public LocalDate getBirthday() {
		return birthday;
	}
	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getFinisher() {
		return finisher;
	}
	public void setFinisher(String finisher) {
		this.finisher = finisher;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Inductee [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", crowdName=");
		builder.append(crowdName);
		builder.append(", realName=");
		builder.append(realName);
		builder.append(", inducted=");
		builder.append(inducted);
		builder.append(", birthday=");
		builder.append(birthday);
		builder.append(", description=");
		builder.append(description);
		builder.append(", finisher=");
		builder.append(finisher);
		builder.append("]");
		return builder.toString();
	}
	public Inductee() {
		super();
	}
	


}
