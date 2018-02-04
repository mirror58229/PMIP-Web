<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="student" class="com.data.bean.Person"></jsp:useBean>
<jsp:useBean id="gradetable" class="com.data.bean.Gradetable"></jsp:useBean>
<jsp:useBean id="material" class="com.data.bean.Material"></jsp:useBean>
<jsp:useBean id="massage" class="com.data.bean.Massage"></jsp:useBean>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>党员管理系统-学生端</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/bootstrap-fileupload.min.css">

</head>
<body>

<!-- Add your site or application content here -->

<!-- header Start
================================================= -->

<section id="header">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="block-left">
                    <nav class="navbar navbar-default" role="navigation">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <div class="nav-logo">
                                    <a href="index-student.jsp"><h3>党员信息管理系统</h3></a>
                                </div>
                            </div>
                        </div><!-- /.container-fluid -->
                    </nav>
                </div>
            </div><!-- .col-md-6 -->

            <div class="col-md-6">
                <div class="block-right">
                    <div class="contact-area">
                        <ul>
                            <li><i class="fa fa-user"></i>当前用户：</li>
                            <li><a href="${pageContext.request.contextPath}/student/quit.action">注销</a></li>
                            <li><a href="studentModifyPassword.jsp">修改密码</a></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .col-md-6 close -->
        </div><!-- .row close -->
    </div><!-- .container close -->
</section><!-- #heder close -->

<section id="header">
    <div class="container">
        <div class="row">
		<div class="col-md-2">
        </div>
        <div class="col-md-8">
	        <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/student/modifyPassword.action">
	        	
	            <div class="form-group">
	                <label for="firstname" class="col-sm-2 control-label">e-mail</label>
	                <div class="col-sm-6">
	                    <input type="email" class="form-control" id="email" name="email" placeholder="请输入e-mail">
	                </div>
	                <input type="button" value="免费获取验证码" id="captcha" onclick="settime(this)" />
	            </div>
	           
	            <div class="form-group">
	                <label for="firstname" class="col-sm-2 control-label">验证码</label>
	                <div class="col-sm-6">
	                    <input type="tel" class="form-control" id="vcode" name="verifyCode"  placeholder="请输入验证码">
	                </div>
	            </div>
	            
	            <div class="form-group">
	                <div class="col-sm-offset-2 col-sm-6">
	                    <button type="submit" class="btn btn-default" >进入主页面</button>
	                </div>
	            </div>
	        </form>
        </div>
	</div>
</section>
 
<!-- footer Start
====================================================================== -->

<div id="footer" style="display: none">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            </div><!-- col-md-12 -->
        </div><!-- .row -->
    </div><!-- .container -->
    <script src="assets/js/modifyPassword.js"></script>
    <script src="assets/js/studentEmail.js"></script>
    <script src="assets/js/jquery-2.1.1.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/bootstrap-fileupload.js"></script>
</div><!-- #footer -->

</body>
</html>
