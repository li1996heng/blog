<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugin/layui/css/layui.css">
    <style>
        body {
            background: #eeeeee;
        }

        @media screen and (max-width: 768px) {
            .user-login {
                padding-top: 80px;
            }
        }

        .user-login {
            position: relative;
            left: 0;
            top: 0;
            padding: 110px 0;
            min-height: 100%;
            box-sizing: border-box;
        }

        @media screen and (max-width: 768px) {
            .login-form {
                width: 300px;
                margin: 0 auto;
                box-sizing: border-box;
            }
        }

        @media screen and (min-width: 769px) {
            .login-form {
                width: 375px;
                margin: 0 auto;
                box-sizing: border-box;
            }

        }

        .login-header {
            text-align: center;
            padding: 20px;
        }

        .login-header h2 {
            margin-bottom: 10px;
            font-weight: 300;
            font-size: 30px;
            color: #000;
            font-family: Meiryo, "Meiryo UI", Wuwenbin-2, Consolas, "Microsoft YaHei UI", Arial, sans-serif;
        }

        .login-header p {
            font-weight: 300;
            color: #999;
            font-size: 15px;
        }

        .login-body {
            padding: 20px;
        }

        .login-body .layui-form-item {
            position: relative;
        }

        .layui-form-item {
            margin-bottom: 15px;
        }

        .layui-form-item label {
            position: absolute;
            left: 1px;
            top: 1px;
            width: 38px;
            line-height: 36px;
            text-align: center;
            color: #d2d2d2;
        }

        .layui-form-item input {
            padding-left: 38px;
            height: 38px;
            line-height: 1.3;
            line-height: 38px \9;
            border: 1px solid #e6e6e6;
            background-color: #ffffff;
            border-radius: 2px;
        }

        .login-form input[type=checkbox] {
            display: none;
        }

    </style>
</head>
<body>
<div class="layui-row user-login">
    <div class="layui-col-xs12 layui-col-sm12 layui-col-md12 layui-col-lg12">
        <div class="login-form layui-form">
            <div class="login-header">
                <h2>BMY's Admin</h2>
                <p>博客后台内容管理系统</p>
            </div>
            <div class="login-body">
                <div class="layui-form-item">
                    <label><i class="layui-icon">&#xe612;</i> </label>
                    <input type="text" name="miako-username" lay-verify="username"
                           placeholder="用户名" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label><i class="layui-icon">&#xe631;</i> </label>
                    <input type="password" name="miako-password" lay-verify="pass"
                           placeholder="密码" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <input type="checkbox" name="remember" lay-skin="primary" title="记住密码" lay-filter="rm">
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="miako-user-login-submit">登 入
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath }/plugin/layui/layui.js"></script>
<script>
    layui.use(['form', 'element'], function () {
        var form = layui.form;

        form.on('checkbox(rm)', function (data) {
            console.log(data.elem.checked); //开关是否开启，true或者false
        });

        form.verify({
            username: function (value, item) { //value：表单的值、item：表单的DOM对象
                if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)) {
                    return '用户名不能有特殊字符';
                }
                if (/(^\_)|(\__)|(\_+$)/.test(value)) {
                    return '用户名首尾不能出现下划线\'_\'';
                }
                if (/^\d+\d+\d$/.test(value)) {
                    return '用户名不能全为数字';
                }
            }
            //我们既支持上述函数式的方式，也支持下述数组的形式
            //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
            , pass: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
        });

        form.on('submit(miako-user-login-submit)', function (data) {
            console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
    })
</script>
</body>
</html>