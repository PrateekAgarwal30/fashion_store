package pa.backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import pa.backend.dao.UserDetailsDAO;
import pa.backend.dto.UserDetails;

public class UserDetailsTestCase {
	private static AnnotationConfigApplicationContext context;
	private static UserDetailsDAO userDetailsDAO;
	private static UserDetails userDetails;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("pa.backend");
		context.refresh();
		userDetailsDAO = (UserDetailsDAO) context.getBean("userDetailsDAO");
	}

	@Test
	public void CrudOperationTest() {
		userDetails = new UserDetails();
		userDetails.setFirstName("PA");
		userDetails.setLastName("AG");
		userDetails.setRole("SUPPLIER");
		userDetails.setEnabled(true);
		userDetails.setEmail("P.A@gmail.com");
		userDetails.setContactNo("1357908642");
		userDetails.setPassword("SUPPLIER");
		assertEquals("get Category id Successfully", 1, userDetailsDAO.get(1).getId());
		assertEquals("User Added Successfully", true, userDetailsDAO.addUserDetails(userDetails));
		userDetails = userDetailsDAO.get(2);
		String temp = "PA.AG@GMAIL.COM";
		userDetails.setEmail(temp);
		assertEquals("User Details Updated Successfully", true, userDetailsDAO.updateUserDetails(userDetails));
		System.out.println(userDetails);
		assertEquals("User Deleted Successfully", true, userDetailsDAO.deleteUserDetails(userDetails));
	}
}