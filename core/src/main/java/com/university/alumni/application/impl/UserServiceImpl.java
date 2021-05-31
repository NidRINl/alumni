package com.university.alumni.application.impl;

import com.university.alumni.application.UserService;
import com.university.alumni.dao.UserDao;
import com.university.alumni.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

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
                        Integer sex,
                        String classes,
                        String studentId,
                        String qq,
                        String email,
                        String tel) {
        User user=new User();
        user.setName(name);
        user.setAge(age);
        user.setSex(sex);
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

    @Override
    public List<User> getUserList(Integer role) {

        return userDao.getUserList(role);
    }

    @Override
    public List<User> getAdminList(Integer role) {
        return userDao.getAdminList(role);
    }

    @Override
    public User modifyUser(Integer id, String name, String department, Integer age, Integer sex, String classes, String studentId, String qq, String email, String tel) {


        User user=userDao.findById(id);
        user.setName(name);
        user.setAge(age);
        user.setSex(sex);
        user.setDepartment(department);
        user.setClasses(classes);
        user.setStudentId(studentId);
        user.setEmail(email);
        user.setQq(qq);
        user.setTel(tel);
        return userDao.modifyUser(user);
    }
}
