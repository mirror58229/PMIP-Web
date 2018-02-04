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
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
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
                            ${student.studentname }
                        </td>
                        <th>性别</th>
                        <td>
                            ${student.sex }
                        </td>
                    </tr>
                    <tr>
                        <th>学号</th>
                        <td>
                            ${student.studentnumber }
                        </td>
                        <th>年级专业班级</th>
                    </tr>
                    <tr>
                        <th>政治面貌</th>
                        <td>
                            ${student.state}
                        </td>
                        <th>邮箱</th>
                        <td>
                            ${student.email}
                        </td>
                    </tr>
                    <tr>
                        <th>绩点</th>
                        <td>
                            ${gradetable.grade}
                        </td>
                        <th>排名</th>
                        <td>暂无此数据</td>
                    </tr>
                    <tr>
                        <th>四级</th>
                        <td>
                            ${gradetable.cet4grade}
                        </td>
                        <th>六级</th>
                        <td>
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
                            ${student.indirectingtime}
                        </td>
                        <td>推优时间</td>
                    </tr>
                    <tr>
                        <td>
                            ${student.activisttime}
                        </td>
                        <td>积极分子时间</td>
                    </tr>
                    <tr>
                        <td>
                            ${student.developementtime}
                        </td>
                        <td>发展党员时间</td>
                    </tr>
                    <tr>
                        <td>
                            ${student.probationarytime}
                        </td>
                        <td>预备党员时间</td>
                    </tr>
                    <tr>
                        <td>
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
                                <td>
                                    ${material.materialname}
                                <td>
                                    <a href="#">${material.materialurl}</a>
                                </td>
                                <td>暂无此数据</td>
                                <td>
                                    ${material.state}
                                </td>
                            </tr>
                            <tr>
                            <tr>
                                <td>
                                    ${material.materialname}
                                <td>
                                    <a href="#">${material.materialurl}</a>
                                </td>
                                <td>暂无此数据</td>
                                <td>
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
		                        <label for="name">材料名称</label>
		                        <select class="form-control selectChoice" name=" "><!-- *********** -->
		                            <option value="0">思想汇报</option>
		                            <option value="1">转正申请</option>
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
                        		<label for="name">证明类型</label>
                        		
                        		<select class="form-control" id="showntype" >
                        		<option value="0"></option>
                        		<option value="1">计算机等级考试</option>
                        		<option value="4">社会工作</option>
                                <option value="5">获奖情况</option>
                        		</select>
                        		
                        	</div>
                        </div>  
                        <br>
                         <div class="col-md-12">

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
			                        
			                        <div id="SocialWork">
				                        <input  name="SocialWork" />
				                        
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
					<div class="panel-group" id="accordion">
						
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" 
									   href="#collapseOne">
										${massage.newstitle}
									</a>
									${massage.newstime}
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									${massage.newscontent}
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" 
									   href="#collapseTwo">
										${massage.newstitle}
									</a>
									${massage.newstime}
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									<a href="#">${massage.newscontent}</a>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" 
									   href="#collapseThree">
										第 3 部分
									</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred 
									nesciunt sapiente ea proident. Ad vegan excepteur butcher vice 
									lomo.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" 
									   href="#collapseFour">
										第 4 部分
									</a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body">
									Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred 
									nesciunt sapiente ea proident. Ad vegan excepteur butcher vice 
									lomo.
								</div>
							</div>
						</div>
					</div>
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
    <script src="assets/js/jquery-2.1.1.min.js"></script>
    <script src="assets/js/student.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/bootstrap-fileupload.js"></script>s
</div><!-- #footer -->


</body>
</html>
