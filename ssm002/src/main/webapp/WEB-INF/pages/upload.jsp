<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/19
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/path.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="doUpload.do" method="post" enctype="multipart/form-data">
    <input type="file" name="pic">
    <br/>
    <input type="submit" value="图片上传">
</form>
</body>
</html>
