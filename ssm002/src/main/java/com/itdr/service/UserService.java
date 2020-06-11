package com.itdr.service;

import com.itdr.pojo.User;

import java.util.List;

public interface UserService {
    List<User> getAll();
    List<User> getUsers();
    List<User> getAllUser();
    User getUser(String username);
    int addUsers(User users);
    int updateUser(User users);
    User getUserById(Integer id);
    int delUser(Integer id);
    List<User> update();
    User getUserByUnameAndPwd(String username, String password);
    User getId(Integer id);
    Boolean isUserExist(String username);
    String getPasswordByUsername(String username);
    int updatePwdByUname(String username,String password);


}
