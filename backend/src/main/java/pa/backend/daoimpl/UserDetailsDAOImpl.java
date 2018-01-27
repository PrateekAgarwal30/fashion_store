package pa.backend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pa.backend.dao.UserDetailsDAO;
import pa.backend.dto.UserDetails;

@Repository("userDetailsDAO")
@Transactional
public class UserDetailsDAOImpl implements UserDetailsDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<UserDetails> list() {
		try {
			String allUserDetails = "FROM UserDetails";
			Query query = sessionFactory.getCurrentSession().createQuery(allUserDetails);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public UserDetails get(int id) {
		try {
			return sessionFactory.getCurrentSession().get(UserDetails.class, Integer.valueOf(id));
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean addUserDetails(UserDetails userDetails) {
		try {
			sessionFactory.getCurrentSession().persist(userDetails);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateUserDetails(UserDetails userDetails) {
		try {
			sessionFactory.getCurrentSession().update(userDetails);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteUserDetails(UserDetails userDetails) {
		try {
			userDetails.setEnabled(false);
			sessionFactory.getCurrentSession().update(userDetails);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
