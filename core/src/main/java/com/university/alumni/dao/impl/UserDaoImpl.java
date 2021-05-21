package com.university.alumni.dao.impl;

import com.university.alumni.dao.UserDao;
import com.university.alumni.entity.User;
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
}
