package pa.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pa.backend.dao.CategoryDAO;
import pa.backend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;
	private static List<Category> temp = new ArrayList<>();

	static {
		Category a = new Category();
		a.setId(1);
		a.setDescription("Tshirts");
		a.setImageURL("");
		a.setName("Tshirts");
		temp.add(a);
		Category b = new Category();
		b.setId(2);
		b.setDescription("Pajamas");
		b.setImageURL("");
		b.setName("Pajamas");
		temp.add(b);
		Category c = new Category();
		c.setId(3);
		c.setDescription("Hoodies");
		c.setImageURL("");
		c.setName("Hoodies");
		temp.add(c);
		Category d = new Category();
		d.setId(4);
		d.setDescription("Badges");
		d.setImageURL("");
		d.setName("Badges");
		temp.add(d);
	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return temp;
	}

	@Override
	public Category get(int id) {
		for (Category c : temp) {
			if (c.getId() == id) {
				return c;
			}
		}
		return null;
	}

	@Override
	@Transactional
	public boolean addCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().persist(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
}
