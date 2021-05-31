package com.university.alumni.admin.web.controller;

import com.university.alumni.application.UserService;
import com.university.alumni.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

/**
 * Created by wm on 2017/1/19.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;



    //管理员注册
    @RequestMapping("/addUser")
    public void addUser(String name ,
                        String department,
                        Integer age,
                        Integer sex,
                        String classes,
                        String studentId,
                        String qq,
                        String email,
                        String tel,
                        HttpServletRequest request, HttpServletResponse response){



        userService.addUser(name ,
                department,
                age,
                sex,
                classes,
                studentId,
                qq,
                email,
                tel);
    }

    //管理员登录
    @RequestMapping("/adminLogin")
    public void adminLogin(String username ,String password, HttpServletRequest request, HttpServletResponse response)throws Exception {
        User user=userService.adminLogin(username,password);
        if(user!=null){
            //跳转到首页
            response.sendRedirect("../admin.html");
        }else{
            //跳出提示框
            System.out.println("登录失败");
        }

    }

    //TODO 显示用户列表
    @RequestMapping("/getUserList")
    public void getUserList(Integer role){
        List<User> userList=userService.getUserList(role);
    }

    //TODO 显示管理员列表
    @RequestMapping("/getAdminList")
    public void getAdminList(Integer role){
        List<User> adminList=userService.getAdminList(role);
    }

    //TODO 找回密码
    @RequestMapping("/findPassword")
    public void findPassword(Integer role){
        List<User> adminList=userService.getAdminList(role);
    }

    //TODO 修改密码
    @RequestMapping("/modifyPassword")
    public void modifyPassword(Integer role){
        List<User> adminList=userService.getAdminList(role);
    }

    //TODO 手机验证码
    /*@RequestMapping("/modifyPassword")
    public void modifyPassword(Integer role){
        List<User> adminList=userService.getAdminList(role);
    }*/

    //TODO 修改个人用户
    @RequestMapping("/modifyUser")
    public void modifyUser(Integer id,
                           String name ,
                           String department,
                           Integer age,
                           Integer sex,
                           String classes,
                           String studentId,
                           String qq,
                           String email,
                           String tel,
                           HttpServletRequest request, HttpServletResponse response){
        User user=userService.modifyUser(id,
                name ,
                department,
                age,
                sex,
                classes,
                studentId,
                qq,
                email,
                tel);
    }
}
