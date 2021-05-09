package kr.ac.kopo.together.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.together.model.User;
import kr.ac.kopo.together.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	final String path="user/";

	@Autowired
	UserService service;
	
	@GetMapping("/list")
	String list(Model model) {
		List<User> list = service.list();
		
		model.addAttribute("list",list);
		
		return path + "list";
	}
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	@PostMapping("/add")
	String add(User item) {
		service.add(item);
		
		return "redirect:list";
	}
}
