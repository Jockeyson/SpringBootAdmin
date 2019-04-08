<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../home/header.jsp"%>
</head>
<body class="layui-layout-body">
<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-form layui-card-header layuiadmin-card-header-auto">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="UserName" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="RealName" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <button class="layui-btn layuiadmin-btn-list" lay-submit lay-filter="LAY-app-contlist-search">
                        <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
                    </button>
                </div>
            </div>
        </div>

        <div class="layui-card-body user-body">
            <div style="padding-bottom: 10px;">
                <button class="layui-btn layuiadmin-btn-list" data-type="batchdel">删除</button>
                <button class="layui-btn layuiadmin-btn-list" data-type="add">添加</button>
            </div>
            <table id="user-list" lay-filter="user-list"></table>
            <script type="text/html" id="user-toolbar">
                <a class="layui-btn layui-btn-xs" lay-event="detail"><i class="layui-icon layui-icon-table"></i>查看</a>
                <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>
                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon layui-icon-delete"></i>删除</a>
            </script>
        </div>
    </div>
</div>
<script>
    //创建实例  要想数据初始化 这里必须要写
    layui.use(['table', 'layer', 'form'], function () {
        var table = layui.table;
        layer = layui.layer;
        form = layui.form;

        table.render({
            elem: '#user-list'
            , url: '/user/getUserList' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                { checkbox: true },
                { field: 'id', title: 'id', width: 120, hide: true, fixed: 'left' }
                , { field: 'userName', title: '用户名', width: 130 }
                , { field: 'realName', title: '姓名', width: 80 }
                , { field: 'age', title: '年龄', width: 80 }
                , { field: 'email', title: '邮箱地址', width: 177 }
                , { field: 'phone', title: '手机号', width: 150 }
                , { field: 'createTime', title: '创建时间', width: 180, sort: true }
                , { fixed: 'right', title: "操作", align: 'center', toolbar: '#user-toolbar' }
            ]]
        });

        //搜索 ----------------------------------------------- Begin-----------------------------------------------------------
        var $ = layui.$, active =
            {
                reload: function () {
                    var demoReload = $('#demoReload').val();//获取输入框的值
                    //执行重载
                    table.reload('test',
                        {
                            page:
                                {
                                    curr: 1 //重新从第 1 页开始
                                }
                            , where: { name: demoReload }//这里传参  向后台
                            , url: '/Home/Temp_search'//后台做模糊搜索接口路径
                            , method: 'post'
                        });
                },
                batchdel: function () {
                    var checkStatus = table.checkStatus('user-list')
                        , checkData = checkStatus.data; //得到选中的数据

                    if (checkData.length === 0) {
                        return layer.msg('请选择数据');
                    }

                    layer.confirm('确定删除吗？', function (index) {

                        //执行 Ajax 后重载
                        /*
                        admin.req({
                          url: 'xxx'
                          //,……
                        });
                        */
                        table.reload('user-list');
                        layer.msg('已删除');
                    });
                },
                add: function () {
                    layer.open(
                        {
                            type: 2,
                            title: '新增',
                            //skin: 'layui-layer-molv',
                            shadeClose: false,
                            //shade: 0.8,
                            btn: ['保存', '取消'],
                            area: ['880px', '400px'],
                            content: ['/user/insert', 'no'],//跳转的页面
                            //cancel: function (index) {
                            //    $(".layui-laypage-btn").click();//这里用于关闭Open时触发回调函数  刷新父页面数据  一定要引入Jquery
                            //}
                            yes: function (index, layero) {
                                //do something
                                alert("确定");
                                layer.close(index); //如果设定了yes回调，需进行手工关闭
                            }

                        });
                }
            };
        //这个是用于创建点击事件的实例
        $('.user-body .layui-btn').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
        //搜索 ----------------------------------------------- End-----------------------------------------------------------






        //监听工具条 ----------------------------------------------- Begin-----------------------------------------------------------
        table.on('tool(user-list)', function (obj) {    //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if (layEvent == 'edit') {
                layer.open(
                    {
                        type: 2,
                        title: '编辑',
                        //skin: 'layui-layer-molv',
                        shadeClose: false,
                        //shade: 0.8,
                        btn: ['保存', '取消'],
                        area: ['880px', '400px'],
                        content: ['/user/update','no'],//跳转的页面
                        //cancel: function (index) {
                        //    $(".layui-laypage-btn").click();//这里用于关闭Open时触发回调函数  刷新父页面数据  一定要引入Jquery
                        //}
                        yes: function (index, layero) {
                            //do something
                            alert("确定");
                            layer.close(index); //如果设定了yes回调，需进行手工关闭
                        }

                    });
            }
            else if (layEvent == "detail")
            {
                layer.open(
                    {
                        type: 2,
                        title: '详情',
                        //skin: 'layui-layer-molv',
                        shadeClose: false,
                        //shade: 0.8,
                        //btn: ['保存', '取消'],
                        area: ['800px', '350px'],
                        content: ['/user/detail', 'no'],//跳转的页面

                    });
            }
            else//删除数据
            {
                $.post("", { id: data.UserId }, function (ret) {
                    if (ret.code == "1") {
                        layer.msg(ret.msg, { icon: 1, time: 1500 }, function () {
                            obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                            //$(".layui-laypage-btn").click();
                        });
                    } else {
                        layer.msg(ret.msg, { icon: 2, time: 1500 });
                    }
                });

            }
        });

        //监听工具条 ----------------------------------------------- ENd-----------------------------------------------------------
    });
</script>


</body>
</html>