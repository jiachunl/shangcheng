package com.itdr.service;

import com.itdr.dao.UserDao;
import com.itdr.pojo.User;
import com.itdr.utils.MD5Utils;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao dao;
    @Override
    public List<User> getAll() {
        return dao.getAll();
    }
/*用户列表，获取所有用户信息*/
    @Override
    public List<User> getUsers() {
        return dao.getUsers();
    }

    @Override
    public List<User> getAllUser() {
        return dao.getAllUser();
    }

    @Override
    public User getUser(String username) {
        return dao.getUser(username);
    }
/*添加用户*/
    @Override
    public int addUsers(User users) {
        return dao.addUsers(users);
    }
/*修改用户*/
    @Override
    public int updateUser(User users) {
        return dao.updateUser(users);
    }

    @Override
    public User getUserById(Integer id) {
        return dao.getUserById(id);
    }

    @Override
    public int delUser(Integer id) {
        return dao.delUser(id);
    }

    @Override
    public List<User> update() {
        return dao.update();
    }

    /*登录*/
    @Override
    public User getUserByUnameAndPwd(String username, String password) {
        return dao.getUserByUnameAndPwd(username,password);
    }

    @Override
    public User getId(Integer id) {
        return dao.getId(id);
    }

    @Override
    public Boolean isUserExist(String username) {
        if (dao.getUser(username) == null) {
            return false;
        } else {
            return true;
        }
    }

    @Override
    public String getPasswordByUsername(String username) {
        return dao.getUser(username).getPassword();
    }

    @Override
    public int updatePwdByUname(String username, String password) {
        return dao.updatePwdByUname(username,password);
    }

}
