<%--
  Created by IntelliJ IDEA.
  User: YSK
  Date: 2021/10/9
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>修改用户</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="js/jquery-3.6.0.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>


</head>
<body>

<div class="container" style="width: 50%">
    <center><h3>修改用户信息</h3></center>
    <form action="${pageContext.request.contextPath}/updateUserServlet" method="post">
        <%--        隐藏域传递id值--%>
        <input type="hidden" name="id" value="${user.id}">

        <div class="form-group">
            <label for="name">用户名：</label>
            <input type="text" class="form-control" id="name" name="name" value="${user.name}"
                   placeholder="请输入用户名">
        </div>

        <div class="form-group">
            <label for="password">密码：</label>
            <input type="text" class="form-control" id="password" name="password" value="${user.password}"
                   placeholder="请输入密码">
        </div>

        <div class="form-group">
            <label>性别：</label>
            <%--            判断性别，回显--%>
            <c:if test="${user.gender=='男'}">
                <input type="radio" name="gender" value="男" checked="checked">男
                <input type="radio" name="gender" value="女">女
            </c:if>

            <c:if test="${user.gender=='女'}">
                <input type="radio" name="gender" value="男">男
                <input type="radio" name="gender" value="女" checked="checked">女
            </c:if>

        </div>

        <div class="form-group">
            <label for="age">年龄：</label>
            <input type="text" class="form-control" id="age" name="age" value="${user.age}">
        </div>

        <div class="form-group">
            <label for="phone">手机：</label>
            <input type="text" class="form-control" id="phone" name="phone" value="${user.phone}">
        </div>

        <div class="form-group">
            <label for="email">邮箱：</label>
            <input type="text" class="form-control" id="email" name="email" value="${user.email}">
        </div>

        <div class="form-group" style="float: right">
            <input class="btn btn-primary" type="submit" value="提交">
            <input class="btn btn-default" type="reset" value="重置">
            <input class="btn btn-default" type="button" value="返回"
                   onclick="window.top.location.href='${pageContext.request.contextPath}/findUserByPageServlet'">
        </div>

    </form>

</div>

</body>
</html>
