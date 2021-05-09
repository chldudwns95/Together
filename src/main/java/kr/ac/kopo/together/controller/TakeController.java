package kr.ac.kopo.together.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.together.model.Take;
import kr.ac.kopo.together.service.TakeService;

@Controller
@RequestMapping("/take")
public class TakeController {
final String path="take/";

	@Autowired
	TakeService service;
	
	@GetMapping("/list")
	String list(Model model) {
		List<Take> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	@GetMapping("/wklist")
	String takelist(Model model) {
		List<Take> list = service.list();
		model.addAttribute("list", list);
		return path + "wklist";
	}
	@GetMapping("/wkadd")
	String wkadd() {
		return path + "wkadd";
	}
	@GetMapping("/{serviceId}/wkupdate")
	String wkupdate() {
		return path + "wkupdate";
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";			
	}
	
	@PostMapping("/add")
	String add(Take item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/{serviceId}/update")
	String update(@PathVariable int serviceId, Model model) {
		Take item = service.item(serviceId);
		model.addAttribute("item", item);
		
		return path + "update"; 
	}
	
	@PostMapping("/{serviceId}/update")
	String update(@PathVariable int serviceId, Take item) {
		item.setServiceId(serviceId);
		service.update(item);
		return "redirect:../list";
	}
	@GetMapping("/{serviceId}/delete")
	String delete(@PathVariable int serviceId) {
		service.delete(serviceId);
		return "redirect:../list";
	}
}
