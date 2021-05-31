package com.university.alumni.application;

import com.university.alumni.entity.User;

import java.util.List;

/**
 * Created by wm on 2017/1/19.
 */
public interface UserService {
    //添加管理员用户
    public User addUser(String name ,
                        String department,
                        Integer age,
                        Integer sex,
                        String classes,
                        String studentId,
                        String qq,
                        String email,
                        String tel);

    //管理员用户登录
    public User adminLogin(String name,String password);

    //获得用户列表
    public List<User> getUserList(Integer role);

    //获得管理员列表
    public List<User> getAdminList(Integer role);

    //根据id修改用户信息
    public User modifyUser(Integer id,
                           String name ,
                           String department,
                           Integer age,
                           Integer sex,
                           String classes,
                           String studentId,
                           String qq,
                           String email,
                           String tel);
}
