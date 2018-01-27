package pa.backend.dao;

import java.util.List;

import pa.backend.dto.Product;

public interface ProductDAO {

	List<Product> list();

	Product get(int id);

	boolean addProduct(Product product);

	boolean updateProduct(Product product);

	boolean deleteProduct(Product product);

	List<Product> getAllAvailableProducts();

	List<Product> getAvailableProductsByCategoryId(int categoryId);

	List<Product> getLatestAvailableProducts(int count);

	List<Product> getLatestAvailableProductsByCategoryId(int categoryId,int count);
}
