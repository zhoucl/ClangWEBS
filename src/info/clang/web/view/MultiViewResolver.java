package info.clang.web.view;

import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;

/**
 * 
 * 类名名称: MultiViewResolver <br/>
 * 功能说明: 自定义视图解析类 <br/>
 * 创建原因: 可同时使用后缀访问不同的View，.vm访问velocity视图，.jsp访问jsp视图<br/>
 *
 * @author zhoucl 2014年1月16日
 * @since JDK 1.5
 */
public class MultiViewResolver implements ViewResolver {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private String defaulViewName = "vm";
	private Map<String, ViewResolver> resolvers;
	
	public String getDefaulViewName() {
		return defaulViewName;
	}

	public void setDefaulViewName(String defaulViewName) {
		this.defaulViewName = defaulViewName;
	}

	public Map<String, ViewResolver> getResolvers() {
		return resolvers;
	}

	public void setResolvers(Map<String, ViewResolver> resolvers) {
		this.resolvers = resolvers;
	}

	@Override
	public View resolveViewName(String viewName, Locale locale) throws Exception {
		String suffix = "";
		int pos = viewName.lastIndexOf(".");
		if(pos == -1) {
			suffix = "vm";
			pos = viewName.length();
		} else {
			suffix = viewName.substring(pos + 1);
		}
		
		ViewResolver viewResolver = resolvers.get(suffix);
		viewName = viewName.substring(0, pos);
		
		if(viewResolver != null) {
			logger.debug("[/" + viewName + "] resolved by " + viewResolver.getClass().getSimpleName());
			return viewResolver.resolveViewName(viewName, locale);
		} else {
			logger.error("MultiViewResolver Failer!");
			return null;
		}
	}
}
