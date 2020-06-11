package com.itdr.dao;

import com.itdr.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    List<User> getAll();
    List<User> getUsers();
    List<User> getAllUser();
    User getUser(String username);
    int addUsers(User users);
    User getUserById(Integer id);
    int updateUser(User users);
    int delUser(Integer id);
    List<User> update();
    User getUserByUnameAndPwd(@Param("username") String username, @Param("password") String password);
    User getId(Integer id);
    Boolean isUserExist(String username);
    String getPasswordByUsername(String username);
    int updatePwdByUname(@Param("username") String username,@Param("password") String password);
}
