<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/path.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>添加用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <style>
        body{
            margin: 0;
            padding: 0;
            font-size: 14px;
            /*background-color: aqua;*/
            /*background-image: url(../pages/);*/
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
            /*border: 3px black double;*/
            text-align: center;
            display: flex;
            align-items: center;
            /*background-color: bisque;*/
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
        <form action="doAdd.do" method="post" id="con-form">
            用户名:<input type="text" name="username" id="uname" class="cf-f"><br>
            密 码：<input type="password" name="password" class="cf-f"><br>
            电 话：<input type="text" name="phone" class="cf-f"><br>
            邮 箱：<input type="text" name="email" class="cf-f"><br>
            问 题：<input type="text" name="question" class="cf-f"><br>
            答 案：<input type="text" name="answer" class="cf-f"><br>
            类 型：<label>管理员:<input type="radio" value="0" name="role"></label><label>普通用户:<input type="radio" value="1" name="role" ></label><br>
            <%--状 态：<label>已禁用:<input type="radio" value="1" disabled name="stats"></label><label>未禁用:<input type="radio" checked="checked" value="0" name="stats"></label><br>--%>
            <input type="submit" value="添加" class="cf-f">
        </form>
    </div>
</div>
</body>
</html>