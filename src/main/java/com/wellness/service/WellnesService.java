package com.wellness.service;


import java.util.List;

import com.wellness.model.UserLogin;

public interface WellnesService {
	
	//users
	public boolean findUser(String email);
	public long createUser(UserLogin userLogin);
	public UserLogin updateUser(UserLogin userLogin);	
	public void deleteUserById(long id);
    public List<UserLogin> getAllusers();
    public UserLogin getUserByEmailId(String email);
    public UserLogin getUserById(long id);
    public void updaterole(UserLogin userLogin, String role, long id);   
    public void passReset(UserLogin userLogin, String pass, String email);
    public void updateSubscription(UserLogin userLogin, String membership, long id);
    public List<UserLogin> lookupMembers(String name);
    public void updateUserById(UserLogin userLogin, long id);
    public List<UserLogin> getUserByName(String user);
    public List<UserLogin> lookupCity(String cityOrZip);
	
}
