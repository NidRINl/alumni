package com.university.alumni.dao;

import com.university.alumni.entity.User;

import java.util.List;

/**
 * Created by wm on 2017/1/19.
 */
public interface UserDao {
    public User addUser(User user);
    public User findByName(String name);
    public List<User> getUserList(Integer role);
    public List<User> getAdminList(Integer role);
    public User findById(Integer id);
    public User modifyUser(User user);
}
