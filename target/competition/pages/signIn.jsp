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
<link rel="stylesheet" href="../css/signIn.css">

<div class="well ">
    <h2 class="text-center">第五届全国高等学校大学生测绘技能大赛报名表</h2>
    <div class="state"></div>

    <form action="<c:url value="/signIn"/>" method="post" class="form-horizontal">
        <table class="table table-bordered">
            <tr>
                <td><strong>所在院校</strong></td>
                <td colspan="5"><input required type="text" class="form-control" name="college" placeholder="eg：东北大学 资源与土木工程学院 测绘工程系"></td>
            </tr>
            <tr>
                <td rowspan="2"><strong>领 队</strong></td>
                <td>姓名</td>
                <td>职务、职称</td>
                <td>手机</td>
                <td colspan="2">Email</td>
            </tr>
            <tr>
                <td><input type="text" class="form-control" required value="${sessionScope.user.username}" name="captain"></td>
                <td><input type="text" class="form-control" required name="duty"></td>
                <td><input type="text" class="form-control" required value="${sessionScope.user.phone}" name="phone"></td>
                <td colspan="2"><input type="text" class="form-control" required value="${sessionScope.user.email}" name="email"></td>
            </tr>
            <tr>
                <td><strong>学校 <br>通讯地址</strong></td>
                <td colspan="4"><input required class="form-control" type="text" name="address" placeholder="eg：辽宁省 沈阳市 和平区 文化路 3号巷 11号 东北大学"></td>
            </tr>
        </table>
        <div class="form-group">
                <button class="btn btn-success col-lg-2" type="submit">报 名</button>
        </div>
    </form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script src="../js/bootstrapValidator.min.js"></script>
<script src="../js/regist.js"></script>
