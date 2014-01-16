package info.clang.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * 类名名称: InitController <br/>
 * 功能说明: 初始Controller类控制器 <br/>
 *
 * @author zhoucl 2014年1月16日
 * @since JDK 1.5
 */
@Controller("initController")
public class InitController {
	
	@RequestMapping(value="/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/indexjsp")
	public String indexJsp() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/biz/index")
	public String indexBiz() {
		return "biz/index.jsp";
	}
}
