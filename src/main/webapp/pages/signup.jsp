<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/22
  Time: 10:11
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<jsp:include page="header.jsp"></jsp:include>
<style>
  .alert-success h4, .alert-error h4 {
         color: #5CB85C;
     }
    .alert h4 {
        margin: 0;
    }
    .alert, .alert h4 {
        color: #c09853;
    }
	div.alert{
		width: 500px;
		margin: 0 auto;
	}
	.alert h4{
		font-size: 22px;
		text-align: center;
	}
</style>

<section class="well">
<h2 class="text-center">在线报名</h2>
	<div class="alert alert-info">
        <button class="close" type="button" data-dismiss="alert">×</button>
        <h4>通告：</h4>
        <p>1.系统将在5月10日~5月20日开放</p>
        <p>2.如需替换参赛队员请及时重新上传报名表</p>
        <p><em class="text-success">PS: 如果参赛队员信息有变化只需要<a class="text-info" href="<c:url value='reUpload'/> ">重新上传word报名表</a>即可</em></p>
        <p>3.如有问题，请按下方的联系方式联系组委会</p>
    </div>
    <h3>报名流程：</h3>
    <ol>
        <li>1. 下载<a href="/download?id=2">报名表</a></li>
        <li>2. 准确填写报名表后加盖公章</li>
        <c:choose>
            <c:when test="${!empty sessionScope.user.phone}">
                <li>3. 在大赛官网 <a href="/signIn">在线报名</a></li>
            </c:when>
            <c:otherwise>
                <li>3. 在大赛官网 <a href="/regist">注册</a>账号并在线报名， 如果已有账号，请直接 <a href="/login">登录</a></li>
            </c:otherwise>
        </c:choose>
        <li>4. 上传填写并盖过公章的报名表的扫描件至 大赛官网</li>
        <li>5. 上传报名表（Word版）</li>
        <li><span class="bg-success">报名完成</span></li>
        <li><em class="text-success">PS: 如果参赛队员信息有变化只需要<a class="text-info" href="<c:url value='reUpload'/> ">重新上传word报名表</a>即可</em></li>
    </ol>
    <h3>报名时间：</h3>
    <ol>
        <li><span class="text-success">2018年4月1日-15日</span></li>
    </ol>
    <h3>说明：</h3>
    <ol>
        <li><span class="text-warning">1. 请在规定的时间段内报名</span></li>
		<li><span class="text-warning">2. 如果在报名过程中遇到问题，或需要修改信息，请按最下方的联系方式联系组委会</span></li>
    </ol>
</section>
<jsp:include page="footer.jsp"></jsp:include>







