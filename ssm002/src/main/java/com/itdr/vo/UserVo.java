package com.itdr.vo;

import lombok.Data;

@Data
public class UserVo {

    private Integer id;
    private String username;
    private String password;
    private String userpic;
    private String email;
    private String phone;
    private String question;
    private String answer;
    private String role;
    private String createTime;
    private String updateTime;
    private String ip;
    private String token;
}