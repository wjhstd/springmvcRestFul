package com.wjh.control;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.wjh.bean.Article;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserController {
	
	@RequestMapping("/test")
    public ModelAndView test() {
       return new ModelAndView("hello","hello", "hello World!");
    }
	@RequestMapping("/views")
	public String views(ModelMap map,HttpServletRequest request){
		List<Article>articles = new ArrayList<Article>();
		for(int i = 0 ; i < 5; i ++){
			Article article = new Article();
			article.setTitle("title" +i);
			article.setContent("content" + i);
			articles.add(article);
		}
		System.out.println(articles);
		map.addAttribute("articles",articles);
		return "views";
	}

	
}
