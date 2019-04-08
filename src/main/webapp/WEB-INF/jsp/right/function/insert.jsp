<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../home/header.jsp"%>
</head>
<body class="layui-layout-body">
<div class="layui-form">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">名称:</label>
            <div class="layui-input-block">
                <input type="text" name="Name" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">编码:</label>
            <div class="layui-input-block">
                <input type="text" name="Code" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">编号:</label>
            <div class="layui-input-block">
                <input type="text"  name="Number" placeholder="请输入" autocomplete="off" class="layui-input"/>
            </div>
        </div>
    </div>
</div>
<script>
    layui.use('form', function () {
        var form = layui.form;

    });
</script>


</body>
</html>