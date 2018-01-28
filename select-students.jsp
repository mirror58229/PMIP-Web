<%@page contentType="text/html; charset=utf-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>筛选学生</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->


    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/custom.css"/>
    <style type="text/css">
        .nav-stacked{
            top: 20px;
        }

        .fixed {
            position: fixed;
            top: 20px;
            left: 20.645%;
            right:17.587%;
            z-index: 99;
        }

        .table > thead > tr > th,
        .table > tbody > tr > th,
        .table > tfoot > tr > th,
        .table > thead > tr > td,
        .table > tbody > tr > td,
        .table > tfoot > tr > td {
            padding: 8px;
            line-height: 0.5;
            vertical-align: top;
            border-top: 0px solid #ddd;
        }

    </style>

    <script src="assets/js/jquery-2.1.1.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {

            $(".panel-collapse").collapse({
                parent:"#accordion",
                toggle:true
            })

            $(".panel-collapse").on("show.bs.collapse",function (e) {
                $(e.target).css("background-color","#e0e1ff")
                $(e.target).prev().find("span").toggleClass("fa-angle-double-down").toggleClass("fa-angle-double-up");
            })

            $(".panel-collapse").on("hide.bs.collapse",function (e) {
                $(e.target).css("background-color","#e1ffff");
                $(e.target).prev().find("span").toggleClass("fa-angle-double-down").toggleClass("fa-angle-double-up");
            })

            $(".accordion-toggle").on("click",function () {
                $(this).parent().next().collapse("toggle");
            })

            $(window).scroll(function () {
                //判断卷去的高度超过topPart的高度
                //1. 让navBar有固定定位
                //2. 让mainPart有一个marginTop
                if($(window).scrollTop() >= ($("#header").height()+$(".page-headers").height()*2)){
                    $("#navBar").addClass("fixed");
                    $(".main").css("marginTop", $("#navBar").height() + 10);
                }else {
                    $("#navBar").removeClass("fixed");
                    $(".main").css("marginTop", 10);
                }

            });

            var roll=function(){
                var o_place=$(document).scrollTop();
                var n_place=o_place+30;
                if(n_place>$('#searchBox').height()){
                    $(".main").scrollTop(n_place);
                }
                else{
                    $('.main').scrollTop(0);
                }
            }
            setInterval(roll,1000) ;

            var $lis=$("#stateSelect").find("a");
            $lis.each(function(i,element) {
                $(element).on("click", function () {
                    //获取表单的父元素
                      $("#navBar").find("p").addClass("active").siblings().removeClass("active")
//                    var item = $(this).parent();
//                    item.addClass("active").siblings().removeClass("active");
//                    var str=item.attr("value");
//                    switch(str){
//                        case "eact":;
//                        case "department":$("#departmentSpecialty").removeClass("hidden");
//                        case "grade":;
//                        default:break;
//                    }
                })
            });

            var $li2s=$("#scoreBar").find("a");
            $li2s.each(function(i,element) {
                $(element).on("click", function () {
                    //获取表单的父元素
                    $("#navBar").find("li").addClass("active").siblings().removeClass("active")
                })
            });

            var $li3s=$("#workBar").find("a");
            $li3s.each(function(i,element) {
                $(element).on("click", function () {
                    //获取表单的父元素
                    $("#navBar").find("a").addClass("active").siblings().removeClass("active")
                })
            });

            var $li4s=$("#comprehensiveBar").find("a");
            $li4s.each(function(i,element) {
                $(element).on("click", function () {
                    //获取表单的父元素
                    $("#navBar").find("span").addClass("active").siblings().removeClass("active")
                })
            });
        });
    </script>
    <script src="assets/js/studentsInformation.js"></script>
</head>
<body data-spy="scroll" data-target="#menu">
<!-- Add your site or application content here -->

<!-- header Start================================================= -->

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
                                    <a href="index-manager.jsp"><h3>党员信息管理系统</h3></a>
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
                            <li><i class="fa fa-user"></i>当前用户：1506010123（XX）</li>
                            <li><a href="login.jsp">注销</a></li>
                            <li><a href="modifyPassword.jsp">修改密码</a></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .col-md-6 close -->
        </div><!-- .row close -->
        <div class="row ">
            <div class="col-md-12">
                <ul class="nav nav-tabs">
                    <li>
                        <a href="application-manager.jsp">资料审核</a>
                    </li>
                    <li class="active">
                        <a href="manageStudent.jsp">学生管理</a>
                    </li>


                </ul>
            </div>
        </div>
    </div><!-- .container close -->
</section><!-- #heder close -->



<div class="container" id="main">
    <div class="row">
        <div class="col-md-2" id="menu">
            <ul class="nav nav-stacked nav-pills" data-spy="affix" data-offset-top="150">
                <li>
                    <a href="manageStudent.jsp">查看学生资料</a>
                </li>
                <li>
                    <a href="select-students.jsp">筛选学生</a>
                </li>
                <li>
                    <a href="add-students.jsp">添加学生</a>
                </li>
                <li  class="active">
                    <a href="import-students.jsp">导入学生资料</a>
                </li>
            </ul>
        </div>
         <div class="col-md-10">
            <div class="container-fluid">
                <div class="row">
                    <div id="selector">
                        <div class="col-sm-10 col-md-10">
                            <div class="page-headers">
                                <h4>查询信息</h4>
                            </div>

                            <div class="form-group buttonsPill " id="navBar">
                                <div class="btn-group btn-group-justified btn-group-sm">
                                    <p  class="btn btn-primary active">状态查询</p>
                                    <li class="btn btn-primary">成绩查询</li>
                                    <a  class="btn btn-primary">社会工作查询</a>
                                    <span class="btn btn-primary">综合查询</span>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                            <div id="reviews" class="carousel slide" data-ride="carousel">

                                <div class="carousel-inner">
                                    <div class="item active">

                                        <div class="col-md-10 col-md-offset-1">

                                            <h4 class="text-center"><i class="fa fa-quote-left"></i>个人信息简介<i class="fa fa-quote-right"></i></h4>
                                            <div class="user-img pull-left">
                                                <img src="assets/img/1506010512.jpg" alt="" class="img-u image-responsive" />
                                            </div>
                                            <h6 class="pull-left"><strong class="c-black">
                                                <div class="row-fluid">
                                                        <table class="table">
                                                            <tbody>
                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">学号：</th>
                                                                <td class="col-sm-3">1506010512</td>
                                                                <th class="col-sm-3 text-right">姓名：</th>
                                                                <td class="col-sm-3">金培源</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">专业：</th>
                                                                <td class="col-sm-3">计算机科学与技术</td>
                                                                <th class="col-sm-3 text-right">班级：</th>
                                                                <td class="col-sm-3">15级计算机五班</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">政治面貌：</th>
                                                                <td class="col-sm-3">党员</td>
                                                                <th class="col-sm-3 text-right">当前状态：</th>
                                                                <td class="col-sm-3">正式党员</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">绩点：</th>
                                                                <td class="col-sm-3">4.7</td>
                                                                <th class="col-sm-3 text-right">四级成绩：</th>
                                                                <td class="col-sm-3">560</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">六级成绩：</th>
                                                                <td class="col-sm-2">482</td>
                                                                <th class="col-sm-3 text-right">社会工作：</th>
                                                                <td class="col-sm-3">计算机五班学习委员</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <td colspan="4" class="text-right">更多<i class="fa fa-angle-double-right"></i></td>
                                                            </tr>

                                                            </tbody>
                                                        </table>
                                                </div>
                                            </strong></h6>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="col-md-10 col-md-offset-1">

                                            <h4 class="text-center"><i class="fa fa-quote-left"></i>个人信息简介<i class="fa fa-quote-right"></i></h4>
                                            <div class="user-img pull-left">
                                                <img src="assets/img/1506010513.jpg" alt="" class="img-u image-responsive" />
                                            </div>
                                            <h6 class="pull-right">
                                                <strong class="c-black">
                                                    <div class="row-fluid">
                                                        <table class="table">
                                                            <tbody>
                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">学号：</th>
                                                                <td class="col-sm-3">1506010513</td>
                                                                <th class="col-sm-3 text-right">姓名：</th>
                                                                <td class="col-sm-3">王秉发</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">专业：</th>
                                                                <td class="col-sm-3">计算机科学与技术</td>
                                                                <th class="col-sm-3 text-right">班级：</th>
                                                                <td class="col-sm-3">15级计算机五班</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">政治面貌：</th>
                                                                <td class="col-sm-3">共青团员</td>
                                                                <th class="col-sm-3 text-right">当前状态：</th>
                                                                <td class="col-sm-3">预备党员</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">绩点：</th>
                                                                <td class="col-sm-3">4.4</td>
                                                                <th class="col-sm-3 text-right">四级成绩：</th>
                                                                <td class="col-sm-3">490</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">六级成绩：</th>
                                                                <td class="col-sm-2">452</td>
                                                                <th class="col-sm-3 text-right">社会工作：</th>
                                                                <td class="col-sm-3">计算机五班宣传委员</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <td colspan="4" class="text-right">更多<i class="fa fa-angle-double-right"></i></td>
                                                            </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </strong>
                                            </h6>
                                        </div>

                                    </div>
                                    <div class="item">
                                        <div class="col-md-10 col-md-offset-1">

                                            <h4 class="text-center"><i class="fa fa-quote-left"></i>个人信息简介<i class="fa fa-quote-right"></i></h4>
                                            <div class="user-img pull-left">
                                                <img src="assets/img/1506010501.jpg" alt="" class="img-u image-responsive" />
                                            </div>
                                            <h6 class="pull-right">
                                                <strong class="c-black">
                                                    <div class="row-fluid">
                                                        <table class="table">
                                                            <tbody>
                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">学号：</th>
                                                                <td class="col-sm-3">1506010501</td>
                                                                <th class="col-sm-3 text-right">姓名：</th>
                                                                <td class="col-sm-3">洪靖</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">专业：</th>
                                                                <td class="col-sm-3">计算机科学与技术</td>
                                                                <th class="col-sm-3 text-right">班级：</th>
                                                                <td class="col-sm-3">15级计算机五班</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">政治面貌：</th>
                                                                <td class="col-sm-3">共青团员</td>
                                                                <th class="col-sm-3 text-right">当前状态：</th>
                                                                <td class="col-sm-3">预备党员</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">绩点：</th>
                                                                <td class="col-sm-3">4.5</td>
                                                                <th class="col-sm-3 text-right">四级成绩：</th>
                                                                <td class="col-sm-3">560</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <th class="col-sm-3 text-right">六级成绩：</th>
                                                                <td class="col-sm-2">500</td>
                                                                <th class="col-sm-3 text-right">社会工作：</th>
                                                                <td class="col-sm-3">计算机五班团支书</td>
                                                            </tr>

                                                            <tr class="row">
                                                                <td colspan="4" class="text-right">更多<i class="fa fa-angle-double-right"></i></td>
                                                            </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </strong>
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                                <!--INDICATORS-->
                                <ol class="carousel-indicators">
                                    <li data-target="#reviews" data-slide-to="0" class="active"></li>
                                    <li data-target="#reviews" data-slide-to="1"></li>
                                    <li data-target="#reviews" data-slide-to="2"></li>
                                </ol>
                                <!--PREVIUS-NEXT BUTTONS-->

                            </div>
                            <hr/>

                            <div class="main">
                                <div id="searchBox">
                                    <form method="post" action="" class="form-horizontal">

                                        <div class="form-group col-sm-11">
                                            <div class="btn-group">
                                                <a class="btn btn-default" href="#"><span class="fa fa-search">推优时间</span></a>
                                                <a class="btn btn-default" href="#" data-toggle="dropdown">
                                                    <i class="caret"></i>
                                                </a>
                                                <ul class="dropdown-menu" id="123" >
                                                    <li value="0">半年</li>
                                                    <li value="1">一年</li>
                                                    <li value="2">过期</li>
                                                </ul>
                                                <a class="btn btn-success" href="#">搜索</a>

                                            </div>

                                        </div>

                                        <div class="form-group ">
                                            <div class="col-sm-11 row" id="departmentSpecialty">
                                                <!--学院下拉框-->
                                                <div class="col-sm-3" style="padding-right:0px">
                                                    <select class="form-control selectChoice" id="department">
                                                        <option value="0" class="label">选择学院</option>
                                                    </select>
                                                </div>
                                                <!--年级下拉框-->
                                                <div class="col-sm-3" style="padding-right:0px">
                                                    <select class="form-control selectChoice">
                                                        <option value="0" class="label">选择年级</option>
                                                        <option value="2014">2014级</option>
                                                        <option value="2015" selected>2015级</option>
                                                        <option value="2016">2016级</option>
                                                        <option value="2017">2017级</option>
                                                    </select>
                                                </div>
                                                <!--专业下拉框-->
                                                <div class="col-sm-3" style="padding-right:0px">
                                                <select class="form-control selectChoice" id="domain">
                                                    <option value="0" class="label">选择专业</option>
                                                </select>
                                                </div>
                                                <!--班级下拉框-->
                                                <div class="col-sm-2" style="padding-right:0px">
                                                <select class="form-control selectChoice" id="grade">
                                                    <option value="0" class="label">选择班级</option>
                                                </select>
                                                </div>
                                            </div>

                                            <div class="col-sm-1 pull-right">
                                                <button class="btn btn-info" type="button" id="departmentButton" >搜索</button>
                                            </div>
                                        </div>

                                        <div class="exactSearch " id="inputs">
                                            <div class="form-group">
                                                <div class="col-sm-11 row">
                                                    <label for="studentId" class="col-sm-2 text-right">学号:</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" name="studentId" id="studentId" class="form-control col-sm-3 " placeholder="1506010512"/>
                                                    </div>

                                                    <label for="studentName" class="col-sm-2 text-right">姓名:</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" name="studentName" id="studentName" class="form-control col-sm-3" placeholder="金培源"/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-1 pull-right">
                                                    <button class="btn btn-info center-block" type="button" id="exactButton" >搜索</button>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="cet4-Search ">
                                            <div class="form-group">
                                                <div class="col-sm-11 row">
                                                    <div class="col-sm-4">
                                                        <select class="form-control selectChoice">
                                                            <option value="0" class="label">四级成绩</option>
                                                            <option value="0">四级不合格</option>
                                                            <option value="0">四级合格</option>
                                                            <option value="0">四级优秀</option>
                                                        </select>
                                                    </div>
                                                       <label for="CET4" class="col-sm-2 text-right">四级成绩:</label>
                                                        <div class="col-sm-4">
                                                            <input type="text" class="form-control col-sm-3" placeholder="560">
                                                        </div>

                                                </div>
                                                <div class="col-sm-1 pull-right">
                                                    <button class="btn btn-info" type="button" id="cet4Button" >搜索</button>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="cet6-Search">
                                            <div class="form-group">
                                                <div class="col-sm-11 row">
                                                    <div class="col-sm-4">
                                                        <select class="form-control selectChoice">
                                                            <option value="0" class="label">六级成绩</option>
                                                            <option value="0">六级不合格</option>
                                                            <option value="0">六级合格</option>
                                                            <option value="0">六级优秀</option>
                                                        </select>
                                                    </div>
                                                    <label for="CET6" class="col-sm-2 text-right">六级成绩:</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control col-sm-3" placeholder="560">
                                                    </div>

                                                </div>
                                                <div class="col-sm-1 pull-right">
                                                    <button class="btn btn-info" type="button" id="cet6Button" >搜索</button>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="GPA-Search">
                                            <div class="form-group">
                                                <div class="col-sm-11 row">
                                                    <div class="col-sm-4">
                                                        <select class="form-control selectChoice">
                                                            <option value="0" class="label">绩点</option>
                                                            <option value="0">4.5以上</option>
                                                            <option value="0">4.0以上</option>
                                                            <option value="0">3.5以上</option>
                                                        </select>
                                                    </div>
                                                    <label for="CET6" class="col-sm-2 text-right">绩点:</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control col-sm-3" placeholder="5.0">
                                                    </div>

                                                </div>
                                                <div class="col-sm-1 pull-right">
                                                    <button class="btn btn-info" type="button" id="GPAButton" >搜索</button>
                                                </div>
                                            </div>
                                        </div>

                                    </form>
                                </div>

                                <div id="resultBox">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item active">
                                            <h4 class="list-group-item-heading">预备党员信息</h4>
                                            <p class="list-group-item-text" style="line-height: 30px;">
                                            <table class="table">
                                                <tbody>
                                                <tr class="row">
                                                    <th class="col-sm-2 text-right">姓名：</th>
                                                    <td class="col-sm-2">王秉发</td>
                                                    <th class="col-sm-1 text-right">学号：</th>
                                                    <td class="col-sm-3">1506010513</td>
                                                    <th class="col-sm-2 text-right">出生年月：</th>
                                                    <td class="col-sm-2">1996年12月30日</td>
                                                </tr>

                                                <tr class="row">
                                                    <th class="col-sm-2 text-right">学院：</th>
                                                    <th class="col-sm-2">计算与信息学院</th>
                                                    <th class="col-sm-1 text-right">专业：</th>
                                                    <th class="col-sm-3">计算机科学与技术</th>
                                                    <th class="col-sm-2 text-right">年级班级：</th>
                                                    <th class="col-sm-2">15级计算机五班</th>
                                                </tr>

                                                <tr class="row">
                                                    <th class="col-sm-2 text-right">姓名：</th>
                                                    <td class="col-sm-2">王秉发</td>
                                                    <th class="col-sm-1 text-right">学号：</th>
                                                    <td class="col-sm-3">1506010513</td>
                                                    <th class="col-sm-2 text-right">出生年月：</th>
                                                    <td class="col-sm-2">1996年12月30日</td>
                                                </tr>

                                                <tr class="row">
                                                    <th class="col-sm-2 text-right">学院：</th>
                                                    <th class="col-sm-2">计算与信息学院</th>
                                                    <th class="col-sm-1 text-right">专业：</th>
                                                    <th class="col-sm-3">计算机科学与技术</th>
                                                    <th class="col-sm-2 text-right">年级班级：</th>
                                                    <th class="col-sm-2">15级计算机五班</th>
                                                </tr>
                                                </tbody>
                                            </table>
                                            </p>
                                        </a>

                                        <a href="#" class="list-group-item">
                                            <h4 class="list-group-item-heading">预备党员信息</h4>
                                            <p class="list-group-item-text" style="line-height: 30px;">
                                            <table class="table">
                                                <tbody>
                                                <tr class="row">
                                                    <th class="col-sm-1 text-right">姓名：</th>
                                                    <td class="col-sm-2">王秉发</td>
                                                    <th class="col-sm-1 text-right">学号：</th>
                                                    <td class="col-sm-3">1506010513</td>
                                                    <th class="col-sm-2 text-right">出生年月：</th>
                                                    <td class="col-sm-2">1996年12月30日</td>
                                                </tr>

                                                <tr class="row">
                                                    <th class="col-sm-1 text-right">学院：</th>
                                                    <th class="col-sm-2">计算与信息学院</th>
                                                    <th class="col-sm-1 text-right">专业：</th>
                                                    <th class="col-sm-3">计算机科学与技术</th>
                                                    <th class="col-sm-2 text-right">年级班级：</th>
                                                    <th class="col-sm-2">15级计算机五班</th>
                                                </tr>

                                                <tr class="row">
                                                    <th class="col-sm-1 text-right">姓名：</th>
                                                    <td class="col-sm-2">王秉发</td>
                                                    <th class="col-sm-1 text-right">学号：</th>
                                                    <td class="col-sm-3">1506010513</td>
                                                    <th class="col-sm-2 text-right">出生年月：</th>
                                                    <td class="col-sm-2">1996年12月30日</td>
                                                </tr>

                                                <tr class="row">
                                                    <th class="col-sm-1 text-right">学院：</th>
                                                    <th class="col-sm-2">计算与信息学院</th>
                                                    <th class="col-sm-1 text-right">专业：</th>
                                                    <th class="col-sm-3">计算机科学与技术</th>
                                                    <th class="col-sm-2 text-right">年级班级：</th>
                                                    <th class="col-sm-2">15级计算机五班</th>
                                                </tr>
                                                </tbody>
                                            </table>
                                            </p>
                                    </a>

                                    <a href="#" class="list-group-item active">
                                        <h4 class="list-group-item-heading">预备党员信息</h4>
                                        <p class="list-group-item-text" style="line-height: 30px;">
                                        <table class="table">
                                            <tbody>
                                            <tr class="row">
                                                <th class="col-sm-1 text-right">姓名：</th>
                                                <td class="col-sm-2">王秉发</td>
                                                <th class="col-sm-1 text-right">学号：</th>
                                                <td class="col-sm-3">1506010513</td>
                                                <th class="col-sm-2 text-right">出生年月：</th>
                                                <td class="col-sm-2">1996年12月30日</td>
                                            </tr>

                                            <tr class="row">
                                                <th class="col-sm-1 text-right">学院：</th>
                                                <th class="col-sm-2">计算与信息学院</th>
                                                <th class="col-sm-1 text-right">专业：</th>
                                                <th class="col-sm-3">计算机科学与技术</th>
                                                <th class="col-sm-2 text-right">年级班级：</th>
                                                <th class="col-sm-2">15级计算机五班</th>
                                            </tr>

                                            <tr class="row">
                                                <th class="col-sm-1 text-right">姓名：</th>
                                                <td class="col-sm-2">王秉发</td>
                                                <th class="col-sm-1 text-right">学号：</th>
                                                <td class="col-sm-3">1506010513</td>
                                                <th class="col-sm-2 text-right">出生年月：</th>
                                                <td class="col-sm-2">1996年12月30日</td>
                                            </tr>

                                            <tr class="row">
                                                <th class="col-sm-1 text-right">学院：</th>
                                                <th class="col-sm-2">计算与信息学院</th>
                                                <th class="col-sm-1 text-right">专业：</th>
                                                <th class="col-sm-3">计算机科学与技术</th>
                                                <th class="col-sm-2 text-right">年级班级：</th>
                                                <th class="col-sm-2">15级计算机五班</th>
                                            </tr>
                                            </tbody>
                                        </table>
                                        </p>
                                    </a>

                                    <a href="#" class="list-group-item">
                                        <h4 class="list-group-item-heading">预备党员信息</h4>
                                        <p class="list-group-item-text" style="line-height: 30px;">
                                        <table class="table">
                                            <tbody>
                                            <tr class="row">
                                                <th class="col-sm-1 text-right">姓名：</th>
                                                <td class="col-sm-2">王秉发</td>
                                                <th class="col-sm-1 text-right">学号：</th>
                                                <td class="col-sm-3">1506010513</td>
                                                <th class="col-sm-2 text-right">出生年月：</th>
                                                <td class="col-sm-2">1996年12月30日</td>
                                            </tr>

                                            <tr class="row">
                                                <th class="col-sm-1 text-right">学院：</th>
                                                <th class="col-sm-2">计算与信息学院</th>
                                                <th class="col-sm-1 text-right">专业：</th>
                                                <th class="col-sm-3">计算机科学与技术</th>
                                                <th class="col-sm-2 text-right">年级班级：</th>
                                                <th class="col-sm-2">15级计算机五班</th>
                                            </tr>

                                            <tr class="row">
                                                <th class="col-sm-1 text-right">姓名：</th>
                                                <td class="col-sm-2">王秉发</td>
                                                <th class="col-sm-1 text-right">学号：</th>
                                                <td class="col-sm-3">1506010513</td>
                                                <th class="col-sm-2 text-right">出生年月：</th>
                                                <td class="col-sm-2">1996年12月30日</td>
                                            </tr>

                                            <tr class="row">
                                                <th class="col-sm-1 text-right">学院：</th>
                                                <th class="col-sm-2">计算与信息学院</th>
                                                <th class="col-sm-1 text-right">专业：</th>
                                                <th class="col-sm-3">计算机科学与技术</th>
                                                <th class="col-sm-2 text-right">年级班级：</th>
                                                <th class="col-sm-2">15级计算机五班</th>
                                            </tr>
                                            </tbody>
                                        </table>
                                        </p>
                                    </a>
                                    </div>
                                    <br/>
                            </div>


                        </div>

                        </div>


                        <div class="col-sm-2 col-md-2">
                            <div class="nav-box">
                                <div class="page-headers">
                                    <h4>筛选导航</h4>
                                </div>

                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                状态筛选
                                                <a data-toggle="collapse" data-parent="#accordion"  class="accordion-toggle" href="#collapseOne">
                                                    <span class="fa fa-angle-double-up pull-right"></span>
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse ">
                                            <div class="panel-body">
                                                <ul class="list-unstyled" id="stateSelect">
                                                    <li value="recommending"><a href="javascript:void(0)">已推优</a></li>
                                                    <li value="activists "><a href="javascript:void(0)">入党积极分子</a></li>
                                                    <li value="prospect"><a href="javascript:void(0)">发展对象</a></li>
                                                    <li value="probationaryMembers"><a href="javascript:void(0)">预备党员</a></li>
                                                    <li value="partyMember"><a href="javascript:void(0)">正式党员</a></li>
                                                    <li value="freeze"><a href="javascript:void(0)">冻结</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                成绩筛选
                                                <a data-toggle="collapse" data-parent="#accordion" class="accordion-toggle" href="#collapseTwo"><span class="fa fa-angle-double-up pull-right"></span>
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <ul class="list-unstyled" id="scoreBar">
                                                    <li>
                                                        <a href="#">四级成绩</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">六级成绩</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">绩点</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                社会工作
                                                <a data-toggle="collapse" data-parent="#accordion" class="accordion-toggle" href="#collapseThree">
                                                    <span class="fa fa-angle-double-up pull-right"></span>
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <ul class="list-unstyled" id="workBar">
                                                    <li><a href="javascript:void(0)">班级职务</a></li>
                                                    <li><a href="javascript:void(0)">年级职务</a></li>
                                                    <li><a href="javascript:void(0)">院级组织</a></li>
                                                    <li><a href="javascript:void(0)">校级组织</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                综合筛选
                                                <a data-toggle="collapse" data-parent="#accordion" class="accordion-toggle" href="#collapseFour">
                                                    <span class="fa fa-angle-double-up pull-right"></span>
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseFour" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <ul class="list-unstyled" id="comprehensiveBar">
                                                    <li><a href="javascript:void(0)">精确筛选</a></li>
                                                    <li><a href="javascript:void(0)">自定义筛选</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8">
                            <div class="container">`
                                <ul class="pagination">
                                    <li class="active"><a href="#" rel="page">首页</a> </li>
                                    <li><a href="#" rel="page">上一页</a> </li>
                                    <li><a href="#" rel="page">1</a> </li>
                                    <li><a href="#" rel="page">2</a> </li>
                                    <li class="disabled"><a href="#">……</a> </li>
                                    <li><a href="#" rel="page">5</a> </li>
                                    <li><a href="#" rel="page">下一页</a></li>
                                    <li><a href="#" rel="page">尾页</a> </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2"></div>
                </div>
            </div>
         </div>
    </div><!--row-->

</div><!--container-->


<!-- footer Start
====================================================================== -->

<div id="footer">
        <div class="row">
            <div class="col-md-12">
                <!--//end-bottom-->
                <ul class="socials">
                    <li><a class="soc1" href="#"></a></li>
                    <li><a class="soc2" href="#"></a></li>
                    <li><a class="soc3" href="#"></a></li>
                </ul>
                <!--/start-copyright-->
                <div class="copy">
                    <div class="container">
                        <p>Copyright &copy; 2017.河海大学HohaiUniversity-版权所有</p>
                    </div>
                </div>
                <!--//end-copyright-->
                <!--end-footer-->
            </div><!-- col-md-12 -->
        </div><!-- .row -->
</div><!-- #footer -->

</body>
</html>