package com.university.alumni.dao;

import com.university.alumni.entity.User;

/**
 * Created by wm on 2017/1/19.
 */
public interface UserDao {
    public User addUser(User user);
    public User findByName(String name);
}
