package com.example.demo.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name="tasks")
public class Task implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	private String title;
	
	private String description;
	
	@ManyToMany
	@JoinTable(name = "task_user",
	joinColumns = @JoinColumn(name = "task_id", referencedColumnName = "id"),
	inverseJoinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"))
	private List<User> users = new ArrayList<User>();
	
	@ManyToOne()
	@JoinColumn(name="project_id")
	private Project project;
	
	@ManyToMany
	@JoinTable(name = "task_tag",
	joinColumns = @JoinColumn(name = "task_id", referencedColumnName = "id"),
	inverseJoinColumns = @JoinColumn(name = "tag_id", referencedColumnName = "id"))
	private List<Tag> tags = new ArrayList<Tag>();
	
	public Task() {}

	
	
	
	public Task(String title, String description, List<User> users, Project project, List<Tag> tags) {
		super();
		this.title = title;
		this.description = description;
		this.users = users;
		this.project = project;
		this.tags = tags;
	}




	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}



	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public List<Tag> getTags() {
		return tags;
	}

	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}




	@Override
	public String toString() {
		return "Task [id=" + id + ", title=" + title + ", description=" + description + "]";
	}

	
	

}
