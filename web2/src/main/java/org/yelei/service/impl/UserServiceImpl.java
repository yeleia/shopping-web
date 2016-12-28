package org.yelei.service.impl;

import org.springframework.stereotype.Service;
import org.yelei.dao.UserDao;
import org.yelei.entity.User;
import org.yelei.service.UserService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liao on 16-10-12.
 * 根据用户名查询用户名和密码
 */

@Service("userService")
public class UserServiceImpl implements UserService {
    //自动注入bean
    @Resource
    private UserDao userDao;
    public User getByUserName(String userName){
        return userDao.getByUserName(userName);
    }
    public Integer register(User user){
        return userDao.register(user);
    }
    public Integer test(User user){
        return userDao.test(user);
    }
    public User getByPhone(String phone){
        return userDao.getByPhone(phone);
    }
    public User getByTest(String test){
        return userDao.getByTest(test);
    }
    public Integer updateUser(User user){
        return userDao.updateUser(user);
    }
    public Integer image(User user){
        return userDao.image(user);
    }
    public User getByStoreName(String storeName){
        return userDao.getByStoreName(storeName);
    }
    public User selectAdress(Integer id){
        return userDao.selectAdress(id);
    }
    public List<User> selectAll(){
        return userDao.selectAll();
    }
    public Integer deleteUser(Integer id){
        return userDao.deleteUser(id);
    }

    }

