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
    <title>更新商品</title>
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
        <form id="con-form" action="doUpdatePros.do" method="post">
            <input type="text" name="id" value="${product.id}" hidden = "hidden" class="cf-f">
            名  称:<input type="text" name="name" value="${product.name}" class="cf-f"><br>
            详  情：<input type="text" name="detail" value="${product.detail}" class="cf-f"><br>
            父类id：<input type="text" name="category_id" value="${product.categoryId}" class="cf-f"><br>
            价  格：<input type="text" name="price" value="${product.price}" class="cf-f"><br>
            库  存：<input type="text" name="stock" value="${product.stock}" class="cf-f"><br>
            状  态：<label>在售:<input type="radio" value="1" checked="checked" name="status"></label><label>下架:<input type="radio"  value="2" name="status"></label><label>删除:<input type="radio"  value="3" name="status"></label><br>
            <input type="submit" value="修改">
        </form>
    </div>
</div>
</body>
</html>
