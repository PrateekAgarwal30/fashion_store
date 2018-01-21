package pa.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import pa.backend.dao.CategoryDAO;
import pa.backend.dto.Category;
@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	private static List<Category> temp = new ArrayList<>();

	static {
		Category a = new Category();
		a.setId(1);
		a.setDescription("Tshirts");
		a.setImageURL("");
		a.setName("Tshirts");
		temp.add(a);
	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return temp;
	}

}
