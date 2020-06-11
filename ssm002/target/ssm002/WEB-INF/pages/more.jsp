<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/7
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/path.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <title>后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="http://fonts.googleapis.com/css?family=Oxygen|Marck+Script" rel="stylesheet" type="text/css">
    <link href="${path}/static/assets/css/bootstrap.css" rel="stylesheet">
    <link href="${path}/static/assets/css/font-awesome.css" rel="stylesheet">
    <link href="${path}/static/assets/css/admin.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="${path}/static/http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>

<div class="container">

    <div class="row">

        <div class="span2">

            <div class="main-left-col">

                <h1><i class="icon-shopping-cart icon-large"></i> Adminize</h1>

                <ul class="side-nav">

                    <li>
                        <a href="doLogin.do"><i class="icon-home"></i> Dashboard</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#website-dropdown" href="#"><i class="icon-sitemap"></i> 商品管理 <b class="caret"></b></a>
                        <ul id="website-dropdown" class="collapse">
                            <li><a href="getPros.do">商品列表</a></li>
                            <li><a href="listing.html">Menus</a></li>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#store-dropdown" href="#"><i class="icon-shopping-cart"></i> 品类管理 <b class="caret"></b></a>
                        <ul id="store-dropdown">
                            <%--<li><a href="">Catalogue</a></li>--%>
                            <li class="active"><a href="category.do">品类管理</a></li>
                            <li><a href="more.jsp">更多</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#reports-dropdown" href="#"><i class="icon-signal"></i> Reports <b class="caret"></b></a>
                        <ul id="reports-dropdown" class="collapse">
                            <li><a href="report.html">Sales Reports</a></li>
                            <li><a href="report.html">Product Popularity</a></li>
                            <li><a href="report.html">Member Registrations</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#members-dropdown" href="#"><i class="icon-group"></i> 用户管理 <b class="caret"></b></a>
                        <ul id="members-dropdown" class="collapse">
                            <li><a href="table.do">用户列表</a></li>
                            <li><a href="listing.html">User Groups</a></li>
                            <li><a href="listing.html">Permissions</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#settings-dropdown" href="#"><i class="icon-cogs"></i> Settings <b class="caret"></b></a>
                        <ul id="settings-dropdown" class="collapse">
                            <li><a href="listing.html">Payment Processors</a></li>
                            <li><a href="listing.html">Order Statuses</a></li>
                            <li><a href="listing.html">Shipping Methods</a></li>
                            <li><a href="listing.html">Emails</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="icon-bullhorn"></i> Alerts <span class="badge badge-warning">2</span></a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#help-dropdown" href="#"><i class="icon-info-sign"></i> Help <b class="caret"></b></a>
                        <ul id="help-dropdown" class="collapse">
                            <li><a href="content.html">FAQ</a></li>
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
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-user"></i> John Smith <b class="caret"></b>
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

                            <table id="example" class="orders-table table">
                                <thead>
                                <tr>
                                    <th >ID</th>
                                    <th>名称</th>
                                    <th>状态</th>
                                    <th>创建时间</th>
                                    <th>更新时间</th>
                                    <th>操作</th>
                                    <th>查看</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${voss}" var="categoryList">
                                    <tr>
                                            <%--<td><input name="" type="checkbox" value=""></td>--%>
                                        <td>${categoryList.id}</td>
                                        <td>${categoryList.parentId}</td>
                                        <td>${categoryList.name}</td>
                                        <td>${categoryList.status}</td>
                                        <td>${categoryList.createTime}</td>
                                        <td>${categoryList.updateTime}</td>
                                            <%--<td><<a href=""></a></td>--%>
                                            <%--<td class="td-manage" ><a style="text-decoration:none" class="btn btn-small btn-primary" onClick="product_stop(this,'10001')" href="javascript:" title="下架"><i class="Hui-iconfont">&#xe6de;</i>下架</a> <a style="text-decoration:none" class="btn btn-small btn-primary" class="ml-5" onClick="product_edit('产品编辑','updateHandle.do?id=${handle.id}','10001')" href="javascript:" title="编辑"><i class="Hui-iconfont">&#xe6df;</i>编辑</a></td>--%>
                                        <td><a class="btn btn-small btn-primary" href="padd.do">添加</a> <a class="btn btn-small btn-primary"  href="updateCategory.do?id=${categories.id}">编辑</a></td>
                                        <td><a class="btn btn-small btn-primary" href="more.do">更多</a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </div>

                    </div>

                </div>
            </div>

        </div> <!-- end span10 -->

    </div> <!-- end row -->

</div> <!-- end container -->
<script src="${path}/static/assets/js/jquery.min.js"></script>
<script src="${path}/static/assets/js/bootstrap.js"></script>


</body>
</html>