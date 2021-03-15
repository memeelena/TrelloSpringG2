package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.example.demo.entities.Project;
import com.example.demo.entities.Task;
import com.example.demo.repository.ProjectRepository;
import com.example.demo.repository.TaskRepository;
import com.example.demo.repository.UserRepository;


@Controller
public class ProjectController {
	
	@Autowired
	private ProjectRepository projectRepository;
	
	
	@Autowired
	private TaskRepository taskRepository;
	
	
	@Autowired
	private UserRepository userRepository;
	
	// main project site
	
	//@GetMapping("/index")
	//public String goIndex(Model model) {
	//	return "index";
	//}
	
	//@GetMapping("/indextest")
	//public String goIndexTest(Model model) {
	//	return "indextest";
	//}
	@GetMapping("/")
	public String goWelcomeFromNothing(Model model) {
		return "welcome";
	}
	
	@GetMapping("/welcome")
	public String goWelcome(Model model) {
		return "welcome";
	}
	
	
	@GetMapping("/projects")
	public String findProject(Model model) {
		model.addAttribute("project", projectRepository.findAll());
		return "project-list";
	}
	
	
	//view of single project
	@GetMapping("/projects/{id}/view")
	public String view(@PathVariable Long id, Model model) {
		if (id == null) {
			return "redirect:/projects";
		}
		Optional<Project> projectOpt = projectRepository.findById(id);
		if (projectOpt.isPresent()) {
			model.addAttribute("project", projectOpt.get());
			return "project-view";
		}
		return "redirect:/projects";
	}

	
	//creation of projects
	@GetMapping("projects/new")
	public String obtenerFormularioProyecto(Model model) {
		model.addAttribute("project", new Project());
		// TODO - mostrar solo tareas que no estén ocupadas por otro proyecto
		model.addAttribute("tasks", taskRepository.findAll());
		model.addAttribute("users", userRepository.findAll());
		return "project-edit"; // aqui devolvemos la vista

	}
	@PostMapping("/projects")
	public String postFormularioProyecto(@ModelAttribute("project") Project project) {
		if (project.getTasks() != null && !project.getTasks().isEmpty()) {
			for (Task task : project.getTasks()) 
				task.setProject(project);
			
			taskRepository.saveAll(project.getTasks()); //error aqui
		}
			
		
		projectRepository.save(project);
		return "redirect:/projects"; 
	}
	
	
	//deletion of single project
	@GetMapping("/projects/{id}/delete")
	public String borrarProjecto(@PathVariable Long id) {
		Optional<Project> projectOpt = projectRepository.findById(id);
		if (!projectOpt.isPresent()) 
			return "redirect:/projects";
		
		Project project = projectOpt.get();
		
		for (Task task: project.getTasks()) {
			task.setTags(new ArrayList<>());
			task.setUsers(new ArrayList<>());
		}
		taskRepository.saveAll(project.getTasks());
		
		projectRepository.deleteById(id);
		return "redirect:/projects"; //fallo
	}
	
	//deletion of ALL project
	@GetMapping("/projects/delete/all")
	public String borrarProjectos() {

		List<Project> projects = projectRepository.findAll();
		for (Project project : projects) {
			for (Task task: project.getTasks()) {
				task.setTags(new ArrayList<>());
				task.setUsers(new ArrayList<>());
			}
			taskRepository.saveAll(project.getTasks());
		}
		projectRepository.deleteAll();
		return "redirect:/projects"; //fallo
	}
	
	// edition of a project
	@GetMapping("/projects/{id}/edit")
	public String editProject(@PathVariable Long id, Model model) {
		if(id == null) // 1. se comprueba que el id no sea nulo
			return "redirect:/projects";
		
		Optional<Project> projectOpt = projectRepository.findById(id);
		if (projectOpt.isPresent()) { // 2. se comprueba que existe un producto para ese id
			model.addAttribute("project", projectOpt.get());
			model.addAttribute("users", userRepository.findAll());
			model.addAttribute("tasks", taskRepository.findAll());
			return "project-edit";
		}
		model.addAttribute("error", "No existe el projecto solicitado");
		return "redirect:/projects";
	}

}
