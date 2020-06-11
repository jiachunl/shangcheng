


<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/2
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/path.jsp"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="${path}/static/assets/css/bootstrap.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Oxygen|Marck+Script" rel="stylesheet" type="text/css">
    <link href="${path}/static/assets/css/bootstrap.css" rel="stylesheet">
    <link href="${path}/static/assets/css/font-awesome.css" rel="stylesheet">
    <link href="${path}/static/assets/css/admin.css" rel="stylesheet">
    <script src="${path}/static/http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/css/theme.css">
    <style>
        body{
            margin: 0;
            padding: 0;
            font-size: 14px;
            /*background-color: aqua;*/
            /*background-image: url(../../static/images/5.jpg);*/
            /*background-image: url(../pages/);*/
        }
        #wk{
            display: flex;
            justify-content: center;
            height: 100%;
            margin-top: 100px;

        }
        #container{
            width: 290px;
            height: 200px;
            border: 1px black solid;
            text-align: center;
            display: flex;
            align-items: center;
            /*background-color: bisque;*/
        }
        /*#con-form input{
            margin-top: 20px;
        }*/
        .cf-f{
            padding-left: 10px;
            height: 25px;
            border-radius: 5px;
            border-width: 1px;
            border-style: solid;
        }
    </style>

</head>

<body class="flat-blue sidebar-collapse">
<%--${vos}--%>
<div class="container">

    <div class="row">

        <div class="span2">

            <div class="main-left-col">

                <h1><i class="icon-shopping-cart icon-large"></i> Adminize</h1>

                <ul class="side-nav">

                    <li>
                        <a href="doLogin.do"><i class="icon-home"></i> 主页</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#website-dropdown" href="#"><i class="icon-sitemap"></i> 商品管理 <b class="caret"></b></a>
                        <ul id="website-dropdown" class="collapse">
                            <li><a href="pros.jsp">商品列表</a></li>
                            <%--<li><a href="listing.html">Menus</a></li>--%>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#store-dropdown" href="#"><i class="icon-shopping-cart"></i> 品类管理 <b class="caret"></b></a>
                        <ul id="store-dropdown">
                            <%--<li><a href="listing.html">Catalogue</a></li>--%>
                            <li class="active"><a href="handles.do">品类列表</a></li>
                            <%--<li><a href="listing.html">Enquiries</a></li>--%>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#reports-dropdown" href="#"><i class="icon-signal"></i> 图表 <b class="caret"></b></a>
                        <ul id="reports-dropdown" class="collapse">
                            <%--<li><a href="report.html">Sales Reports</a></li>--%>
                            <li><a href="page.do">图表</a></li>
                            <%--<li><a href="report.html">Member Registrations</a></li>--%>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#members-dropdown" href="#"><i class="icon-group"></i> 用户管理 <b class="caret"></b></a>
                        <ul id="members-dropdown" class="collapse">
                            <li><a href="table.do">用户列表</a></li>
                            <%--<li><a href="listing.html">User Groups</a></li>--%>
                            <%--<li><a href="listing.html">Permissions</a></li>--%>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#settings-dropdown" href="#"><i class="icon-cogs"></i> 订单管理 <b class="caret"></b></a>
                        <ul id="settings-dropdown" class="collapse">
                            <li><a href="getOrders.do">订单列表</a></li>
                            <%--<li><a href="listing.html">Order Statuses</a></li>--%>
                            <%--<li><a href="listing.html">Shipping Methods</a></li>--%>
                            <%--<li><a href="listing.html">Emails</a></li>--%>
                        </ul>
                    </li>
                    <%--<li><a href="#"><i class="icon-bullhorn"></i> Alerts <span class="badge badge-warning">2</span></a></li>--%>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#help-dropdown" href="#"><i class="icon-info-sign"></i> 修改密码 <b class="caret"></b></a>
                        <ul id="help-dropdown" class="collapse">
                            <li><a href="pass.jsp">FAQ</a></li>
                            <li class="active"><a href="content.html">User Guide</a></li>
                            <li><a href="content.html">Support</a></li>
                        </ul>
                    </li>
                </ul>

            </div> <!-- end main-left-col -->

        </div> <!-- end span2 -->

        <div class="span10">

            <div class="secondary-masthead">

                <ul class="nav nav-pills pull-right">
                    <li>
                        <a href="#"><i class="icon-globe"></i> View Website</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-user"></i> jialing <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="profile.html">Your Profile</a></li>
                            <li class="active"><a href="form.html">Account Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="log.do">退出</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="breadcrumb">
                    <li>
                        <a href="#">Admin</a> <span class="divider">/</span>
                    </li>
                    <li class="active">Dashboard</li>
                </ul>

            </div>

            <div class="main-area dashboard">
                <div class="row">

                    <div class="span10">

                        <div class="slate">

                            <div class="page-header">
                                <h2>修改密码</h2>
                            </div>
                            <div id="wk">
                                <div id="container">
                                    <form action="doPass.do" method="post" id="con-form">
                                        用户名：<input type="text" name="uname" class="cf-f">
                                        原密码：<input type="password" name="password" id="pwd" placeholder="请输入原密码" class="cf-f"><br>
                                        新密码：<input type="password" name="password" id="npwd" placeholder="请输入新的密码" class="cf-f"><br>
                                        确认密码:<input type="password" name="password" placeholder="请再次输入新密码" class="cf-f"><br>
                                        <input id="btn" type="button" value="添加" class="cf-f">
                                        <span>${mess}</span>
                                    </form>
                                </div>
                            </div>


                        </div>

                    </div>

                </div>
            </div>

        </div> <!-- end span10 -->

    </div> <!-- end row -->

</div> <!-- end container -->
<script src="${path}/static/assets/js/jquery-3.3.1.js"></script>
<script src="${path}/static/assets/js/bootstrap.js"></script>
<script src="${path}/static/js/jquery.dataTables.min.js"></script>
<script>
    $("#btn").click(function () {
        if(pwd === npwd){
            alert("密码一致，不能修改")
        }
    })
    /*$(document).ready(function () {
        var data = window.sessionStorage.getItem("user");
        if (data != null) {
            var users = $.parseJSON(data);
            $("#showName").html(user.username);
        } else {
            $("#showName").append("欢迎");
        }
        if (data != null) {
            var user = $.parseJSON(data);
            $("#id").val(user.id);
            $("#email").val(user.email);
            $("#username").val(user.username);
            $("#password").val(user.password);
            $("#role").val(user.role);
            $("#status").val(user.status);
            $("#regTime").val(user.regTime);
            $("#regIp").val(user.regIp);
        }
    });*/
</script>
</body>
</html>