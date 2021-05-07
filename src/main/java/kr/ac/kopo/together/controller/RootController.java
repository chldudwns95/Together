package kr.ac.kopo.together.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.together.model.User;
import kr.ac.kopo.together.service.UserService;

@Controller
@RequestMapping("/")

public class RootController {
	@Autowired
	UserService service;

	@RequestMapping("/")
	String index() {
		return "index";
	}
	@GetMapping("/login")
	String login() {
		return "login";
	}
	@GetMapping("/signup")
	String signup() {
		return "signup";
	}
	@PostMapping("/signup")
	String signup(User item) {
		service.add(item);
		
		return "redirect:/";
	}
	@ResponseBody //값을 그대로 클라이언트로 보냄
	@GetMapping("/checkID")
	String checkID(String id) {
		if(service.checkID(id))
		return "OK";
		
	 return "FAIL";
	}
	
	@ResponseBody
	@GetMapping("/checkNick")
	String checkNick(String id) {
		if(service.checkNick(id))
			return "OK";
		
		return "FAIL";
	}
}
