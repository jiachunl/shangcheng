<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/1
  Time: 18:59
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

                    <li class="active">
                        <a href="doLogin.do"><i class="icon-home"></i> 主页</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#website-dropdown" href="#"><i class="icon-sitemap"></i> 商品管理 <b class="caret"></b></a>
                        <ul id="website-dropdown" class="collapse">
                            <li><a href="getPros.do">商品列表</a></li>
                            <%--<li><a href="listing.html">Menus</a></li>--%>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#store-dropdown" href="#"><i class="icon-shopping-cart"></i> 品类管理 <b class="caret"></b></a>
                        <ul id="store-dropdown" class="collapse">
                            <%--<li><a href="listing.html">fhrth</a></li>--%>
                            <li><a href="category.do">品类列表</a></li>
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
                    <%--<li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#help-dropdown" href="#"><i class="icon-info-sign"></i> 修改密码 <b class="caret"></b></a>
                        <ul id="help-dropdown" class="collapse">
                            <li><a href="pass.do">密码</a></li>
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

                        <div class="slate clearfix">

                            <a class="stat-column" href="#">

                                <span class="number">16</span>
                                <span>Open Orders</span>

                            </a>

                            <a class="stat-column" href="#">

                                <span class="number">452</span>
                                <span>Members</span>

                            </a>

                            <a class="stat-column" href="#">

                                <span class="number">$2,512</span>
                                <span>Revenue</span>

                            </a>

                            <a class="stat-column" href="#">

                                <span class="number">348</span>
                                <span>Subscribers</span>

                            </a>

                        </div>

                    </div>

                </div>

                <div class="row">

                    <div class="span5">

                        <div class="slate">

                            <div class="page-header">
                                <h2><i class="icon-signal pull-right"></i>Stats</h2>
                            </div>
                            <div id="placeholder" style="height: 297px;"></div>

                        </div>

                    </div>

                    <div class="span5">

                        <div class="slate">

                            <div class="page-header">
                                <h2><i class="icon-shopping-cart pull-right"></i>Latest Orders</h2>
                            </div>

                            <table class="orders-table table">
                                <tbody>
                                <tr>
                                    <td><a href="">#12345 - Joe Bloggs</a> <span class="label label-info">Paid</span></td>
                                    <td>$112.00</td>
                                </tr>
                                <tr>
                                    <td><a href="">#12345 - Joe Bloggs</a> <span class="label label-success">Dispatched</span></td>
                                    <td>$112.00</td>
                                </tr>
                                <tr>
                                    <td><a href="">#12345 - Joe Bloggs</a> <span class="label label-important">Refunded</span></td>
                                    <td>$112.00</td>
                                </tr>
                                <tr>
                                    <td><a href="">#12345 - Joe Bloggs</a> <span class="label">Awaiting Payment</span></td>
                                    <td>$112.00</td>
                                </tr>
                                <tr>
                                    <td><a href="">#12345 - Joe Bloggs</a> <span class="label label-inverse">Failed</span></td>
                                    <td>$112.00</td>
                                </tr>
                                <tr>
                                    <td><a href="">#12345 - Joe Bloggs</a> <span class="label label-warning">Cancelled</span></td>
                                    <td>$112.00</td>
                                </tr>
                                <tr>
                                    <td><a href="">#12345 - Joe Bloggs</a> <span class="label label-info">Paid</span></td>
                                    <td>$112.00</td>
                                </tr>
                                <tr>
                                    <td colspan="2"><a href="">View more orders</a></td>
                                </tr>
                                </tbody>
                            </table>

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
<script src="${path}/static/assets/js/jquery.flot.min.js"></script>
<script src="${path}/static/assets/js/jquery.flot.resize.js"></script>
<script type="text/javascript">
    $(function () {
        var d1 = [];
        d1.push([0, 32]);
        d1.push([1, 30]);
        d1.push([2, 24]);
        d1.push([3, 17]);
        d1.push([4, 11]);
        d1.push([5, 25]);
        d1.push([6, 28]);
        d1.push([7, 36]);
        d1.push([8, 44]);
        d1.push([9, 52]);
        d1.push([10, 53]);
        d1.push([11, 50]);
        d1.push([12, 45]);
        d1.push([13, 42]);
        d1.push([14, 40]);
        d1.push([15, 36]);
        d1.push([16, 34]);
        d1.push([17, 24]);
        d1.push([18, 17]);
        d1.push([19, 17]);
        d1.push([20, 20]);
        d1.push([21, 28]);
        d1.push([22, 36]);
        d1.push([23, 38]);

        $.plot($("#placeholder"), [ d1 ], { grid: { backgroundColor: 'white', color: '#999', borderWidth: 1, borderColor: '#DDD' }, colors: ["#FC6B0A"], series: { lines: { show: true, fill: true, fillColor: "rgba(253,108,11,0.4)" } } });
    });
</script>


</body>
</html>