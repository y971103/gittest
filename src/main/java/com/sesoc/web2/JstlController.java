package com.sesoc.web2;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JstlController {

	@RequestMapping(value = "/jstl", method = RequestMethod.GET)
	public String jstlTest1(Model model) {
		int n = 1;
		String s = "abc";
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("aaa");
		list.add("bbb");
		list.add("ccc");
		list.add("dddd");
		
		String phone = "010-1111-2222";
		String data = "<marquee>문자열</marquee>";
		
		model.addAttribute("number", n);
		model.addAttribute("str", s);
		model.addAttribute("list", list);
		model.addAttribute("phone", phone);
		model.addAttribute("data", data);
		
		return "jstl";
	}
	@RequestMapping(value = "/jstl2", method = RequestMethod.GET)
	public String jstlTest2(Model model) {
		String s ="abc ABC 가나다라";
		model.addAttribute("str",s);
	return "jstl2";
	}
}
