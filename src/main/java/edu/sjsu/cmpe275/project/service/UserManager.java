package edu.sjsu.cmpe275.project.service;

import java.util.List;

import edu.sjsu.cmpe275.project.entity.UserEntity;

public interface UserManager {
	public void addUser(UserEntity user);
    public List<UserEntity> getAllUsers();
    public void deleteUser(Integer userId);
}
