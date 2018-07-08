<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="applicable-device" content="pc,mobile">
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<link rel="shortcut icon" href="img/logo.png">
<meta name="description" content="风吟博客,一个简洁的Java博客,言曌程序学习的一个新起点。" />
<meta name="keywords" content="风吟,风吟博客,Java博客,SSM博客,言曌,言曌博客" />
<title>${oneBlogInfoById.title }</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugin/layui/css/layui.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugin/font-awesome/css/font-awesome.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/highlight.css">
<style>
.entry-title {
	background: #f8f8f8;
}
</style>
</head>
<body>

	<div id="page" class="site" style="transform: none;">
		<%@ include file="public/head.jsp"%>
		<nav class="breadcrumb">
			<a class="crumbs" href="${pageContext.request.contextPath }/blog/index/1"> <i class="fa fa-home"></i>首页
			</a> <i class="fa fa-angle-right"></i> <a href="${pageContext.request.contextPath }/blog/getBlogInfoByBigType/${navBigTypeBlog.id }/1">${navBigTypeBlog.name }</a> <i
				class="fa fa-angle-right"></i> <a href="${pageContext.request.contextPath }/blog/getBlogInfoBySmallType/${navsmallTypeBlog.id }/1">
				${navsmallTypeBlog.name }</a> <i class="fa fa-angle-right"></i>
			正文
		</nav>
		<div id="content" class="site-content" style="transform: none;">
			<div id="primary" class="content-area">
				<main id="main" class="site-main" role="main"> 
					<c:choose>
						<c:when test="${fn:length(blogInfoByBigType) > 0}">
							<c:forEach items="${blogInfoByBigType }" var="b">
						<article class="post type-post">
							<figure class="thumbnail">
								<a href="${pageContext.request.contextPath }/blog/getOneBlogInfoById/${b.id}"> <img
									src="${pageContext.request.contextPath }/${b.img }"
									class="attachment-content size-content wp-post-image"
									alt="${b.title }" width="280px" height="210px">
								</a>
								<span class="cat"> <a href="#">
										${b.smallTypeBlog.name }</a>
								</span>
							</figure>
							<header class="entry-header">
								<h2 class="entry-title">
									<a href="${pageContext.request.contextPath }/blog/getOneBlogInfoById/${b.id}" rel="bookmark">${b.title }</a>
								</h2>
							</header>

							<div class="entry-content">
								<div class="archive-content" style="height: 130px">${b.newContent }</div>
								<span class="title-l"></span> <span class="new-icon"> </span> <span
									class="entry-meta"> <span class="date"> <fmt:formatDate
											value="${b.updateTime }" pattern="yyyy-MM-dd HH:mm:ss" />
										&nbsp;&nbsp;
								</span> <span class="views"> <i class="fa fa-eye"></i>
										${b.likesNum } views
								</span> <span class="comment">&nbsp;&nbsp; <a
										href="/article/17#comments" rel="external nofollow"> <i
											class="fa fa-comment-o"></i> ${b.commentNum }
									</a>
								</span>
								</span>
								<div class="clear"></div>
							</div>
							<!-- .entry-content -->

							<span class="entry-more"> <a
								href="${pageContext.request.contextPath }/blog/getOneBlogInfoById/${b.id}" rel="bookmark"> 阅读全文 </a>
							</span>
						</article>
					</c:forEach>
						</c:when>
						<c:otherwise>
							<p style="text-align: center;">该分类下目前没有文章</p>
						</c:otherwise>
					</c:choose> 
				</main>
				
				<!-- layPager分页容器 -->
				<div id="demo1" style="position: relative; left: 343px;top:-10px;"></div>
			</div>
			<div id="sidebar" class="widget-area all-sidebar"
				style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">

				<aside class="widget widget_search">
					<div class="searchbar">
						<form method="get" id="searchform1" action="/search">
							<span> <input type="text" value="" name="query" id="s1"
								placeholder="输入搜索内容" required="">
								<button type="submit" id="searchsubmit1">搜索</button>
							</span>
						</form>
					</div>
					<div class="clear"></div>
				</aside>
				<aside class="widget hot_comment">
					<h3 class="widget-title">
						<i class="fa fa-bars"></i>热评文章
					</h3>
					<div id="hot_comment_widget">
						<ul>
							<li><a href="/article/17" rel="bookmark" title=" (11条评论)">
									java中ImageIcon路径问题</a></li>
							<li><a href="/article/14" rel="bookmark" title=" (3条评论)">
									execute、executeUpdate、executeQuery三者的区别</a></li>
							<li><a href="/article/13" rel="bookmark" title=" (3条评论)">
									sql语句分为三类(DML,DDL,DCL)-介绍</a></li>
							<li><a href="/article/8" rel="bookmark" title=" (3条评论)">
									Mybatis高级映射多对多查询</a></li>
							<li><a href="/article/11" rel="bookmark" title=" (2条评论)">
									Java如何让程序一直运行，不停止</a></li>
							<li><a href="/article/9" rel="bookmark" title=" (2条评论)">
									Servlet 实现验证码</a></li>
							<li><a href="/article/15" rel="bookmark" title=" (1条评论)">
									JSP 中 forward 转发 和 sendRedirect 重定向的区别</a></li>
							<li><a href="/article/10" rel="bookmark" title=" (1条评论)">
									Integer与int的种种比较你知道多少？</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</aside>
				<aside class="widget">
					<h3 class="widget-title">
						<i class="fa fa-bars"></i>所有标签
					</h3>
					<div class="tagcloud">
						<a href="/tag/1" class="tag-link-129 tag-link-position-1"
							title="5个话题" style="font-size: 14px;"> Java</a> <a href="/tag/2"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> 算法</a> <a href="/tag/3"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> 数据结构</a> <a href="/tag/4"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> C</a> <a href="/tag/5"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> 操作系统</a> <a href="/tag/6"
							class="tag-link-129 tag-link-position-1" title="1个话题"
							style="font-size: 14px;"> 计算机网络</a> <a href="/tag/8"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> 面试题</a> <a href="/tag/9"
							class="tag-link-129 tag-link-position-1" title="1个话题"
							style="font-size: 14px;"> 数据库</a> <a href="/tag/10"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> MySQL</a> <a href="/tag/11"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> Spring</a> <a href="/tag/12"
							class="tag-link-129 tag-link-position-1" title="2个话题"
							style="font-size: 14px;"> SpringMVC</a> <a href="/tag/13"
							class="tag-link-129 tag-link-position-1" title="1个话题"
							style="font-size: 14px;"> MyBatis</a> <a href="/tag/14"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> JVM</a> <a href="/tag/15"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> 设计模式</a> <a href="/tag/16"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> 网络编程</a> <a href="/tag/17"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> IO</a> <a href="/tag/18"
							class="tag-link-129 tag-link-position-1" title="2个话题"
							style="font-size: 14px;"> JSP</a> <a href="/tag/19"
							class="tag-link-129 tag-link-position-1" title="1个话题"
							style="font-size: 14px;"> Servlet</a> <a href="/tag/20"
							class="tag-link-129 tag-link-position-1" title="2个话题"
							style="font-size: 14px;"> JavaWeb</a> <a href="/tag/21"
							class="tag-link-129 tag-link-position-1" title="2个话题"
							style="font-size: 14px;"> Hibernate</a> <a href="/tag/22"
							class="tag-link-129 tag-link-position-1" title="0个话题"
							style="font-size: 14px;"> SQL</a>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</aside>
				<aside id="random_post-7" class="widget random_post wow fadeInUp"
					data-wow-delay="0.3s">
					<h3 class="widget-title">
						<i class="fa fa-bars"></i>随机文章
					</h3>
					<div id="random_post_widget">
						<ul>
							<li><a href="/article/11" rel="bookmark">
									Java如何让程序一直运行，不停止</a></li>
							<li><a href="/article/1" rel="bookmark">
									[转载]SpringMVC中使用Interceptor拦截器</a></li>
							<li><a href="/article/17" rel="bookmark">
									java中ImageIcon路径问题</a></li>
							<li><a href="/article/6" rel="bookmark"> Hibernate
									简单的CURD操作</a></li>
							<li><a href="/article/4" rel="bookmark"> [转载]HTTP的幂等性</a></li>
							<li><a href="/article/7" rel="bookmark"> Hibernate 基本类型</a></li>
							<li><a href="/article/5" rel="bookmark"> JDBC常用API和使用</a></li>
							<li><a href="/article/14" rel="bookmark">
									execute、executeUpdate、executeQuery三者的区别</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</aside>
			</div>
		</div>
		<div class="clear"></div>
		<footer id="colophon" class="site-footer" role="contentinfo">
			<div class="site-info">
				<p style="text-align: center;">
					Copyright © 2017 <a href="/" target="_blank"
						rel="noopener noreferrer">风吟博客</a> All rights reserved. <a
						target="_blank" href="/map"> <span class="font-text">站点地图</span>
					</a>
				</p>
			</div>
			<!-- .site-info -->
		</footer>
		<!-- .site-footer -->
	</div>
	<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/superfish.js"></script>
	<script src="${pageContext.request.contextPath }/js/script.js"></script>
	<script src="${pageContext.request.contextPath }/plugin/layui.all.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.cookie.js"></script>
	<script src="${pageContext.request.contextPath }/plugin/layui/layui.js"></script>
	<script>
	
	layui.use('laypage', function() {
		var laypage = layui.laypage;
		//执行一个laypage实例
		
		laypage.render({
			elem : 'demo1' //注意，这里的 test1 是 ID，不用加 # 号
			,count: ${pageInfo.pages * 10}//数据总数    这里要乘以10  比如你有两页数据  那么这里应该写20
			,curr: ${pageInfo.pageNum} 
		    ,jump: function(obj,first){
		    	//这个标识符可以判断分页容器此时是通过大类分页还是小类分页
		    	var flag = ${flag}
		    	if(flag == 1){
		    		//首次不执行
			        if(!first){
			        	
			        	//EL表达式得到PageInfo中小类的ID
			        	var sid = ${pageInfo.list.get(0).smallTypeBlog.id}
			          //do something /getBlogInfoBySmallType/{id}/{currentPage}
			        	window.location = '/blog/getBlogInfoBySmallType/'+sid+'/'+obj.curr;	
			        	
			        } 
		    	}
		    	if(flag == 0){
		    		//首次不执行
			        if(!first){
			        	
			        	//EL表达式得到PageInfo中大类的ID
			        	var bid = ${pageInfo.list.get(0).smallTypeBlog.bid}
			          //do something /getBlogInfoBySmallType/{id}/{currentPage}
			        	window.location = '/blog/getBlogInfoByBigType/'+bid+'/'+obj.curr;	
			        	
			        } 
		    	} 
		    }
		});
	});
		</script>
	<script type="text/javascript">
		increaseViewCount();
		layui.code({
			elem : 'pre',//默认值为.layui-code
			// skin: 'notepad', //如果要默认风格，不用设定该key。
			about : false
		});
	</script>

</body>
</html>