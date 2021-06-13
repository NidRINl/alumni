package com.university.alumni.application;

import com.university.alumni.entity.User;

/**
 * Created by wm on 2017/1/19.
 */
public interface UserService {
    public User addUser(String name ,
                        String department,
                        Integer age,
                        String classes,
                        String studentId,
                        String qq,
                        String email,
                        String tel);
    public User adminLogin(String name,String password);
}
