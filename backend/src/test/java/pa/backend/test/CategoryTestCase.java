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

/*	@Test
	public void testAddCategory() {
		category = new Category();
		category.setDescription("Cells Description");
		category.setImageURL("Cells.PNG");
		category.setName("Cells");
		assertEquals("Added Category Successfully", true, categoryDAO.addCategory(category));
	}*/

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
		category = new Category();
		category.setDescription("Cell Description");
		category.setImageURL("Cell.PNG");
		category.setName("Cell");
		assertEquals("Added Category Successfully", true, categoryDAO.addCategory(category));
		category = categoryDAO.get(1);
		category.setName("Mobile");
		assertEquals("get Category id Successfully", 1, category.getId());
		assertEquals("Category Update Successfully", true, categoryDAO.updateCategory(category));
		assertEquals("get Category image Successfully", "Cell.PNG", category.getImageURL());
		assertEquals("get Category name Successfully", "Mobile", category.getName());
		categoryDAO.deleteCategory(category);
		assertEquals("Category isActive Check Successfully", false, categoryDAO.get(1).isActive());
		assertEquals("Size of list should be 3", 0, categoryDAO.list().size());
	}
}
