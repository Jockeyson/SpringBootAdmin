<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">
                    简介
                    <i class="layui-icon layui-icon-tips" lay-tips="待完善" lay-offset="5"></i>
                </div>
                <div class="layui-card-body layui-text layadmin-text">
                    <p>1. SpringBoot+Mybatis+layui的简易后台管理模板。</p>
                    <p>2. 前端页面现在只是展示布局，只支持列表数据呈现，前后端交互暂未实现，还存在许多样式问题，比如滚动条，tab标签与url的绑定，tab页的刷新等，后期有空完善。</p>
                    <p>3. 后端目前加了基于shiro身份认证及授权验证，也有待完善，其他如缓存，日志，异常处理会慢慢补充。</p>
                    <p>4. 因为前后端没有交互，所以数据都是手动在数据库添加的，单纯为了页面显示，后端有些数据也是固定的。</p>
                    <p>5. 这个版本还很粗糙，肯定有许多不足之处，望见谅！</p>
                    <p>6. github源码：<a href="https://github.com/Jockeyson/SpringBootAdmin" target="_blank">SpringBootAdmin</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .layui-card-header .layui-icon {
        line-height: initial;
        position: absolute;
        right: 15px;
        top: 50%;
        margin-top: -7px;
    }
</style>
