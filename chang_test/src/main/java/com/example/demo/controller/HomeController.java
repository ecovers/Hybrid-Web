package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dto.MainDTO;
import com.example.demo.dto.MemberDTO;
import com.example.demo.mapper.MainMapper;

import jakarta.servlet.http.HttpSession;




@Controller
public class HomeController {
	
	@Autowired
	MainMapper mainMapper;
	
	@GetMapping
	public String home() {
		return "main";
	}
	
	@RequestMapping(value = "/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "/AI")
	public String AI(HttpSession session) {
		
		List<MainDTO> AI = mainMapper.AIdata();
		
//		System.out.println(main);
		session.setAttribute("AI", AI);
		
		return "AI";
	}
	
	@RequestMapping(value = "/makeline")
	public String makeline() {
		return "makeline";
	}
	
	@RequestMapping(value = "/viewtasks")
	public String viewtasks() {
		return "viewtasks";
	}
	
	@RequestMapping(value = "/production")
	public String production() {
		return "production";
	}
	
	@RequestMapping(value = "/date")
	public String date() {
		return "date";
	}
	
	@RequestMapping(value = "/member")
	public String member(HttpSession session) {
		
		List<MemberDTO> Member = mainMapper.Member();
		
		session.setAttribute("member", Member);
		
		return "member";
	}
	
	@RequestMapping(value = "/orderlist")
	public String orderlist() {
		return "orderlist";
	}
	
	@RequestMapping(value = "/item")
	public String item() {
		return "item";
	}
	

}
