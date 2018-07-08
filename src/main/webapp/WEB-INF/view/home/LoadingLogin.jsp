<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript"
	src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js"
	charset="utf-8" data-callback="true">

QC.api("get_user_info", {}) //get_user_info是API参数
//指定接口访问成功的接收函数，s为成功返回Response对象
     .success(function (s) {
         //成功回调，通过s.data获取OpenAPI的返回数据
         nick = s.data.nickname; //获得昵称
         alter(nick);
         headurl = s.data.figureurl_qq_1; //获得头像
         if (QC.Login.check()) {//判断是否登录
             QC.Login.getMe(function (openId, accessToken) { //这里可以得到openId和accessToken
                 //下面可以调用自己的保存方法
             });
         }
     })
//指定接口访问失败的接收函数，f为失败返回Response对象
     .error(function (f) {
         //失败回调
         alert("获取用户信息失败！");
     });
 ////指定接口完成请求后的接收函数，c为完成请求返回Response对象
 //.complete(function (c) {
 //    //完成请求回调
 //    alert("获取用户信息完成！");
 //});
</script>
</head>
<body>

</body>
</html>