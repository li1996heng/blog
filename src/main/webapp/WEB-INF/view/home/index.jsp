<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page import="cn.bigwel.entity.*"%>
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
<link rel="shortcut icon" href="/img/logo.png">
<meta name="description" content="一个简洁的Java博客," />
<meta name="keywords" content="李恒   SSM项目 JAVA 博客  项目" />
<title>我的博客</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugin/layui/css/layui.css"
	media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugin/font-awesome/css/font-awesome.min.css">
</head>
<body>
	<div id="page" class="site" style="transform: none;">
		<%@ include file="public/head.jsp"%>
		<nav class="breadcrumb">
			<div class="bull">
				<i class="fa fa-volume-up"></i>
			</div>
			<div id="scrolldiv">
				<div class="scrolltext">
					<ul style="margin-top: 0px;">
						<li class="scrolltext-title"><a href="#" rel="bookmark">本站下载地址</a></li>
					</ul>
				</div>
			</div>
		</nav>


		<div id="content" class="site-content" style="transform: none;">
			<div id="primary" class="content-area">
				<main id="main" class="site-main" role="main"> <c:forEach
					items="${blogInfoList }" var="b">
					<article class="post type-post">
						<figure class="thumbnail">
							<a
								href="${pageContext.request.contextPath }/blog/getOneBlogInfoById/${b.id}">
								<img src="${pageContext.request.contextPath }/${b.img }"
								class="attachment-content size-content wp-post-image"
								alt="${b.title }" width="280px" height="210px">
							</a>
							<span class="cat"> <a href="#"> ${b.smallTypeBlog.name }</a>
							</span>
						</figure>
						<header class="entry-header">
							<h2 class="entry-title">
								<a
									href="${pageContext.request.contextPath }/blog/getOneBlogInfoById/${b.id}"
									rel="bookmark">${b.title }</a>
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
							href="${pageContext.request.contextPath }/blog/getOneBlogInfoById/${b.id}"
							rel="bookmark"> 阅读全文 </a>
						</span>
					</article>

				</c:forEach> </main>
				
				<!-- layPager分页容器 -->
				<div id="demo1" style="position: relative; left: 343px;top:-10px;"></div>

			</div>

			<div id="sidebar" class="widget-area all-sidebar"
				style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">

				<aside class="widget about">
					<h3 class="widget-title">
						<i class="fa fa-bars"></i>关于本站
					</h3>
					<div id="feed_widget">
						<div class="feed-about">
							<div class="about-main">
								<div class="about-img">
									<img
										src="${pageContext.request.contextPath }/img/blog/java.jpg"
										alt="头像" width="100px" height="101px">
								</div>
								<div class="about-name">持之李恒</div>
								<div class="about-the">
									<br /> 有道无术，术可求；<br /> 有术无道，止于术。
								</div>
							</div>
							<div class="clear"></div>
							<ul>
								<li class="weixin"><a title="微信" id="weixin_btn"
									rel="external nofollow"> <i class="fa fa-weixin"> </i>
										<div id="weixin_code" class="hide">
											<img
												src="${pageContext.request.contextPath }/img/weixin/weixin3.png"
												alt="">
										</div>
								</a></li>
								<li class="tqq"><a target="blank" rel="external nofollow"
									href="http://wpa.qq.com/msgrd?V=3&amp;uin=978477749&amp;Site=QQ&amp;Menu=yes"
									title="QQ在线"> <i class="fa fa-qq"></i>
								</a></li>
								<li class="tsina"><a title=""
									href="http://weibo.com/5936412667" target="_blank"
									rel="external nofollow"> <i class="fa fa-weibo"></i>
								</a></li>
								<li class="feed"><a title=""
									href="https://github.com/saysky" target="_blank"
									rel="external nofollow"> <i class="fa fa-github"></i>
								</a></li>
							</ul>
							<div class="about-inf">
								<span class="about-pn">文章 17</span> <span class="about-cn">留言
									25</span>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</aside>
				<aside id="php_text-22" class="widget php_text">
					<h3 class="widget-title">
						<i class="fa fa-bars"></i>网站概况
					</h3>
					<div class="textwidget widget-text">
						<ul class="site-profile">
							<li><i class="fa fa-file-o"></i> 文章总数：17 篇</li>
							<li><i class="fa fa-commenting-o"></i> 留言数量：25 条</li>
							<li><i class="fa fa-folder-o"></i> 分类数量：18 个</li>
							<li><i class="fa fa-tags"></i> 标签总数：21 个</li>
							<li><i class="fa fa-link"></i> 链接数量：1 个</li>
							<li><i class="fa fa-eye"></i> 浏览总量：511 次</li>
							<li><i class="fa fa-pencil-square-o"></i> 最后更新： <span
								style="color: #2F889A"> 2017年10月07日</span></li>
						</ul>
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
							<li><a href="/article/10" rel="bookmark" title=" (1条评论)">
									Integer与int的种种比较你知道多少？</a></li>
							<li><a href="/article/16" rel="bookmark" title=" (0条评论)">
									Java中File类的使用</a></li>
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
							<li><a href="/article/1" rel="bookmark">
									[转载]SpringMVC中使用Interceptor拦截器</a></li>
							<li><a href="/article/13" rel="bookmark">
									sql语句分为三类(DML,DDL,DCL)-介绍</a></li>
							<li><a href="/article/12" rel="bookmark">
									Java中静态代码块、构造代码块的区别</a></li>
							<li><a href="/article/14" rel="bookmark">
									execute、executeUpdate、executeQuery三者的区别</a></li>
							<li><a href="/article/10" rel="bookmark">
									Integer与int的种种比较你知道多少？</a></li>
							<li><a href="/article/3" rel="bookmark">
									使用rapid-framework继承jsp页面</a></li>
							<li><a href="/article/5" rel="bookmark"> JDBC常用API和使用</a></li>
							<li><a href="/article/4" rel="bookmark"> [转载]HTTP的幂等性</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</aside>
				<aside id="recent_comments-2"
					class="widget recent_comments wow fadeInUp" data-wow-delay="0.3s">
					<h3 class="widget-title">
						<i class="fa fa-bars"></i>近期评论
					</h3>
					<div id="message" class="message-widget">
						<ul>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-25" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/8efefdc960e56404e48fece80a8fe8a6?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>666666666666</strong>
								</span> 666666666666
							</a></li>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-24" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/8efefdc960e56404e48fece80a8fe8a6?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>呵呵呵</strong>
								</span> 呵呵
							</a></li>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-23" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/a0a7f14acd1cc180ffc28b7d8fb3cdde?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>亚纳</strong>
								</span> 地方的广泛地
							</a></li>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-22" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/8efdcd75dba3cafa55450352b755a4cb?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>111</strong>
								</span> 你好你好
							</a></li>
							<li style="border: none;"><a
								href="/article/8/#anchor-comment-21" title="Mybatis高级映射多对多查询"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/452411f7b6e00c9795018ae1ef5de860?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>ss</strong>
								</span> 测试
							</a></li>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-20" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/b918ea6cdc272b96767729237ea9e870?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>j</strong>
								</span> j
							</a></li>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-19" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/19e0da2bc5238e6c206585c95261a587?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>123</strong>
								</span> 123
							</a></li>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-18" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/4a1062c4a4620d2f9e0b7dc826a775bb?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>123123qwe</strong>
								</span> qweqweqw
							</a></li>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-17" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/751c4f0deaba2683a915f5e8765564a4?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>123123</strong>
								</span> 12312
							</a></li>
							<li style="border: none;"><a
								href="/article/17/#anchor-comment-16" title="java中ImageIcon路径问题"
								rel="external nofollow"> <img alt=""
									src="http://cn.gravatar.com/avatar/af42ba2e9e3d304147dee6eb39a17b4f?s=128&d=identicon&r=PG"
									class="avatar avatar-64 photo" height="64" width="64"> <span
									class="comment_author"> <strong>12312</strong>
								</span> 123123
							</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</aside>
			</div>



		</div>
		<div class="clear"></div>

		<div class="links-box">
			<div id="links">
				<ul class="lx7">
					<li class="link-f link-name"><a href="http://liuyanzhao.com"
						target="_blank"> 言曌博客</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
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
	<script src="${pageContext.request.contextPath }/plugin/layui/layui.all.js"></script>
	<script src="${pageContext.request.contextPath }/plugin/layui/layui.js"></script>
	<script>
	layui.use('laypage', function() {
		var laypage = layui.laypage;
		//执行一个laypage实例
		laypage.render({
			elem : 'demo1' //注意，这里的 test1 是 ID，不用加 # 号
			,count: ${pageInfo.pages * 10}//数据总数    这里要乘以10  比如你有两页数据  那么这里应该写20
			,curr:  ${pageInfo.pageNum} 
		    ,jump: function(obj,first){
		    	
		    	 //首次不执行
		        if(!first){
		          //do something
		        	window.location = '/blog/index/'+obj.curr;	
		        	
		        } 
		    }
		});
	});
		</script>
</body>
</html>