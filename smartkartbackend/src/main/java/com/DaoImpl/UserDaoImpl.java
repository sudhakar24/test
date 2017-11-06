package com.DaoImpl;



import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.*;
import com.model.*;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public boolean addUser(User user) {
		try
		{
		sessionFactory.getCurrentSession().save(user);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception arised"+e);
		return false;
		}
	}
	
}
