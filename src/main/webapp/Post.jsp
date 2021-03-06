<%--
  Created by IntelliJ IDEA.
  User: smird
  Date: 09.04.2021
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>

<%@page import="com.example.Lab7_EAD2.bean.Post"%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
    Post post = new Post();

    post = (Post) request.getAttribute("post");

    String title = post.getTitle();
    String userName = post.getUserName();
    int userId = post.getUserId();
    String pContent = post.getpContent();
%>

<%
    // 这里的 viewNum 值会传给 content.jsp
    int pId = post.getpId();
    Integer viewNum = (Integer) application.getAttribute("postViewNum"+ pId);
    if (viewNum == null) {
        int ViewNum = 1;
        application.setAttribute("postViewNum" + pId, ViewNum);
    } else {
        viewNum += 1;
        application.setAttribute("postViewNum" + pId, viewNum);
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <base href="<%= basePath %>">

    <title>Topic</title>

    <!-- logo -->
    <link rel="shortcut icon" href="favicon.png">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome-4.0.3/css/font-awesome.min.css">

    <!-- CSS STYLE-->
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />

</head>
<body class="topic">

<div class="container-fluid">

    <!-- Header Nav -->
    <jsp:include page="header.jsp"></jsp:include>

    <!-- Content Nav -->
    <section class="content">

        <!-- Bread Crumbs Nav -->
        <div class="container">
            <div class="row">
                <div class="col-lg-8 breadcrumbf">
                    <a href="#">Topic One</a>
                    <span class="diviver">&gt;</span>
                    <a href="#">Discussion</a>
                    <span class="diviver">&gt;</span>
                    <a href="#">Topic Details</a>
                </div>
            </div>
        </div><!-- Bread Crumbs Nav END -->

        <div class="container">
            <div class="row">

                <!-- Post And Comment Nav -->
                <div class="col-lg-8 col-md-8">

                    <!-- Main Post Nav -->
                    <div class="post beforepagination">
                        <div class="topwrap">
                            <div class="userinfo pull-left">
                                <div class="avatar">
                                    <img src="images/avatar/avatar<%= userId %>.jpg" alt="<%= userName %>" />
                                    <div class="status green">&nbsp;</div>
                                </div>
                                <div class="icons">
                                    <img src="images/icon1.jpg" alt="" /><img src="images/icon4.jpg" alt="" />
                                    <img src="images/icon5.jpg" alt="" /><img src="images/icon6.jpg" alt="" />
                                </div>
                            </div>
                            <div class="posttext pull-left">
                                <h2>
                                    <%= title %>
                                </h2>
                                <p>
                                    <%= pContent %>
                                </p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="postinfobot">
                            <div class="likeblock pull-left">
                                <a href="#" class="up">
                                    <i class="fa fa-thumbs-o-up"></i>25
                                </a>
                                <a href="#" class="down">
                                    <i class="fa fa-thumbs-o-down"></i>3
                                </a>
                            </div>
                            <div class="prev pull-left">
                                <a href="#">
                                    <i class="fa fa-reply"></i>
                                </a>
                            </div>
                            <div class="posted pull-left">
                                <i class="fa fa-clock-o"></i> Posted on : 20 Nov @ 9:30am
                            </div>
                            <div class="next pull-right">
                                <a href="#">
                                    <i class="fa fa-share"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-flag"></i>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div><!-- Main Post Nav END -->

                    <!-- Page Number Nav 主要是把post与omment区别开来 -->
                    <div class="paginationf">
                        <div class="pull-left">
                            <a href="#" class="prevnext">
                                <i class="fa fa-angle-left"></i>
                            </a>
                        </div>
                        <div class="pull-left">
                            <ul class="paginationforum">
                                <li class="hidden-xs"><a href="#">1</a></li>
                                <li class="hidden-xs"><a href="#">2</a></li>
                                <li class="hidden-xs"><a href="#">3</a></li>
                                <li class="hidden-xs"><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">6</a></li>
                                <li><a href="#" class="active">7</a></li>
                                <li><a href="#">8</a></li>
                                <li class="hidden-xs"><a href="#">9</a></li>
                                <li class="hidden-xs"><a href="#">10</a></li>
                                <li class="hidden-xs hidden-md"><a href="#">11</a></li>
                                <li class="hidden-xs hidden-md"><a href="#">12</a></li>
                                <li class="hidden-xs hidden-sm hidden-md"><a href="#">13</a></li>
                                <li><a href="#">1586</a></li>
                            </ul>
                        </div>
                        <div class="pull-left">
                            <a href="#" class="prevnext last">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- Page Number Nav END -->

                </div><!-- Post And Comment Nav END -->


            </div>
        </div>

    </section>

    <!-- footer nav -->
    <jsp:include page="footer.jsp"></jsp:include>

</div>

<!-- jQuery -->
<script type="text/javascript" src="js/jquery.js"></script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

<!-- LOOK THE DOCUMENTATION FOR MORE INFORMATIONS -->
<script type="text/javascript">
    var revapi;

    jQuery(document).ready(function() {
        "use strict";
        revapi = jQuery('.tp-banner').revolution(
            {
                delay: 15000,
                startwidth: 1200,
                startheight: 278,
                hideThumbs: 10,
                fullWidth: "on"
            });
    });	//ready
</script>

<!-- END REVOLUTION SLIDER -->

</body>
