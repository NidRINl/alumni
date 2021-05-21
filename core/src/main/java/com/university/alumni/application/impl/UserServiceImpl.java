package com.university.alumni.application.impl;

import com.university.alumni.application.UserService;
import com.university.alumni.dao.UserDao;
import com.university.alumni.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by wm on 2017/1/19.
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;


    @Override
    @Transactional
    public User addUser(String name ,
                        String department,
                        Integer age,
                        String classes,
                        String studentId,
                        String qq,
                        String email,
                        String tel) {
        User user=new User();
        user.setName(name);
        user.setAge(age);
        user.setDepartment(department);
        user.setClasses(classes);
        user.setStudentId(studentId);
        user.setEmail(email);
        user.setQq(qq);
        user.setTel(tel);
        return userDao.addUser(user);
    }

    @Override
    @Transactional
    public User adminLogin(String name, String password) {
        User user=userDao.findByName(name);
        if(password.trim().equals(user.getPassword())){
            return user;
        }else{
            return null;
        }

    }
}
