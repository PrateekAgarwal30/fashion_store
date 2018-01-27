package pa.backend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pa.backend.dao.ProductDAO;
import pa.backend.dto.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> list() {
		String selectAllProducts = "FROM Product";

		Query query = sessionFactory.getCurrentSession().createQuery(selectAllProducts);

		return query.getResultList();
	}

	@Override
	public Product get(int id) {

		return sessionFactory.getCurrentSession().get(Product.class, Integer.valueOf(id));
	}

	@Override
	public boolean addProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().persist(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean updateProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteProduct(Product product) {
		try {
			product.setActive(false);
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Product> getAllAvailableProducts() {
		try {
			String selectActiveProducts = "FROM Product WHERE active = :active";
			Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProducts);
			query.setParameter("active", true);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Product> getAvailableProductsByCategoryId(int categoryId) {
		try {
			String selectActiveProducts = "FROM Product WHERE active = :active and categoryId = :categoryId";
			Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProducts);
			query.setParameter("active", true);
			query.setParameter("categoryId",categoryId);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Product> getLatestAvailableProducts(int count) {
		try {
			String latestAvailableProducts = "FROM Product where active = :active order by id";
			Query query = sessionFactory.getCurrentSession().createQuery(latestAvailableProducts);
			return query.setParameter("active", true).setFirstResult(0).setMaxResults(count).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public List<Product> getLatestAvailableProductsByCategoryId(int categoryId, int count) {
		try {
			String latestAvailableProducts = "FROM Product where active = :active and categoryId = :categoryId order by id";
			Query query = sessionFactory.getCurrentSession().createQuery(latestAvailableProducts);
			return query.setParameter("active", true).setParameter("categoryId",categoryId).setFirstResult(0).setMaxResults(count).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
