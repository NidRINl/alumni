package com.university.alumni.dao.impl;

import com.university.alumni.dao.UserDao;
import com.university.alumni.entity.User;
import com.university.common.constant.RoleConstant;
import com.university.common.constant.StatusConstant;
import com.university.common.dao.impl.BaseDaoImpl;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wm on 2017/1/19.
 */
@Repository
public class UserDaoImpl  extends BaseDaoImpl implements UserDao {

    @Override
    public User addUser(User user) {
        save(user);
        return user;
    }

    @Override
    public User findByName(String name) {
        List<Object> params = new ArrayList<Object>();
        params.add(name);
        params.add(1);
        String hql="from User where name = ? and status = ?";
        User user=(User)get(hql,params);
        return user;
    }

    @Override
    public List<User> getUserList(Integer role) {
        List<Object> params = new ArrayList<Object>();
        params.add(RoleConstant.ROLE_USER);
        params.add(StatusConstant.STATUS_VALID);
        String hql="from User where role = ? and status = ?";
        List<User> userList=find(hql,params);
        return userList;
    }

    @Override
    public List<User> getAdminList(Integer role) {
        List<Object> params = new ArrayList<Object>();
        params.add(RoleConstant.ROLE_ADMIN);
        params.add(StatusConstant.STATUS_VALID);
        String hql="from User where role = ? and status = ?";
        List<User> adminList=find(hql,params);
        return adminList;
    }

    @Override
    public User findById(Integer id) {
        List<Object> params = new ArrayList<Object>();
        params.add(id);
        params.add(StatusConstant.STATUS_VALID);
        String hql="from User where userId = ? and status = ?";
        User user=(User)get(hql,params);
        return user;
    }

    @Override
    public User modifyUser(User user) {
        update(user);
        return findById(user.getUserId());
    }
}
