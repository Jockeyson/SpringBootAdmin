<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../home/header.jsp"%>
</head>
<body class="layui-layout-body">
<div style="padding: 20px; background-color: #F2F2F2;">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">左侧菜单</div>
                <div class="layui-card-body layui-form">
                    <div class="eleTree" id="menu-eleTree-test" lay-filter="menu-eleTree-test"></div>
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">菜单功能树</div>
                <div class="layui-card-body" style="height:400px;overflow-x:hidden;">
                    <div class="eleTree" id="menufunc-eleTree-test" lay-filter="menufunc-eleTree-test"></div>
                </div>
            </div>
        </div>
    </div>
</div>
    <link rel="stylesheet" href="../../../../static/layui/css/eleTree.css">
<script>
    layui.config({
        base: "../../../../static/layui/lay/extModules/"
    }).use(["jquery", "eleTree"], function () {
        var $ = layui.$;
        var eleTree = layui.eleTree;
        var el1 = eleTree.render({
            elem: '#menu-eleTree-test',
           // showCheckbox: true,
            //checkOnClickNode: true,
            expandOnClickNode: true,
            url: "/auth/getAllMenuTree",
            done: function (res) {
               el1.reload({ data: res.data });
            }
        });

        var el2 = eleTree.render({
            elem: '#menufunc-eleTree-test',
            // showCheckbox: true,
            //checkOnClickNode: true,
            expandOnClickNode: true,
            url: "/auth/getAllMenuFuncTree",
            done: function (res) {
                el2.reload({ data: res.data });
            }
        });
        })
</script>


</body>
</html>