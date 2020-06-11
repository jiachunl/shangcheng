<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/path.jsp"%>

<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

    <meta charset="utf-8">
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel="stylesheet" href="${path}/static/assets/css/reset.css">
    <link rel="stylesheet" href="${path}/static/assets/css/supersized.css">
    <link rel="stylesheet" href="${path}/static/assets/css/style.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="${path}/http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

<div class="page-container">
    <h1>注册</h1>
    <form action="doRegister.do" method="post">
        <input type="text" name="username" class="username" placeholder="请输入用户名：">
        <input type="password" name="password" class="password" placeholder="请输入密码：">
        <input type="text" name="email"  placeholder="请输入邮箱：">
        <input type="text" name="phone"  placeholder="请输入电话：">
        <input type="text" name="question"  placeholder="请输入问题：">
        <input type="text" name="answer"  placeholder="请输入答案：">
        请选择角色：管理员:<input type="radio" style="width: 20px;height: 20px"  value="0" name="role" >普通用户:<input type="radio" style="width: 20px;height: 20px" checked="checked" value="1" name="role" >
        <%--<span>${mess}</span>--%>
        <%--<input type="submit" value="注册">--%>

        <button class="sub" type="submit">注册</button>
        <%--<div class="error"><span>${mess}</span></div>--%>
    </form>
</div>

<!-- Javascript -->
<script src="${path}/static/assets/js/jquery-1.8.2.min.js"></script>
<script src="${path}/static/assets/js/supersized.3.2.7.min.js"></script>
<script src="${path}/static/assets/js/supersized-init.js"></script>
<script src="${path}/static/assets/js/scripts.js"></script>
<script>
    $(function () {
        $(".sub").on("click",function () {
            var username=$("input[name=username]").val();
            var password=$("input[name=password]").val();
            var email=$("input[name=email]").val();
            var phone=$("input[name=phone]").val();
            var question=$("input[name=question]").val();
            var answer=$("input[name=answer]").val();
            if (username==""){
                alert("用户名不能为空")
                return;
            }
            if (password==""){
                alert("密码不能为空")
                return;
            }
            if (email==""){
                alert("邮箱不能为空")
                return;
            }
            if (phone==""){
                alert("电话不能为空")
                return;
            }
            if (question==""){
                alert("问题不能为空")
                return;
            }
            if (answer==""){
                alert("答案不能为空")
                return;
            }else {
                $.ajax({
                    url:"/register.do",
                    type:"post",
                    dataType:"json",
                    data:{
                        username:username,
                        password:password,
                        email:email,
                        phone:phone,
                        question:question,
                        answer:answer
                    },
                    success:function (data) {
                        if (data.username==""||data.password==""||data.email==""||data.phone==""||data.question==""||data.answer==""){
                            window.location.href="register"
                        }
                        else {
                            window.location.href="/login.jsp"
                        }
                    }
                })
            }
        })
    })
</script>
</body>

</html>


<%--
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Loding font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,700" rel="stylesheet">

    <!-- Custom Styles -->
    <link rel="stylesheet" type="text/css" href="${path}/static/assets/css/styles.css">

    <title>Login</title>
</head>
<body>

<!-- Backgrounds -->

<div id="login-bg" class="container-fluid">

    <div class="bg-img"></div>
    <div class="bg-color"></div>
</div>

<!-- End Backgrounds -->

<div class="container" id="login">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="login">

                <h5>注册</h5>

                <!-- Loging form -->
                <form action="doRegister.do" method="post">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="请输入用户名：">

                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="请输入密码：">
                    </div>
                    <div class="form-group">
                        <input type="text" name="email" class="form-control"  aria-describedby="emailHelp" placeholder="请输入邮箱：">

                    </div>
                    <div class="form-group">
                        <input type="text" name="phone" class="form-control"  aria-describedby="emailHelp" placeholder="请输入电话:">

                    </div>
                    <div class="form-group">
                        <input type="text" name="question" class="form-control"  aria-describedby="emailHelp" placeholder="请输入问题：">

                    </div>
                    <div class="form-group">
                        <input type="text" name="answer" class="form-control"  aria-describedby="emailHelp" placeholder="请输入答案：">

                    </div>
                    <div class="form-group">
                        &lt;%&ndash;<input type="text" name="role" class="form-control"  aria-describedby="emailHelp" placeholder="Enter email">&ndash;%&gt;
                        请选择角色：管理员:<input type="radio" value="0" name="role" >&nbsp;&nbsp;&nbsp;普通用户:<input type="radio" checked="checked" value="1" name="role" ><br>

                    </div>

                    <input id="sub" type="submit" class="btn btn-lg btn-block btn-success"></input>
                    &lt;%&ndash;<span>${mess}</span>&ndash;%&gt;
                </form>
                <!-- End Loging form -->

            </div>
        </div>
    </div>
</div>
<script src="${path}/static/assets/js/jquery-3.3.1.js"></script>
<script>
    $(function () {
        $("#sub").on("click",function () {
            var username=$("input[name=username]").val();
            var password=$("input[name=password]").val();
            var email=$("input[name=email]").val();
            var phone=$("input[name=phone]").val();
            var question=$("input[name=question]").val();
            var answer=$("input[name=answer]").val();
            var role=$("input[name=role]").val();
            if (username==""){
                alert("用户名不能为空")
                return;
            }
            if (password==""){
                alert("密码不能为空")
                return;
            }
            if (email==""){
                alert("邮箱不能为空")
                return;
            }
            if (phone==""){
                alert("电话不能为空")
                return;
            }
            if (question==""){
                alert("问题不能为空")
                return;
            }
            if (answer==""){
                alert("答案不能为空")
                return;
            }else {
                $.ajax({
                    url:"/register.do",
                    type:"post",
                    dataType:"json",

                    success:function (data) {
                        window.location.href="/login.jsp"
                    }
                })
            }
        })
    })
</script>

</body>
</html>
--%>
