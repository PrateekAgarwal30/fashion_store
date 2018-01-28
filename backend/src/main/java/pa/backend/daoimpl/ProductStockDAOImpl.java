package pa.backend.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pa.backend.dao.ProductStockDAO;
import pa.backend.dto.ProductStock;

@Repository("productStockDAO")
@Transactional
public class ProductStockDAOImpl implements ProductStockDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public ProductStock get(int id) {
		try {
			return sessionFactory.getCurrentSession().get(ProductStock.class, Integer.valueOf(id));
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean addProductStock(ProductStock productStock) {
		try {
			sessionFactory.getCurrentSession().persist(productStock);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateProductStock(ProductStock productStock) {
		try {
			sessionFactory.getCurrentSession().update(productStock);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteProductStock(ProductStock productStock) {
		try {
			productStock.setENABLED(false);
			sessionFactory.getCurrentSession().update(productStock);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
