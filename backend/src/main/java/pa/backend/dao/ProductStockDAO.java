package pa.backend.dao;

import pa.backend.dto.ProductStock;

public interface ProductStockDAO {

	ProductStock get(int id);

	boolean addProductStock(ProductStock productStock);

	boolean updateProductStock(ProductStock productStock);

	boolean deleteProductStock(ProductStock productStock);
}
