<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/22
  Time: 21:33
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<jsp:include page="header.jsp"></jsp:include>

<section class="well">
    <h3 class="text-center">${user.username}的个人信息</h3>
    <table class="table">
        <tr>
            <td>姓名：</td>
            <td>${sessionScope.user.username}</td>
        </tr>
        <tr>
            <td>手机号：</td>
            <td>${sessionScope.user.phone}</td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td>${sessionScope.user.email}</td>
        </tr>
    </table>
    <c:if test="${!empty signIn}">
    <h3 class="text-center">${sessionScope.user.username}的报名信息</h3>
        <table class="table">
            <tr>
                <td>所在院校</td>
                <td>${signIn.college}</td>
            </tr>
            <tr>
                <td>领队</td>
                <td>${signIn.captain}</td>
            </tr>
            <tr>
                <td>职务、职称</td>
                <td>${signIn.duty}</td>
            </tr>
            <tr>
                <td>手机</td>
                <td>${signIn.phone}</td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>${signIn.email}</td>
            </tr>
            <tr>
                <td>学校通讯地址</td>
                <td>${signIn.address}</td>
            </tr>
        </table>
    </c:if>



</section>
<jsp:include page="footer.jsp"></jsp:include>
