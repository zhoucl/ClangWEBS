package info.clang.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * 类名名称: InitController <br/>
 * 功能说明: 初始Controller类控制器 <br/>
 *
 * @author zhoucl 2014年1月16日
 * @since JDK 1.5
 */
@Controller("loginController")
public class LoginController {
	
	@RequestMapping(value="/")
	public String loginHandler() {
		return "login";
	}
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String indexHandler(HttpServletRequest request, HttpServletResponse response) {
		return "index";
	}
	
	@RequestMapping(value="/head")
	public String headHandler() {
		return "head";
	}
	
	@RequestMapping(value="/foot")
	public String footHandler() {
		return "foot";
	}
	
	@RequestMapping(value="/login_vm")
	public String indexJsp() {
		return "login.vm";
	}
}
