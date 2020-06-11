<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/11
  Time: 8:47
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
                        <a href="doLogin.do"><i class="icon-home"></i> 主页</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#website-dropdown" href="#"><i class="icon-sitemap"></i> 商品管理 <b class="caret"></b></a>
                        <ul id="website-dropdown" class="collapse">
                            <li class="active"><a href="getPros.do">商品列表</a></li>
                            <%--<li><a href="listing.html">Menus</a></li>--%>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#store-dropdown" href="#"><i class="icon-shopping-cart"></i> 品类管理 <b class="caret"></b></a>
                        <ul id="store-dropdown" class="collapse">
                            <%--<li><a href="listing.html">Catalogue</a></li>--%>
                            <li><a href="category.do">品类列表</a></li>
                            <%--<li><a href="listing.html">Enquiries</a></li>--%>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#reports-dropdown" href="#"><i class="icon-signal"></i> 图表 <b class="caret"></b></a>
                        <ul id="reports-dropdown">
                            <%--<li class="active"><a href="report.html">Sales Reports</a></li>--%>
                            <li><a href="report.jsp">图表</a></li>
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
                    <%--<li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#help-dropdown" href="#"><i class="icon-info-sign"></i> 修改密码 <b class="caret"></b></a>
                        <ul id="help-dropdown" class="collapse">
                            <li><a href="pass.do">修改密码</a></li>
                            <li class="active"><a href="content.html">User Guide</a></li>
                            <li><a href="content.html">Support</a></li>
                        </ul>
                    </li>--%>
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
                                <h2><i class="icon-signal pull-right"></i>图表</h2>
                            </div>
                            <%--<div id="placeholder" style="height: 400px;"></div>--%>
                            <div id="main" style="width: 600px;height:400px;"></div>

                        </div>

                    </div>

                </div>

            </div>

        </div> <!-- end span10 -->

    </div> <!-- end row -->

</div> <!-- end container -->

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${path}/static/assets/js/jquery-3.3.1.js"></script>
<script src="${path}/static/assets/js/bootstrap.js"></script>
<script src="${path}/static/assets/js/excanvas.min.js"></script>
<script src="${path}/static/js/echarts.min.js"></script>
<script src="${path}/static/assets/js/jquery.flot.min.js"></script>
<script src="${path}/static/assets/js/jquery.flot.resize.js"></script>
<script>
    var names=[];
    var datas=[];
   $(function () {
       $.ajax({
           url:"getAllPros.do",
           type:"get",
           datatype:"json",
           async:false,
           success:function (e) {
               $(e).each(function (index,element) {
                   names[index]=element.name
                   datas[index]=element.stock
               });
               console.log(names)
           }
       })
       // 基于准备好的dom，初始化echarts实例
       var myChart = echarts.init(document.getElementById('main'));

       // 指定图表的配置项和数据
       var option = {
           title: {
               text: '商品库存'
           },
           tooltip: {},
           legend: {
               data:['库存']
           },
           xAxis: {
               data: names
           },
           yAxis: {},
           series: [{
               name: '库存',
               type: 'bar',
               data: datas
           }]
       };

       // 使用刚指定的配置项和数据显示图表。
       myChart.setOption(option);
   })

</script>


</body>
</html>