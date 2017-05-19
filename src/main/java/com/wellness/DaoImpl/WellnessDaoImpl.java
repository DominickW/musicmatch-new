package com.wellness.DaoImpl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.wellness.Dao.WellnessDao;
import com.wellness.Repository.HibernateUtil;
import com.wellness.model.UserLogin;

@Repository
public class WellnessDaoImpl implements WellnessDao{

	@Autowired
	DataSource dataSource;
	
	public WellnessDaoImpl() {
    	System.out.println("WellnessDaoImpl");
    }
	
	@Autowired
    private HibernateUtil hibernateUtil;


	@Override
	public boolean findUser(String email) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    	String sql = "select emailAddress from wellness.users where emailAddress = ? ";
        
        try {
        	jdbcTemplate.queryForObject(sql, String.class, email);
        	System.out.println("true" );
            return true;
        } catch (EmptyResultDataAccessException e) {
        	System.out.println("false");
            return false;
        }
	}

	
	@Override
	public long createUser(UserLogin userLogin) {
		return (Long) hibernateUtil.create(userLogin);
	}

	@Override
	public UserLogin updateUser(UserLogin userLogin) {
		return hibernateUtil.update(userLogin);
		}

	@Override
	public void deleteUserById(long id) {
		UserLogin userLogin = new UserLogin();
		userLogin.setId(id);
        hibernateUtil.delete(userLogin);
		
	}

	@Override
	public List<UserLogin> getAllusers() {
		return hibernateUtil.fetchAll(UserLogin.class);
	}

	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public UserLogin getUserByEmailId(String email){
		String sql = "SELECT * FROM wellness.users where emailAddress= ?";
     JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
     UserLogin userLogin = (UserLogin) jdbcTemplate.queryForObject(
     sql, new Object[] { email }, new BeanPropertyRowMapper(UserLogin.class));
     return userLogin;
	}


	@Override
	public UserLogin getUserById(long id) {
		UserLogin userLogin = new UserLogin();
		userLogin.setId(id);
		return hibernateUtil.fetchById(id, UserLogin.class);
	}


	@Override
	public void updaterole(UserLogin userLogin, String role, long id) {    	
    	String UpdateSql = "UPDATE users SET roles=? where id=? ";    	
  	     JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		  	  jdbcTemplate.update(
		  			UpdateSql,
		  			new Object[] { 		   
		  					    userLogin.getRoles(), 
		  					    userLogin.getId()
		  					  
		  						});  
		  	
		  	
  	  }


	   


	@Override
	 public void passReset(UserLogin userLogin, String pass, String email) {    	
    	String UpdateSql = "UPDATE users SET password=? where emailAddress=? ";    	
  	     JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		  	  jdbcTemplate.update(
		  			UpdateSql,
		  			new Object[] { 		   
		  					    userLogin.getPassword(), 
		  					    userLogin.getEmailAddress()
		  					  
		  						});  
		  	
		  	
  	  }


	@Override
	public void updateSubscription(UserLogin userLogin, String membership, long id) {    	
    	String UpdateSql = "UPDATE users SET subscription=? where id=? ";    	
  	     JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		  	  jdbcTemplate.update(
		  			UpdateSql,
		  			new Object[] { 		   
		  					    userLogin.getSubscription(), 
		  					    userLogin.getId()
		  					  
		  						});  
		  	
		  	
  	  }


	@Override
	@SuppressWarnings("rawtypes")
	public List<UserLogin> lookupMembers(String name) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);        	
       	final String sql  = "SELECT m.* FROM wellness.users m WHERE m.lname like '%"+ name +"%'";
       	@SuppressWarnings("unchecked")
   		List<UserLogin> memberList = jdbcTemplate.query(sql, new BeanPropertyRowMapper( UserLogin.class ));						
   		return memberList;
   		 
	}

	@Override
	public void updateUserById(UserLogin userLogin, long id) {

		String UpdateSql = "UPDATE users SET address=?, age=?, card=?, city=?, emailAddress=?, fname=?,"
		         + " lname=?, state=?, tel=?, zip=?, subscription=? where id=? ";    	
	     JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
	  	  jdbcTemplate.update(
	  			UpdateSql,
	  			new Object[] { 
	  					userLogin.getAddress(),
	  					userLogin.getAge(),
	  					userLogin.getCard(),
	  					userLogin.getCity(),
	  					userLogin.getEmailAddress(),
	  					userLogin.getFname(),
	  					userLogin.getLname(),
	  					userLogin.getState(),
	  					userLogin.getTel(),
	  					userLogin.getZip(),
	  					userLogin.getSubscription(),
	  					userLogin.getId()
	  					
	  					}); 	  			
	     }
	
	@SuppressWarnings("unchecked")
	@Override
	public List<UserLogin> getUserByName(String lastname) { 
		
		String query = "SELECT m.* FROM wellness.users m WHERE m.lname like '%"+ lastname +"%'";
		List<Object[]> UserLoginObjects = hibernateUtil.fetchAll(query);
		List<UserLogin> UserLogins = new ArrayList<UserLogin>();
		for(Object[] UserLoginObject: UserLoginObjects) {
			UserLogin UserLogin = new UserLogin();
			//id, address, age, card, city, emailAddress, fname, lname, password, roles, state, tel, zip, subscription, passwordConfirm
			long id = ((BigInteger) UserLoginObject[0]).longValue();		
			String address = (String) UserLoginObject[1];
			int age = (int) UserLoginObject[2];
			long card = ((BigInteger) UserLoginObject[3]).longValue();		
			String city = (String) UserLoginObject[4];
			String emailAddress = (String) UserLoginObject[5];	
			String fname = (String) UserLoginObject[6];				
			String lname = (String) UserLoginObject[7];
			String membership = (String) UserLoginObject[13];						
			String role = (String) UserLoginObject[9];	
			String state = (String) UserLoginObject[10];
			long tel = ((BigInteger) UserLoginObject[11]).longValue();	
			long zip = ((BigInteger) UserLoginObject[12]).longValue();	
			
            UserLogin.setId(id);
            UserLogin.setAddress(address);			
			UserLogin.setAge(age);
			UserLogin.setCard(card);
			UserLogin.setCity(city);
			UserLogin.setLname(lname);
			UserLogin.setFname(fname);			
			UserLogin.setEmailAddress(emailAddress);
			UserLogin.setSubscription(membership);
			UserLogin.setRoles(role);
			UserLogin.setTel(tel);
			UserLogin.setState(state);
			UserLogin.setZip(zip);				
			UserLogins.add(UserLogin);
		}
		System.out.println(UserLogins);
		return UserLogins;
	}


	@Override@
	SuppressWarnings({ "rawtypes", "unchecked" })
	public List<UserLogin> lookupCity(String cityOrZip) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource); 
		
       	final String sql  = "SELECT m.* FROM wellness.users m WHERE m.city like '%"+ cityOrZip +"%'"
       			+ " UNION "
       			+ "SELECT m.* FROM wellness.users m WHERE m.zip like '%"+ cityOrZip +"%'";
    
   		List<UserLogin> memberList = jdbcTemplate.query(sql, new BeanPropertyRowMapper( UserLogin.class ));						
   		return memberList;
   		 
	}
	
}
