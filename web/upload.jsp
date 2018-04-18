<%--
  Created by IntelliJ IDEA.
  User: famgy
  Date: 4/7/18
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>文件上传</title>
</head>

<body style="background-color: #D0D0D0">
<div class="container">
    <form action="/UploadHandleServlet" enctype="multipart/form-data" method="post">
        上传用户：<input style="margin: 10px" type="text" name="username"><br/>
        上传文件：<input style="margin: 10px" type="file" name="file1"><br/>
        <%--上传文件2：<input type="file" name="file2"><br/>--%>
        <input style="margin: 10px" type="submit" value="提交">
    </form>
</div>

</body>
</html>