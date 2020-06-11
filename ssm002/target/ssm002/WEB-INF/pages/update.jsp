<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/15
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ include file="/path.jsp"%>

<html>
<head>
    <title>更新用户</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-size: 14px;
        }
        #wk{
            display: flex;
            justify-content: center;
            height: 100%;
            margin-top: 150px;

        }
        #container{
            width: 235px;
            height: 300px;
            text-align: center;
            display: flex;
            align-items: center;
        }
        #con-form input{
            margin-top: 20px;
        }
        .cf-f{
            padding-left: 10px;
            height: 25px;
            border-radius: 5px;
            border-width: 1px;
            border-style: solid;
        }
    </style>
</head>
<body>
<div id="wk">
    <div id="container">
        <form id="con-form" action="doCha.do" method="post">
            <input type="text" name="id" value="${user.id}" hidden = "hidden" class="cf-f">
            用户名:<input type="text" name="username" value="${user.username}" class="cf-f"><br>
            密 码：<input type="password" name="password" value="${user.password}" class="cf-f"><br>
            电 话：<input type="text" name="phone" value="${user.phone}" class="cf-f"><br>
            邮 箱：<input type="text" name="email" value="${user.email}" class="cf-f"><br>
            问 题：<input type="text" name="question" value="${user.question}" class="cf-f"><br>
            答 案：<input type="text" name="answer" value="${user.answer}" class="cf-f"><br>
            类 型：<label>管理员:<input type="radio" name="role" value="0" <c:if test="${user.role==0}">checked="checked"</c:if>/></label><label>普通用户:<input type="radio" value="1" <c:if test="${user.role==1}">checked="checked"</c:if>/></label><br>
            <input type="submit" value="修改">
        </form>
    </div>
</div>
</body>
</html>
