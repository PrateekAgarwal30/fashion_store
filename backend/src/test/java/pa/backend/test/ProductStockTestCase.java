package pa.backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import pa.backend.dao.ProductStockDAO;
import pa.backend.dto.ProductStock;

public class ProductStockTestCase {
	private static AnnotationConfigApplicationContext context;
	private static ProductStockDAO productStockDAO;
	private static ProductStock productStock;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("pa.backend");
		context.refresh();
		productStockDAO = (ProductStockDAO) context.getBean("productStockDAO");
	}

	@Test
	public void CrudOperationTest() {
		 productStock = new ProductStock();
		 productStock.setXS(4);
		 productStock.setS(5);
		 productStock.setM(6);
		 productStock.setL(7);
		 productStock.setXL(8);
		 productStock.setXXL(9);
		 productStock.setENABLED(true);
		assertEquals("Added ProductStock Successfully", true, productStockDAO.addProductStock(productStock));
		 productStock = productStockDAO.get(1);
		 productStock.setS(0);
		 assertEquals("get ProductStock id Successfully", 1, productStock.getId());
		 assertEquals("ProductStock Update Successfully", true,
		 productStockDAO.updateProductStock(productStock));
		 productStockDAO.deleteProductStock(productStock);
		 assertEquals("ProductStock Enabled Check Successfully", false,
		 productStockDAO.get(1).isENABLED());
		
	}
}
