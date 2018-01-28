package pa.fashion_store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pa.backend.dao.CategoryDAO;
import pa.backend.dao.ProductDAO;
import pa.backend.dao.ProductStockDAO;
import pa.backend.dao.UserDetailsDAO;
import pa.backend.dto.Category;
import pa.backend.dto.Product;
import pa.backend.dto.ProductStock;
import pa.backend.dto.UserDetails;

@Controller
public class PageController {
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ProductStockDAO productStockDAO;
	@Autowired
	private UserDetailsDAO userDetailsDAO;

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("homeButtonClicked", true);
		return mv;
	}

	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("aboutButtonClicked", true);
		return mv;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("contactButtonClicked", true);
		return mv;
	}

	@RequestMapping(value = "/show/all/products")
	public ModelAndView products() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Products");
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("productsButtonClicked", true);
		return mv;
	}

	@RequestMapping(value = "/show/category/{id}/products")
	public ModelAndView categoryProducts(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		Category category = null;
		category = categoryDAO.get(id);
		mv.addObject("title", category.getName());
		mv.addObject("category", category);
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("categoryProductsButtonClicked", true);
		return mv;
	}

	@RequestMapping(value = "/show/{id}/product")
	public ModelAndView showProduct(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		Product product = productDAO.get(id);
		Category category = categoryDAO.get(product.getCategoryId());
		product.setViews(product.getViews() + 1);
		productDAO.updateProduct(product);
		UserDetails userDetails = userDetailsDAO.get(product.getSupplierId());
		ProductStock productStock = productStockDAO.get(product.getProductStockId());
		mv.addObject("title", product.getName());
		mv.addObject("product", product);
		mv.addObject("productStock", productStock);
		mv.addObject("categoryName", category.getName());
		mv.addObject("sellerName", userDetails.getFirstName()+" "+userDetails.getLastName());
		mv.addObject("showProductClicked", true);
		return mv;
	}
}
