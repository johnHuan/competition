<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/22
  Time: 9:37
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="../css/uploadWord.css">

<div class="well">
    <h2 class="text-center">上传报名表（<span class="text-info">Word</span>）版</h2>
    <div class="state"></div>
   <section>
       <form action="/uploadWord" method="post" enctype="multipart/form-data">
           <div class="col col-lg-3 col-lg-offset-1 ">
               <div class="filepicker">
                   <label >选择Word报名表</label>
                   <input type="file" id="fileInput" name="file" accept="application/msword" />
               </div>
               <div class="btn-submit">
                   <button type="submit">确认上传</button>
               </div>
           </div>
           <div class="col col-lg-6 overlook">
               <c:if test="${!empty msg}">
                    <div>
                        <span class="text-warning">${msg}</span>
                    </div>
                </c:if>
           </div>
       </form>
   </section>
</div>



<jsp:include page="footer.jsp"></jsp:include>

<script>
    $(function () {
        var fileInput = document.getElementById("fileInput");
        var dataURL = "";
        fileInput.addEventListener("change", function (event) {
            var file = fileInput.files[0];
            // 或者 file = fileInput.files.item(0);

            // 检查是否支持FileReader对象
            if (typeof FileReader != 'undefined') {
                console.log(file);
                if(file.name.includes("doc") || file.name.includes("docx")){
                    $('.overlook').html("文件名："+file.name+"<br>上次修改时间:"+file.lastModifiedDate+"<br>文件大小:"+file.size+"kb<br><span class='text-success'>可以上传</span>");
                } else {
                    $('.overlook').html("文件名："+file.name+"<br><span class='text-warning'>文件格式不对，禁止上传</span>");
                }

            }
        }, false);
    });
</script>