package kr.ac.kopo.together.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.together.model.Goods;
import kr.ac.kopo.together.service.GoodsService;

@Controller
@RequestMapping("/board/goods")
public class GoodsController {
	final String path = "/board/goods/";
	
	@Autowired
	GoodsService service;
	
	@GetMapping("/{goodsId}/detail")
	String detail(@PathVariable int goodsId, Model model) {
		Goods item= service.item(goodsId);
		
		model.addAttribute("item", item);
		
		return path+"detail";
	}
	
	@GetMapping("/list")
	String list(Model model) {
		List<Goods> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Goods item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/{goodsId}/update")
	String update(@PathVariable int goodsId, Model model) {
		Goods item = service.item(goodsId);
		
		model.addAttribute("item",item);
		
		return path+"update";
	}
	
	@PostMapping("/{goodId}/update")
	String update(@PathVariable int goodsId, Goods item) {
		item.setGoodsId(goodsId);
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/{goodsId}/delete")
	String delete(@PathVariable int goodsId) {
		service.delete(goodsId);
		
		return "redirect:../list";
	}
	
}
