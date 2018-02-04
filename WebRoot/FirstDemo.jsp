<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="xiaoming" class="com.data.bean.Person"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/main.css">

  </head>
  
  <body>
    <h1>提交给后台</h1>
    <form action="${pageContext.request.contextPath }/student/login.action" method="post">
       <input type="text" name="username"/>
       <br/>
       <input type="password" name="password"/> 
       <br/>
       <input type="submit" value="登录"/> 
    </form>
    <table class="table table-bordered">
        <caption><h2>${uploadResult }</h2></caption>
        <tbody>
            <tr>
                <th>姓名</th>
                <td> <c:out value="${xiaoming.studentname}"></c:out></td>
                <th>性别</th>
                <td><c:out value="${student.sex}"></c:out></td>
            </tr>
       </tbody>
    </table>

    
    
    
    <script src="assets/js/jquery-2.1.1.js"></script>
    <script src="assets/js/student.js"></script>
    <script src="assets/js/bootstrap.js"></script>
  </body>
</html>
