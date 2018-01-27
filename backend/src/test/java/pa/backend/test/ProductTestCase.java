package pa.backend.test;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import pa.backend.dao.ProductDAO;
import pa.backend.dto.Product;

public class ProductTestCase {
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	private static Product product;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("pa.backend");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
	}

	/*
	 * @Test public void testAddCategory() { category = new Category();
	 * category.setDescription("Cells Description");
	 * category.setImageURL("Cells.PNG"); category.setName("Cells");
	 * assertEquals("Added Category Successfully", true,
	 * categoryDAO.addCategory(category)); }
	 */

	/*
	 * @Test public void testGetCategory() { category = categoryDAO.get(6);
	 * assertEquals("get Category id Successfully", 6, category.getId());
	 * assertEquals("get Category name Successfully", "Cells.PNG",
	 * category.getImageURL()); }
	 * 
	 * @Test public void testUpdateCategory() { category = categoryDAO.get(6);
	 * category.setName("Mobiles");
	 * 
	 * assertEquals("Updated Category Name Successfully", true,
	 * categoryDAO.updateCategory(category));
	 * assertEquals("Updated Category Name Successfully", "Mobiles",
	 * categoryDAO.get(6).getName()); }
	 * 
	 * @Test public void testDeleteCategory() { category = categoryDAO.get(6);
	 * assertEquals("Updated Category Name Successfully", true,
	 * categoryDAO.deleteCategory(category));
	 * assertEquals("Updated Category Name Successfully", false,
	 * categoryDAO.get(6).isActive()); }
	 */
	// @Test
	// public void testListCategory() {
	// assertEquals("Size of list should be 3", 3, categoryDAO.list().size());
	// }
	@Test
	public void CrudOperationTest() {
		product = new Product();
		product.setName("PRINCESS DIANA");
		product.setDescription("PRINCESS DIANA");
		product.setCode("PRD72D-BEB8-A010");
		product.setUnitPrice(501);
		product.setAvailableQty(50);
		product.setBrand("DC COMICS");
		product.setActive(true);
		product.setCategoryId(5);
		product.setSupplierId(3);
		product.setSoldQty(45);
		product.setViews(54);
		assertEquals("add Product", true,productDAO.addProduct(product));
		product.setAvailableQty(20);
		assertEquals("update Product", true,productDAO.updateProduct(product));
		assertEquals("delete Product", true,productDAO.deleteProduct(product));
//		Five active record present already in table
		assertEquals("available Active Product", 5,productDAO.getAllAvailableProducts().size());
		assertEquals("available Active Product by categoryId", 1,productDAO.getLatestAvailableProducts(1).size());
		assertEquals("available Active Product by categoryId", 2,productDAO.getAvailableProductsByCategoryId(5).size());
		assertEquals("available Active Product by categoryId", 3,productDAO.getLatestAvailableProductsByCategoryId(1,5).size());
		product = productDAO.get(2);
		product.setActive(false);
		assertEquals("update Product", true,productDAO.updateProduct(product));
		
		
	}
}
