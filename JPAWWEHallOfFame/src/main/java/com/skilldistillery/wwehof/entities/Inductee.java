package com.skilldistillery.wwehof.entities;

import java.time.LocalDate;
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
	private String birthplace;
	public int getId() {
		return id;
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
	public String getBirthplace() {
		return birthplace;
	}
	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((birthday == null) ? 0 : birthday.hashCode());
		result = prime * result + ((birthplace == null) ? 0 : birthplace.hashCode());
		result = prime * result + ((crowdName == null) ? 0 : crowdName.hashCode());
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((finisher == null) ? 0 : finisher.hashCode());
		result = prime * result + id;
		result = prime * result + ((inducted == null) ? 0 : inducted.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((realName == null) ? 0 : realName.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Inductee other = (Inductee) obj;
		if (birthday == null) {
			if (other.birthday != null)
				return false;
		} else if (!birthday.equals(other.birthday))
			return false;
		if (birthplace == null) {
			if (other.birthplace != null)
				return false;
		} else if (!birthplace.equals(other.birthplace))
			return false;
		if (crowdName == null) {
			if (other.crowdName != null)
				return false;
		} else if (!crowdName.equals(other.crowdName))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (finisher == null) {
			if (other.finisher != null)
				return false;
		} else if (!finisher.equals(other.finisher))
			return false;
		if (id != other.id)
			return false;
		if (inducted == null) {
			if (other.inducted != null)
				return false;
		} else if (!inducted.equals(other.inducted))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (realName == null) {
			if (other.realName != null)
				return false;
		} else if (!realName.equals(other.realName))
			return false;
		return true;
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
		builder.append(", birthplace=");
		builder.append(birthplace);
		builder.append("]");
		return builder.toString();
	}
	public Inductee(String name, String crowdName, String realName, Integer inducted, LocalDate birthday,
			String description, String finisher, String birthplace) {
		super();
		this.name = name;
		this.crowdName = crowdName;
		this.realName = realName;
		this.inducted = inducted;
		this.birthday = birthday;
		this.description = description;
		this.finisher = finisher;
		this.birthplace = birthplace;
	}
	public Inductee() {
		super();
	}

}
