package com.sesoc.web2;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CookieController {
	private static final Logger logger = LoggerFactory.getLogger(ParamController.class);

	@RequestMapping(value = "/cookie1", method = RequestMethod.GET)
	public String cookie1(HttpServletResponse res) {
		//쿠키 생성
		Cookie c1 = new Cookie("num","1234"); //num:쿠키이름 1234:값(최대 200바이트 정도만 저장 가능)
		Cookie c2 = new Cookie("str","abcd");

		//클라이언트로 쿠키 저장
		res.addCookie(c1);
		res.addCookie(c2);
		
		return "redirect:/";
	}
	@RequestMapping(value = "/cookie2", method = RequestMethod.GET)
	public String cookie2(HttpServletResponse res) {  
		//같은 이름으로 유지시간이 0초인 쿠키 생성
		Cookie c1 = new Cookie("num",null); 
		Cookie c2 = new Cookie("str",null);
		c1.setMaxAge(0); //쿠키가 생성 됬지만 0초동안 유지 하고 사라진다.
		c2.setMaxAge(0);
		//클라이언트로 쿠키 저장
		res.addCookie(c1);
		res.addCookie(c2);
		return "redirect:/"; //메인 화면단으로 돌아옴
	}
	@RequestMapping(value = "/cookie3", method = RequestMethod.GET)
	//쿠키의 값이 있으면 출력을 해주고 쿠키 값이 없다면 0을 출력해준다.
	public String cookie3(@CookieValue(value="num",defaultValue="0") int num,
			@CookieValue(value="str", defaultValue="0") String str) {
		
		logger.debug("쿠키 num의 값 {}", num);
		logger.debug("쿠키 str의 값 {}", str);
		return "redirect:/";
	}
}
