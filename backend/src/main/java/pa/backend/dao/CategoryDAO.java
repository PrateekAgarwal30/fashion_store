package pa.backend.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pa.backend.dto.Category;

public interface CategoryDAO {
	List<Category> list();

	Category get(int id);
}
