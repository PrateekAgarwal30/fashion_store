package pa.backend.dao;

import java.util.List;

import pa.backend.dto.Category;

public interface CategoryDAO {
	boolean addCategory(Category category);
	List<Category> list();

	Category get(int id);
}
