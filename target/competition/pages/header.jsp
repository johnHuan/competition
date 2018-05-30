<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/22
  Time: 9:28
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="张桓,东大测绘,东北大学,测绘技能大赛,天宇杯测绘技能大赛,“天宇杯”第五届全国高等学校大学生测绘技能大赛">
    <meta name="description" content="东北大学，天宇杯测绘技能大赛">
    <title>“天宇杯”第五届全国高等学校大学生测绘技能大赛</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <link rel="stylesheet" media="screen" type="text/css" href="<c:url value='../assets/bootstrap/css/bootstrap.min.css'/>">
    <link rel="stylesheet" media="screen" type="text/css" href="<c:url value='../assets/bootstrap/css/bootstrap-responsive.css'/>">
    <link rel="stylesheet" media="screen" type="text/css" href="<c:url value='../assets/bootstrap/css/bootstrap-overrides.css'/>">
    <link rel="stylesheet" media="screen" type="text/css" href="<c:url value='../assets/bootstrap/css/bootstrap-select.css'/>">
    <link rel="stylesheet" href="<c:url value='../css/index.css'/>">
</head>
<body class="container">
<div class="navbar navbar-default navbar-fixed-top">
    <header class="header">
        <h1 class="text-center">“天宇杯” 第五届全国高等学校大学生测绘技能大赛</h1>
    </header>
    <nav class="collapse navbar-collapse center-block" id="navbar-collapse">
        <ul class="nav navbar-nav ">
            <li>
                <a href="#" data-toggle="dropdown">
                    大赛通知 <span class="glyphicon glyphicon-file"></span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="<c:url value='index2'/> ">2号通知</a></li>
                    <li><a href="<c:url value='index'/> ">1号通知</a></li>
                </ul>
            </li>
            <li><a href="<c:url value='detail' />">实施细则 </a></li>
            <li><a href="<c:url value='evaluate' />">成绩评定 </a></li>
            <li><a href="<c:url value='note' />">记录规定 </a></li>
            <li><a href="<c:url value='demo' />">二等水准测量手簿示例</a></li>
            <li><a href="<c:url value='sheet' />">高程误差配赋表</a></li>
            <li><a href="<c:url value='down' />">相关下载</a></li>
            <li><a href="<c:url value='SignUp' />">报名</a></li>
            <c:choose>
                <c:when test="${sessionScope.user != null}">
                    <li>
                        <a href="#" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-user"></span> ${sessionScope.user.username}
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value='member'/> ">报名信息</a></li>
                            <li><a href="<c:url value='reUpload'/> ">重新上传报名表</a></li>
                        </ul>

                    </li>
                    <li><a href="<c:url value='logout'/> ">注销</a></li>
                </c:when>
                <c:otherwise>
                    <li><span class=""></span><a href="<c:url value='login'/> ">登录</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </nav>
</div>
<br><br><br><br><br><br><br>
