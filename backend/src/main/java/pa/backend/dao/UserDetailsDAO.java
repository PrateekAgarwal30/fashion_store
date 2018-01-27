package pa.backend.dao;

import java.util.List;

import pa.backend.dto.UserDetails;

public interface UserDetailsDAO {

	List<UserDetails> list();

	UserDetails get(int id);

	boolean addUserDetails(UserDetails userDetails);

	boolean updateUserDetails(UserDetails userDetails);

	boolean deleteUserDetails(UserDetails userDetails);

}
