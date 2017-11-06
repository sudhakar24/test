package com.smartkartbackend;






import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.UserDao;
import com.model.User;

public class userTest {
	
	static UserDao userDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		userDao=(UserDao)configApplnContext.getBean("userDao");
	}
	@Test
	public void adduserTest()
	{
		User user=new User();
		user.setEmail("ssudhakar@gmail.com");
		user.setFirstname("first");
		user.setLastname("s");
		user.setPassword("pass");
	assertTrue("user",userDao.addUser(user));
	}

}
