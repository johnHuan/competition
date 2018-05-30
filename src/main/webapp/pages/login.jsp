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
    <h2 class="text-center">欢 迎 登 录</h2>
    <section class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <form id="regist" action="/login" method="post" class="form-horizontal">
                <div class="form-group">
                    <label for="account" class="col-lg-5 control-label">账　　号：</label>
                    <div class="col-lg-5">
                        <input id="account" type="text" class="form-control" name="account" placeholder="手机号 / 邮箱" value="<c:if test='${!empty account}'>${account}</c:if>" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-lg-5 control-label">密　　码：</label>
                    <div class="col-lg-5">
                        <input type="password" class="form-control" name="password" id="password" placeholder="请输入您的密码" />
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
                        <button class="btn btn-success form-control" type="submit">登 录</button>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-4 col-lg-offset-3" ><a class="disabled" disabled="true" href="/forgetpage"></a></div>
                    <div class="col-lg-5">还没账号,我要 <a href="/regist"> 注册</a></div>
                </div>
            </form>
        </div>
    </section>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script charset="UTF-8" src="../js/bootstrapValidator.min.js"></script>
<script charset="UTF-8" src="../js/regist.js"></script>
