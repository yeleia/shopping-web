package org.yelei.service;

import org.yelei.entity.User;

import java.util.List;

/**
 * Created by liao on 16-10-12.
 * 用户service接口
 */
public interface UserService {

    public User getByUserName(String userName);

    public Integer register(User user);
    public Integer test(User user);
    public User getByPhone(String phone);
    public User getByTest(String test);
    public Integer updateUser(User user);
    public Integer image(User user);
    public User getByStoreName(String storeName);
    public User selectAdress(Integer id);
    public List<User> selectAll();
    public Integer deleteUser(Integer id);
}

