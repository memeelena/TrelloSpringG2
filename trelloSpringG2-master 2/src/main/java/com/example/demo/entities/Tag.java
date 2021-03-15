package com.example.demo.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="tags")
public class Tag implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	private String name;
	
	private String color;
	
	@ManyToMany(mappedBy="tags", cascade = CascadeType.REMOVE)
	private List<Task> tasks = new ArrayList<Task>();
	
	
	public Tag() {}

	
	
	




	public Tag(String name, String color, List<Task> tasks) {
		super();
		this.name = name;
		this.color = color;
		this.tasks = tasks;
	}








	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public List<Task> getTasks() {
		return tasks;
	}

	public void setTasks(List<Task> tasks) {
		this.tasks = tasks;
	}




	@Override
	public String toString() {
		return "Tag [id=" + id + ", name=" + name + ", color=" + color + "]";
	}

	
	
	

}
