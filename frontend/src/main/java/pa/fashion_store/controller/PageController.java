package pa.fashion_store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting", "Welcome to Spring Web MVC");
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
