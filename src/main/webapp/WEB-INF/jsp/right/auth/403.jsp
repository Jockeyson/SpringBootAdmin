<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/1
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>403</title>
    <%@ include file="../../home/header.jsp"%>
</head>
<body>
<div>
    没有权限
    <a class="layui-btn layui-btn-normal" onclick="back()">返回上一级</a>
</div>
<script>

    function back() {
        window.frames.history.back();
        return false;
    }
</script>

</body>
</html>
