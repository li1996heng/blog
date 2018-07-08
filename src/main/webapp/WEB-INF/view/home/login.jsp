<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
<TITLE>登录页面</TITLE>
<SCRIPT src="${pageContext.request.contextPath }/js/jquery.min.js"
	type="text/javascript"></SCRIPT>
<script src="${pageContext.request.contextPath }/js/gVerify.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/login.css">
<SCRIPT type="text/javascript">
	$(function() {
		//得到焦点
		$("#password").focus(function() {
			$("#left_hand").animate({
				left : "150",
				top : " -38"
			}, {
				step : function() {
					if (parseInt($("#left_hand").css("left")) > 140) {
						$("#left_hand").attr("class", "left_hand");
					}
				}
			}, 2000);
			$("#right_hand").animate({
				right : "-64",
				top : "-38px"
			}, {
				step : function() {
					if (parseInt($("#right_hand").css("right")) > -70) {
						$("#right_hand").attr("class", "right_hand");
					}
				}
			}, 2000);
		});
		//失去焦点
		$("#password").blur(function() {
			$("#left_hand").attr("class", "initial_left_hand");
			$("#left_hand").attr("style", "left:100px;top:-12px;");
			$("#right_hand").attr("class", "initial_right_hand");
			$("#right_hand").attr("style", "right:-112px;top:-12px");
		});
	});

    $(".a_post").on("click",function(event){
        event.preventDefault();//使a自带的方法失效，即无法调整到href中的URL(http://www.baidu.com)
        $.ajax({
            type: "get",
            url: "http://locahost:8080/authorizeUrl",
            /*contentType:"application/json",
            data: JSON.stringify({param1:param1,param2:param2}),//参数列表
            dataType:"json",
            success: function(result){
                //请求正确之后的操作
            },
            error: function(result){
                //请求失败之后的操作
            }*/
        });
    });
</SCRIPT>

</HEAD>
<BODY>
	<DIV class="top_div"></DIV>
	<form id="myForm" action="${pageContext.request.contextPath }/login"
		method="post" onsubmit="return checkCode()">
		<DIV
			style="background: rgb(255, 255, 255); margin: -150px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 280px; text-align: center;">
			<DIV style="width: 165px; height: 96px; position: absolute;">
				<DIV class="tou"></DIV>
				<DIV class="initial_left_hand" id="left_hand"></DIV>
				<DIV class="initial_right_hand" id="right_hand"></DIV>
			</DIV>
			<P style="padding: 30px 0px 10px; position: relative;">
				<SPAN class="u_logo"></SPAN> <INPUT class="ipt" type="text"
					placeholder="请输入用户名或邮箱" name="account" value="">
			</P>
			<P style="position: relative;">
				<SPAN class="p_logo"></SPAN> <INPUT class="ipt" id="password"
					type="password" placeholder="请输入密码" name="pwd" value="">
			</P>

			<div style="position: relative; left: -20px; margin: 10px 50px">
				<div id="v_container" style="width: 150px; height: 40px;"></div>
				<input
					style="width: 175px; height: 38px; position: absolute; left: 150px; top: 0px; border: #B7D5DF 1px solid; padding-left: 10px; font-size: 14px; color: #90a2bc;"
					type="text" id="code_input" value="" placeholder="   请输入验证码" />
			</div>
			<DIV
				style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
				<P style="margin: 10px 35px 20px 45px;">
					<!-- <SPAN style="float: left;"><A
						style="color: rgb(204, 204, 204);" href="#">忘记密码?</A></SPAN> <SPAN
						style="float: right;"><A
						style="color: rgb(204, 204, 204); margin-right: 10px;" href="#">注册</A>
						</SPAN> -->
					<A style="color: rgb(204, 204, 204); margin-left: -150px" href="#">忘记密码?</A>
					&nbsp;&nbsp;&nbsp;&nbsp; <A
						style="color: rgb(204, 204, 204); margin-right: 10px;" href="#">注册</A>

					<a style="margin-bottom: 20px" class="a_post"
						href="${pageContext.request.contextPath }/authorizeUrl"><img
						alt="使用qq登录"
						src="${pageContext.request.contextPath }/img/qqLogin.png"> </a>
					<input type="submit" value="登录"
						style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold; margin: -50px 270px; display: block;">
				</P>
			</DIV>
			<font color="red">${error }</font>
		</DIV>
	</form>
	<div style="text-align: center;"></div>

	<script>
		var verifyCode = new GVerify("v_container");

		function checkCode() {
			var res = verifyCode
					.validate(document.getElementById("code_input").value);
			if (res) {
				return true;
			} else {
				alert("验证码错误");
				return false;
			}
		}
	</script>
</BODY>

</HTML>
