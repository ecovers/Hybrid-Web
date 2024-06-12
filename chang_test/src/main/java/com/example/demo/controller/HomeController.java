package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dto.MainDTO;
import com.example.demo.dto.MakelineDTO;
import com.example.demo.dto.MakepdtDTO;
import com.example.demo.dto.MemberDTO;
import com.example.demo.mapper.MainMapper;

import jakarta.servlet.http.HttpSession;


//메인 기능담당 back 단 각 url을 호출했을 시 어떤기능을하고 어떤 페이지로 이동할지 결정한다.

// 스프링 Controller 지정
@Controller
public class HomeController {
	
	@Autowired // 의존성 주입 
	MainMapper mainMapper;
	
	@GetMapping // get 형식으로 통신 
	public String home() {
		return "main";
	}
//	url지정해서 main으로 이동했을때 동작
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
	public String makeline(HttpSession session) {
		
		List<MakelineDTO> make = mainMapper.Makeline();
		List<MakepdtDTO> makePdt = mainMapper.Makepdt();
		
		int lineNum = mainMapper.lineNum();
		
		
		
		System.out.println(lineNum);
		
		
		
		session.setAttribute("pdt", makePdt);
		session.setAttribute("make", make);
		
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
