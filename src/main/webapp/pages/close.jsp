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

<style>
    .content{
        min-height: 300px;
        font-size: 22px;
    }
</style>
<section class="well">
    <h2 class="text-center text-warning">系统报名关闭说明</h2>
    <div class="container">
        <div class="row">
            <div class="alert-warning col-lg-8  col-lg-offset-2 text-center center-pill content">
                <br><br>
                ${msg}
            </div>
        </div>

    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
