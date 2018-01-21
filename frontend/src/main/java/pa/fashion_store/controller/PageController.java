package pa.fashion_store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pa.backend.dao.CategoryDAO;

@Controller
public class PageController {
	@Autowired 
	private CategoryDAO categoryDAO;
	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("categories",categoryDAO.list());
		mv.addObject("homeButtonClicked", true);
		return mv;
	}
	@RequestMapping(value ="/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("aboutButtonClicked", true);
		return mv;
	}
	@RequestMapping(value ="/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("contactButtonClicked", true);
		return mv;
	}
	@RequestMapping(value ="/products")
	public ModelAndView products() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Products");
		mv.addObject("productsButtonClicked", true);
		return mv;
	}
	@RequestMapping(value = "/test")
	public ModelAndView test(@RequestParam(value = "name", required = false) String name) {
		ModelAndView mv = new ModelAndView("page");
		if (name == null) {
			name = "Guest";
		}
		mv.addObject("greeting", "Welcome " + name + " !");
		return mv;

	}

	@RequestMapping(value = "/test/{name}")
	public ModelAndView test1(@PathVariable(value = "name", required = false) String name) {
		ModelAndView mv = new ModelAndView("page");
		if (name == null) {
			name = "Guest";
		}
		mv.addObject("greeting", "Welcome " + name + " !");
		return mv;
	}

}
