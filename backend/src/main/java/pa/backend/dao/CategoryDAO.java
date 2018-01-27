package pa.backend.dao;

import java.util.List;

import pa.backend.dto.Category;

public interface CategoryDAO {

	List<Category> list();
	

	Category get(int id);

	boolean addCategory(Category category);

	boolean updateCategory(Category category);

	boolean deleteCategory(Category category);

}
