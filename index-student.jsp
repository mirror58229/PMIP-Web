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
                            <li><a href="modifyPassword.jsp">修改密码</a></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .col-md-6 close -->
        </div><!-- .row close -->
        <div class="row ">
            <div class="col-md-4">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active">
                        <a href="#" data-toggle="tab" class="PersonalManagement">个人管理</a>
                    </li>
                    <li>
                        <a href="www.baidu.com" data-toggle="tab" class="MaterialManagement">材料管理</a>
                    </li>
                    <li>
                        <a href="#" data-toggle="tab" class="Alerts" class="badge pull-right"><span
                                class="badge pull-right">3</span>消息通知</a>
                    </li>
                </ul>
            </div>
        </div>
    </div><!-- .container close -->
</section><!-- #heder close -->


<div class="container">
    <div class="row">
        <div class="col-md-2">
            <ul class="nav nav-stacked nav-pills" id="LeftPM">
                <li>
                    <a href="#" class="PersonalInformation">个人信息</a>
                </li>
                <li>
                    <a href="#" class="PartyInformation">党籍信息</a>
                </li>
                <li>
                    <a href="#" class="RewardsAndPunishments">奖惩信息</a>
                </li>
            </ul>
            <ul class="nav nav-stacked nav-pills" id="LeftMM">
                <li>
                    <a href="#" class="UploadedMaterial">已上传材料</a>
                </li>
                <li>
                    <a href="#" class="UploadMaterial">材料上传</a>
                </li>
                <li>
                    <a href="#" class="ApplicationMaterial">申请认证</a>
                </li>
            </ul>
            <ul class="nav nav-stacked nav-pills" id="LeftAlerts">
                <li>
                    <a href="#" class="CommonFile">常用文件</a>
                </li>
                <li class="#">
                    <a href="#" class="Notification"><span class="badge pull-right">3</span>查看通知</a>
                </li>
            </ul>
        </div>
        
        <div class="col-md-8">
            <div class="MidPersonalInformation">
                <table class="table table-bordered">
                    <caption><h2>个人信息</h2></caption>
                    <tbody>
                    <tr>
                        <th>姓名</th>
                        <td>
                            <c:set target="${student}" property="studentname" value="李金桥"></c:set><!-- ************* -->
                            ${student.studentname }
                        </td>
                        <th>性别</th>
                        <td>
                            <c:set target="${student}" property="sex" value="女"></c:set><!-- ************* -->
                            ${student.sex }
                        </td>
                    </tr>
                    <tr>
                        <th>学号</th>
                        <td>
                            <c:set target="${student}" property="studentnumber" value="1506010518"></c:set><!-- ************* -->
                            ${student.studentnumber }
                        </td>
                        <th>年级专业班级</th>
                        <td>
                        	 <c:set target="${student}" property="studentclass" value="15计算机5班"></c:set><!-- ************* -->
                        	${student.studentclass }
                        </td>
                    </tr>
                    <tr>
                        <th>政治面貌</th>
                        <td>
                            <c:set target="${student}" property="state" value="党员"></c:set><!-- ************* -->
                            ${student.state}
                        </td>
                        <th>邮箱</th>
                        <td>
                            <c:set target="${student}" property="email" value="lijinqiao@hhu.com"> </c:set><!-- ************* -->
                            ${student.email}
                        </td>
                    </tr>
                    <tr>
                        <th>绩点</th>
                        <td>
                            <c:set target="${gradetable}" property="grade" value="2.9"></c:set><!-- ************* -->
                            ${gradetable.grade}
                        </td>
                        <th>排名</th>
                        <td>暂无此数据</td>
                    </tr>
                    <tr>
                        <th>四级</th>
                        <td>
                            <c:set target="${gradetable}" property="cet4grade" value="424"></c:set><!-- ************* -->
                            ${gradetable.cet4grade}
                        </td>
                        <th>六级</th>
                        <td>
                            <c:set target="${gradetable}" property="cet6grade" value="666"></c:set><!-- ************* -->
                            ${gradetable.cet6grade}
                        </td>
                    </tr>
                    <tr>
                        <th>计算机等级考试</th>
                        <td>暂无此数据</td>
                    </tr>
                    <tr>
                        <th>社会工作</th>
                        <td>暂无此数据</td>
                    </tr>
                    <tr>
                        <th>获得奖项</th>
                        <td>暂无此数据</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            
            
            
            
            
            <div class="MidPartyInformation">
                <table class="table table-bordered">
                    <caption><h2>党籍信息</h2></caption>
                    <tbody>
                    <tr>
                        <th>时间</th>
                        <th>事件</th>
                    </tr>
                    <tr>
                        <td>
                            <c:set target="${student}" property="indirectingtime" value="2017"></c:set><!-- ************* -->
                            ${student.indirectingtime}
                        </td>
                        <td>推优时间</td>
                    </tr>
                    <tr>
                        <td>
                            <c:set target="${student}" property="activisttime" value="2017"></c:set><!-- ************* -->
                            ${student.activisttime}
                        </td>
                        <td>积极分子时间</td>
                    </tr>
                    <tr>
                        <td>
                            <c:set target="${student}" property="developementtime" value="2017"></c:set><!-- ************* -->
                            ${student.developementtime}
                        </td>
                        <td>发展党员时间</td>
                    </tr>
                    <tr>
                        <td>
                            <c:set target="${student}" property="probationarytime" value="2017"></c:set><!-- ************* -->
                            ${student.probationarytime}
                        </td>
                        <td>预备党员时间</td>
                    </tr>
                    <tr>
                        <td>
                            <c:set target="${student}" property="fullmembertime" value="2017"></c:set><!-- ************* -->
                            ${student.fullmembertime}
                        </td>
                        <td>正式党员时间</td>
                    </tr>
                    </tbody>
                </table>
            </div>
           
           
           
           
            <div class="MidRewardsAndPunishments">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">
                            奖励
                        </h2>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <th>时间</th>
                                <th>称号</th>
                            </tr>
                            <tr>
                                <td>无数据</td>
                                <td>无数据</td>
                            </tr>
                            <tr>
                                <td>无数据</td>
                                <td>无数据</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">
                            惩罚
                        </h2>
                    </div>
                    <div class="panel-body">
                        无数据
                    </div>
                </div>
            </div>
            
            
            
            
            
            <div class="MidUploadedMaterial">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">
                            已上传材料
                        </h2>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <th>材料名称</th>
                                <th>查看材料</th>
                                <th>材料类别</th>
                                <th>材料状态</th>
                            </tr>

                            <tr>
                                <td><c:set target="${material}" property="materialname" value="优秀党员证明材料"></c:set><!-- ************** -->
                                    ${material.materialname}
                                <td><c:set target="${material}" property="materialurl" value="www.baidu.com"></c:set><!-- ************** -->
                                    <a href="#">${material.materialurl}</a>
                                </td>
                                <td>暂无此数据</td>
                                <td><c:set target="${material}" property="state" value="审核中"></c:set><!-- ************** -->
                                    ${material.state}
                                </td>
                            </tr>
                            <tr>
                            <tr>
                                <td><c:set target="${material}" property="materialname" value="社会工作证明材料"></c:set><!-- ************** -->
                                    ${material.materialname}
                                <td><c:set target="${material}" property="materialurl" value="www.baidu.com"></c:set><!-- ************** -->
                                    <a href="#">${material.materialurl}</a>
                                </td>
                                <td>暂无此数据</td>
                                <td><c:set target="${material}" property="state" value="已通过"></c:set><!-- ************** -->
                                    ${material.state}
                                </td>
                            </tr>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            
            
            
            <div class="MidUploadMaterial">
                     <form role="form" method="post" action="${pageContext.request.contextPath }/material/uploadFile.action" enctype="multipart/form-data">
                    <div class="form-group">
                    	<div class="col-md-12">
                        	<div class="col-lg-4">
                         	</div>
                            <div class="col-lg-4">
		                        <label for="name">材料名称</label>
		                        <select class="form-control selectChoice" name=" "><!-- *********** -->
		                            <option value="0">入党申请</option>
		                            <option value="1">思想汇报</option>
		                            <option value="2">自传</option>
		                        </select>
		                     
		                        <div class="form-group">
		                        <label for="inputfile">上传文件</label>
		                        <input type="file" id="inputfile" name="uploadFile">
		                   		 </div>
		                   		 
		                   		 <c:set target="${material}" property="materialname" value="优秀党员证明材料"></c:set>
		                   		   <% //request.setAttribute("studentname", ${student.studentname } ); %> 
		                   		
		                    	<button type="submit" class="btn btn-default">提交</button>
                    	
                    		</div>
		                </div>
                    </div>
                </form>
            </div>
                        
            <div class="MidApplicationMaterial">
                <form role="form" action="${pageContext.request.contextPath }/student/login.action" method="post">
                
                    <div class="form-group" >
                    
                        <div class="col-md-12">
                        	<div class="col-lg-4">
                         	</div>
                            <div class="col-lg-4">
                        		<label for="name">证明类型</label>
                        		
                        		<select class="form-control" id="showntype" >
                        		<option value="0"></option>
                        		<option value="1">计算机等级考试</option>
                        		<option value="2">四级成绩</option>
                        		<option value="3">六级成绩</option>
                        		<option value="4">社会工作</option>
                                <option value="5">其他</option>
                        		</select>
                        		
                        	</div>
                        </div>  
                        <br>
                         <div class="col-md-12">
                         	<div class="col-lg-4">
                         	</div>
	                        <div class="col-lg-4">
	                        	<div class="cet4add">
	                        		<label for="choosefile">名称</label>
	                        		
	                        		<div id="computerTest">
				                        <select class="form-control" >
				                        	<option value="0"></option>
				                        	<option value="1">全国计算机二级合格</option>
				                        	<option value="2">全国计算机二级优秀</option>
				                        	<option value="3">全国计算机三级合格</option>
				                        	<option value="4">全国计算机三级优秀</option>
				                        	<option value="5">全国计算机四级合格</option>
				                        	<option value="6">全国计算机四级优秀</option>
				                        </select> 
			                        </div>
			                        
			                        <div id="Cet4Test">
				                        <input type="number" name="Cet4" /> 
			                        </div>
			                        
			                        <div id="Cet6Test">
				                        <input type="number" name="Cet6" /> 
			                        </div>
			                        <div id="SocialWork">
			                        	<!--<select class="form-control" >
				                        	<option value="0"></option>
				                        	<option value="1">校级</option>
				                        	<option value="2">院级</option>
				                        	<option value="3">班级</option>
				                        </select> 
				                        <br>-->
				                        <input " name="SocialWork" /> 
				                        
			                        </div>
			                        <div id="others">
				                        <input  name="others" /> 
			                        </div>
			                        
			                        <br>
		                        </div>
	                        </div>
	                    </div>
	                    <div class="col-md-12">
	                    	<div class="col-lg-4">
                         	</div>
		                    <div class="col-lg-4">
		                    	<div class="form-group">
			                        <label for="inputfile">上传文件</label>
			                        <input type="file" id="inputfile">
		                   		</div>
		                   		<button type="submit" class="btn btn-default">提交</button>
	                   		</div>
	                   	</div>
                    </div>
                </form>
            </div>
            
           
            
            
		 	<div class="MidCommonFile">
            	<div class="col-md-12">
                    <a href="#" class="list-group-item ">入党申请表格</a>
                    <a href="#" class="list-group-item">积极分子申请表</a>
                    <a href="#" class="list-group-item">十九大开幕式总结</a>
                    <a href="#" class="list-group-item"></a>
                    <a href="#" class="list-group-item"></a>
            	</div>
			</div>
                
           	
           
           	
           	<div class="MidNotification">
				<div class="col-md-12">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th>标题</th>
								<th>内容</th>
								<th>时间</th>
								<th>状态</th>
							</tr>
							<tr>
								<td><c:set target="${massage}" property="newstitle" value="十九大报告"></c:set>
									${massage.newstitle}
								</td>
								<td><c:set target="${massage}" property="newscontent" value="十九大报告分析"></c:set>
									${massage.newscontent}
								</td>
								<td><c:set target="${massage}" property="newstime" value="2017.09.03"></c:set>
									${massage.newstime}
								</td>
								<td><c:set target="${massage}" property="newstate" value="已读"></c:set>
									${massage.newstate}
								</td>
							</tr>
							<tr>
							<td><c:set target="${massage}" property="newstitle" value="党员培训通知"></c:set>
								${massage.newstitle}
							</td>
							<td><c:set target="${massage}" property="newscontent" value="www.baidu.com"></c:set>
								<a href="#">${massage.newscontent}</a>
							</td>
							<td><c:set target="${massage}" property="newstime" value="2017.10.10"></c:set>
								${massage.newstime}
							</td>
							<td><c:set target="${massage}" property="newstate" value="未读"></c:set>
								${massage.newstate}
							</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>



<!-- footer Start
====================================================================== -->

<div id="footer" style="display: none">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            </div><!-- col-md-12 -->
        </div><!-- .row -->
    </div><!-- .container -->
    <script src="assets/js/jquery-2.1.1.js"></script>
    <script src="assets/js/student.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/bootstrap-fileupload.js"></script>
</div><!-- #footer -->

</body>
</html>
