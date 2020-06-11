package com.itdr.test;

import com.itdr.dao.UserDao;
//import org.junit.Test;
//import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

//@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestDemo {
    @Resource
    private UserDao dao;
//    @Test
    public void t(){
        dao.getAll().forEach(System.out::println);
    }
}
