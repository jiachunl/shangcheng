<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/19
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = "";
    if(request.getServerPort()==80){
        path = request.getScheme()+"://"+request.getServerName()+request.getContextPath();
    }else {
        path = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
    }
    pageContext.setAttribute("path",path);
%>
