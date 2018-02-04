
   <h1>${msg }</h1>
 


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>
    邮箱验证
  </title>
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"/>
  <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
  <link rel="stylesheet" type="text/css" href="assets/css/email.css">
  <script src="assets/js/email.js"></script>
  <meta charset="utf-8">
  <script type="text/javascript">
    function changeMessage() {
  // body...
  document.getElementById('message').style.display='none';
  document.getElementById('empty1').style.display='block';
}

 function check()
 {
   var temp = document.getElementById("email");
   var message = document.getElementById('message');
          //对电子邮件的验证
    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
     if(!myreg.test(temp.value))
      {
           message.style.display='block';
           document.getElementById('empty1').style.display='none';
       }   
       else{
         message.style.display='none';
         document.getElementById('empty1').style.display='block';
      }   

   }

  </script>
</head>
<body>


	<form class="form-inline" role="form" action="${pageContext.request.contextPath }/student/firstLogin.action" method="post">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" id="bord">
				<label class="form-label" id="word">邮箱：</label>
			</div>
			<div class="col-lg-7 col-md-7 col-xs-7 col-sm-7">
				<input type="text" name="email" id="email" style="width: 250px" class="form-control" required autofocus onclick="changeMessage()" onmouseleave="check()" />
			</div>    
			<div class=" col-lg-2 col-md-2 col-xs-2 col-sm-2">
				<input type="submit" name="submit" class="btn btn-info"  value="发送验证码"/>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-3 col-md-3 col-xs- col-sm-3 col-lg-offset-4 col-md-offset-4 col-sm-offset-4 col-xs-offset-4 " id="message">
				<h5>邮箱格式错误</h5>
			</div>   
		</div>
		<div class="row" id="empty1">
		</div>
	</form>


	<form class="form-inline" role="form" action="${pageContext.request.contextPath }/student/firstLogin.action" method="post">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" id="bord">
				<label class="form-label" id="word">验证码：</label>
			</div>
			<div class="col-lg-7 col-md-7 col-xs-7 col-sm-7">
				<input type="text" name="email" id="email" style="width: 250px" class="form-control" required autofocus onclick="changeMessage()" onmouseleave="check()" />
			</div>    
			<div class=" col-lg-2 col-md-2 col-xs-2 col-sm-2">
				<input type="submit" name="submit" class="btn btn-info"  value="进入主页面"/>
			</div>
		</div>    
	
	</form>



  </div>

</body>
</html>