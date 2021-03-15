package com.example.demo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


import com.example.demo.entities.Project;
import com.example.demo.entities.Tag;
import com.example.demo.entities.Task;
import com.example.demo.entities.User;
import com.example.demo.repository.ProjectRepository;
import com.example.demo.repository.TagRepository;
import com.example.demo.repository.TaskRepository;
import com.example.demo.repository.UserRepository;

@SpringBootApplication
public class SpringProyecto2Application implements CommandLineRunner{

	@Autowired
	private TaskRepository taskRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	private TagRepository tagRepository;
	
	public static void main(String[] args) {
		SpringApplication.run(SpringProyecto2Application.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		

		//users
		
		User user1 = new User("Meme", "lopez",28,"meme@gmail.com","noteladigo", new ArrayList<>(), new ArrayList<>());
		userRepository.save(user1);
		
		User user2 = new User();
		user2.setFirstName("Guillermo");
		userRepository.save(user2);

		User user3 = new User();
		user3.setFirstName("Jorge");
		userRepository.save(user3);
		
		//user-lists
		
		List<User> usersproject1 = Arrays.asList(user3);
		List<User> usersproject2 = Arrays.asList(user1, user2);
		
		//projects
		
		Project project1 = new Project("project 1","info de project 1",usersproject1, new ArrayList<>());
		projectRepository.save(project1); 
		
		Project project2 = new Project("project 2","proyecto trello creado en JAVA",usersproject2, new ArrayList<>());
		projectRepository.save(project2);
		
		// tags (assigned to tasks)
		
		Tag todo = new Tag();
		todo.setName("NEW");
	
		Tag todo2 = new Tag();
		todo2.setName("DONE");
		Tag inprogress = new Tag();
		inprogress.setName("IN PROGRESS");
		
		List<Tag> tags = Arrays.asList(todo, todo2, inprogress);
		tagRepository.saveAll(tags);
	
		//tasks
		
		Task task1 = new Task();
		task1.setTitle("tarea 1");
		task1.setDescription("descripcion tarea 1");
		task1.setProject(project2);
		task1.setUsers(usersproject2);
		task1.getTags().add(todo);

		Task task2 = new Task("tareanumero2","descriptiontask2",usersproject2, project2, new ArrayList<>());
		taskRepository.save(task2);
		
		Task task3 = new Task();
		task3.setTitle("Tarea 3");
		task3.setDescription("descripcion tarea 3");
		task3.setProject(project1);
		task3.getTags().add(inprogress);
		taskRepository.save(task3);
		
		Task task4 = new Task();
		task4.setTitle("tarea solitaria 4");
		taskRepository.save(task4);

		
		List<Task> tasks = Arrays.asList(task1, task2);
		taskRepository.saveAll(tasks);

		
		//Task task2 = new Task();
	//	task2.setTitle("Tarea 2");
	//	task2.setProject(project2);
	//	taskRepository.save(task2);
		
		


		
		
		
		
		
		
	}

}
