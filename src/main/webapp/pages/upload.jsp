<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/22
  Time: 21:27
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="../css/upload.css">

<section class="well">
    <h2 class="text-center">上传加盖公章后的纸质报名表</h2>
    <div class="state"></div>
    <div class="container">

        <div class="row">
        <form action="/upload" method="post" class="form-horizontal" enctype="multipart/form-data">
            <div class="col col-lg-3 col-lg-offset-1 ">
                <div class="filepicker">
                    <label >点击选择文件</label>
                    <input type="file" id="fileInput" name="file" multiple="multiple" accept="image/*" />
                </div>
                <div class="btn-submit">
                    <button type="submit">确认上传</button>
                </div>
            </div>
        </form>
            <div class="col col-lg-8 overlook">

            </div>
        </div>

    </div>


</section>
<jsp:include page="footer.jsp"></jsp:include>

<script>
    $(function () {
        var fileInput = document.getElementById("fileInput");
        var dataURL = "";
        fileInput.addEventListener("change", function (event) {
        var file = fileInput.files[0];
        // 或者 file = fileInput.files.item(0);
//        console.log(file);
        // 检查是否支持FileReader对象
        if (typeof FileReader != 'undefined') {

            var acceptedTypes = {
                'image/png': true,
                'image/jpeg': true,
                'image/gif': true
            };
            if (acceptedTypes[document.getElementById('fileInput').files[0].type] === true) {

                var reader = new FileReader();

                reader.onload = function (event) {

                    var image = new Image();



                    image.src = event.target.result;

                    image.width = 400;
                    image.height = 450;

                    $('.overlook').html(image);

                };
                reader.onloadend = function () {
                    dataURL = reader.result;
                };
                reader.readAsDataURL(document.getElementById('fileInput').files[0]);
            }

        }
    }, false);
    });

    $(function () {
        $("button[type=submit]").on('click', function(e){
//            e.preventDefault();
            if ($('input[type=file]').val().length < 2){
                alert("请先选择文件, 仅支持图片格式");
                return false;
            }
            return true;
        });
    });

</script>

