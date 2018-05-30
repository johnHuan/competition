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
    <h3 class="text-center">的个人信息</h3>
        ${users[4].username}
    ${users[7].username}
    <table class="table">
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.username}</td>
                <td>${user.email}</td>
                <td>${user.phone}</td>
                <td>${user.regIp}</td>
                <td>${user.regTime}</td>
            </tr>
        </c:forEach>

    </table>



</section>
<jsp:include page="footer.jsp"></jsp:include>
