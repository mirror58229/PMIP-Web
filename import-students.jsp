<%@page contentType="text/html;charset=utf-8"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>导入学生</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->


    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/main.css">

    <script src="assets/js/jquery-2.1.1.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/studentsInformation.js"></script>
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
                            <li><a href="#">注销</a></li>
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


<div class="container">
    <div class="row">
        <div class="col-md-2">
            <ul class="nav nav-stacked nav-pills">
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
                <div>
                    <form method="post" action="" class="form-horizontal">
                        <div class="form-group">
                            <label for="" class="col-sm-2 text-right">院系:</label>
                            <div class="col-sm-10">
                                <!--department select-->
                                <select class="dropdown">
                                    <option value="0" class="label">选择学院</option>
                                    <option value="1">计算机与信息学院</option>
                                    <option value="2">水文水资源学院</option>
                                    <option value="3">水利水电学院</option>
                                    <option value="4">港口海岸与近海工程学院</option>
                                    <option value="5">土木与交通学院</option>
                                    <option value="6">环境学院</option>
                                    <option value="7">能源与电气学院</option>
                                    <option value="8">力学与材料学院</option>
                                    <option value="9">地球科学与工程学院</option>
                                    <option value="10">海洋学院</option>
                                    <option value="11">理学院</option>
                                    <option value="12">商学院</option>
                                    <option value="13">公共管理学院</option>
                                    <option value="14">法学院</option>
                                    <option value="15">马克思主义学院</option>
                                    <option value="16">外国语学院</option>
                                </select>
                                <!--domain select-->
                                <select class="dropdown" >
                                    <option value="0" class="label">选择专业</option>
                                    <option value="2014">电子信息技术</option>
                                    <option value="2015">通信工程</option>
                                    <option value="2016">计算机科学与技术</option>
                                </select>
                                <!--grade select-->
                                <select class="dropdown" >
                                    <option value="0" class="label">选择班级</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                            </div>
                        </div>
                        <!--name,id-->
                        <div class="form-group">
                            <label for="studentId" class="col-sm-2 text-right">学号:</label>
                            <div class="col-sm-3">
                                <input type="text" name="studentId" class="form-control col-sm-3" placeholder="1506010501"/>
                            </div>

                            <label for="studentName" class="col-sm-2 text-right" >姓名:</label>
                            <div class="col-sm-3">
                                <input type="text" name="studentName" class="form-control col-sm-3" placeholder="金培源"/>
                            </div>
                        </div>
                        <!--sex,politicalStatus-->
                        <div class="form-group">
                            <label  class="col-sm-2 text-right radio_inline ">性别:</label>
                            <div class="col-sm-3">
                                <div class="col-sm-6">
                                    <input type="radio" name="sex" id="optionsRadio1" value="man"  checked/>男
                                </div>
                                <input type="radio" name="sex" id="optionsRadio2"  value="woman"/>女
                            </div>
                            <label for="politicalStatus" class="col-sm-2 text-right">政治面貌:</label>
                            <div class="col-sm-3">
                                <input type="text" name="politicalStatus" class="form-control col-sm-3" placeholder="预备党员"/>
                            </div>
                        </div>
                        <!--CET-4，CET-6-->
                        <div class="form-group">
                            <label  for="CET-4" class="col-sm-2 text-right">四级成绩:</label>
                            <div class="col-sm-3">
                                <input type="text" name="CET-4" class="form-control col-sm-3" placeholder="560"/>
                            </div>

                            <label for="CET-6" class="col-sm-2 text-right">六级成绩:</label>
                            <div class="col-sm-3">
                                <input type="text" name="CET-6" class="form-control col-sm-3" placeholder="540"/>
                            </div>
                        </div>
                        <!--GPA,rank-->
                        <div class="form-group">
                            <label  for="GPA" class="col-sm-2 text-right">绩点:</label>
                            <div class="col-sm-3">
                                <input type="text" name="GPA" id="GPA" class="form-control " placeholder="5.0">
                            </div>

                            <label  for="rank" class="col-sm-2 text-right">排名:</label>
                            <div class="col-sm-3">
                                <input type="text" name="rank" id="rank" class="form-control" placeholder="3">
                            </div>
                        </div>
                        <!--operator button-->
                        <div class="form-group">
                            <div class="col-sm-6">
                                <button class="btn btn-info center-block" type="submit">提交</button>
                            </div>

                            <div class="col-sm-6">
                                <button class="btn btn-danger" type="reset">重置</button>
                            </div>
                        </div>
                    </form>

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
        </div><!-- #footer -->

</body>
</html>
