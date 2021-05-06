package kr.ac.kopo.together.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.together.model.Normal;
import kr.ac.kopo.together.service.NormalService;

@Controller
@RequestMapping("/board/normal")
public class NormalController {
	final String path ="/board/normal/";
	
	@Autowired
	NormalService service;
	
	@GetMapping("/{boardId}/detail")
	String detail(@PathVariable int boardId, Model model) {
		Normal item = service.item(boardId);
		
		model.addAttribute("item", item);
		
		return path+"detail";
	}
	
	@GetMapping("/list")
	String list(Model model) {
		List<Normal> list = service.list();
		
		model.addAttribute("list", list);
		
		return path+"list";
		
	}
	
	@GetMapping("/add")
	String add() {
		return path+"add";
	}
	
	@PostMapping("/add")
	String add(Normal item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/{boardId}/update")
	String update(@PathVariable int boardId, Model model) {
		Normal item	= service.item(boardId);
		
		model.addAttribute("item", item);		
		
		return path+"update";
	}
	
	@PostMapping("/{boardId}/update")
	String update(@PathVariable int boardId, Normal item) {
		item.setBoardId(boardId);		
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/{boardId}/delete")
	String delete(@PathVariable int boardId) {
		service.delete(boardId);
		
		return "redirect:../list";
	}
}
