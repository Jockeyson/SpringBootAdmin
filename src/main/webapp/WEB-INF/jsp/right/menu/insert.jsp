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
            <label class="layui-form-label">菜单名:</label>
            <div class="layui-input-block">
                <input type="text" name="Name" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">菜单地址:</label>
            <div class="layui-input-block">
                <input type="password" name="Url" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">父级菜单:</label>
            <div class="layui-input-block">
                <input type="text" name="parentID" required="" lay-verify="required" placeholder="请选择" readonly="" autocomplete="off" class="layui-input">
                <div class="eleTree-select" id="parent-eleTree-select" lay-filter="parent-eleTree-select"></div>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">图标:</label>
            <div class="layui-input-block">
                <input type="password" name="Icon" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">编号:</label>
            <div class="layui-input-block">
                <input type="text" name="Number" placeholder="请输入" autocomplete="off" class="layui-input" />
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <div class="layui-inline">
            <label class="layui-form-label">备注:</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单权限:</label>
        <div class="layui-input-block">
    <c:forEach var="item" items="funcList">
        <input type="checkbox" name="menuFunc" value="${item.id}" lay-skin="primary" title="${item.name}">
    </c:forEach>
        </div>
    </div>
</div>
    <link rel="stylesheet" href="../../../../static/layui/css/eleTree.css">
<script>
    layui.config({ base: "../../../../static/layui/lay/extModules/" })
        .use(['form', 'jquery', 'eleTree'], function () {
            var form = layui.form;
            var $ = layui.$;
            var eleTree = layui.eleTree;
            var el;
            $("[name='parentID']").on("click", function (e) {
                e.stopPropagation();
                if (!el) {
                    el = eleTree.render({
                        elem: '#parent-eleTree-select',
                        //data: data,
                        url: '/menu/getMenuTree',
                        defaultExpandAll: true,
                        expandOnClickNode: false,
                        highlightCurrent: true,
                        done: function (res) {

                            el.reload({ data: res.data });
                        }
                    });
                }
                $("#parent-eleTree-select").toggle();

            })
            eleTree.on("nodeClick(parent-eleTree-select)", function (d) {
                $("[name='parentID']").val(d.data.currentData.label)
                $("#parent-eleTree-select").hide();
            })
            $(document).on("click", function () {
                $("#parent-eleTree-select").hide();
            })

        });
</script>
</body>
</html>