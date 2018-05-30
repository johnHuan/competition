<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/23
  Time: 20:07
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="../css/status.css">

<section class="well">
    <h2 class="text-center text-success">报名进度</h2>
    <div class="container">
        <div class="row">
            <div class="alert-success col-lg-8  col-lg-offset-2 text-center center-pill content">
                <div class="state"></div>
                ${msg}
                <div class="row">
                    <br>
                    <p>如果参赛队员信息有变化只需要<a href="<c:url value='reUpload'/> ">重新上传word报名表</a>即可</p>
                </div>
            </div>
        </div>


    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
