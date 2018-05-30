<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/22
  Time: 9:34
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="../assets/bootstrap/bootstrapValidator.min.css">
<link rel="stylesheet" href="../css/regist.css">

<div class="well">
    <h2 class="text-center">欢迎注册</h2>
    <section class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <form id="regist" action="/regist" method="post" class="form-horizontal">
                <div class="form-group">
                    <label for="username" class="col-lg-5 control-label">姓　　名：</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="username" id="username" placeholder="请输入领队姓名" value="<c:out value='${user.username}' />" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-lg-5 control-label">手机号码：</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" minlength="11" maxlength="11" name="phone" id="phone" placeholder="请输入有效的11位手机号码" value="<c:out value='${user.phone}' />" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-lg-5 control-label">电子邮件：</label>
                    <div class="col-lg-5">
                        <input type="email" class="form-control" name="email" id="email" placeholder="请输入有效的电子邮箱" value="<c:out value='${user.email}' />" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-lg-5 control-label">密　　码：</label>
                    <div class="col-lg-5">
                        <input type="password" class="form-control" name="password" id="password" placeholder="请输入您的密码" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="confirmPassword" class="col-lg-5 control-label">确认密码：</label>
                    <div class="col-lg-5">
                        <input id="confirmPassword" type="password" class="form-control" name="confirmPassword" placeholder="请再次输入您的密码" />
                    </div>
                </div>
                <c:if test="${!empty msg}">
                    <div class="form-group">
                        <div class="col-lg-7 col-lg-offset-3 text-center text-danger">
                            <span>${msg}</span>
                        </div>
                    </div>
                </c:if>
                <div class="form-group">
                    <div class="col-lg-7 col-lg-offset-3">
                        <button class="btn btn-success form-control" type="submit">提交注册</button>
                    </div>
                </div>


            </form>
            <div class="col-lg-3 col-lg-offset-3 pull-right link">已有账号,我要 <a href="/login"> 登录</a></div>
        </div>

    </section>
</div>


<jsp:include page="footer.jsp"></jsp:include>
<script charset="UTF-8" src="../js/bootstrapValidator.min.js"></script>
<script charset="UTF-8" src="../js/regist.js"></script>
