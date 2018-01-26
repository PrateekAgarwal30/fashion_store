package pa.backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import pa.backend.dao.CategoryDAO;
import pa.backend.dto.Category;

public class CategoryTestCase {
	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;
	private static Category category;
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("pa.backend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}
	@Test
	public void testAddCategory() {
		category = new Category();
		category.setDescription("Shirts Description");
		category.setImageURL("Shirt.PNG");
		category.setName("Shirts");
		assertEquals("Added Category Successfully",true,categoryDAO.addCategory(category));
	}
}
