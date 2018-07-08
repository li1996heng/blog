<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<div id="page" class="site"	style="transform: none;">
		<%@ include file="public/head.jsp"%>
		<nav class="breadcrumb">
			<a class="crumbs" href="${pageContext.request.contextPath }/blog/index/1"> <i class="fa fa-home"></i>首页
			</a> <i class="fa fa-angle-right"></i> <a href="${pageContext.request.contextPath }/blog/getBlogInfoByBigType/${navBigTypeBlog.id }/1">${navBigTypeBlog.name }</a> <i
				class="fa fa-angle-right"></i> <a href="${pageContext.request.contextPath }/blog/getBlogInfoBySmallType/${oneBlogInfoById.smallTypeBlog.id }/1">
				${oneBlogInfoById.smallTypeBlog.name }</a> <i class="fa fa-angle-right"></i>
			正文
		</nav>
		<div id="content" class="site-content" style="transform: none;">
			<div id="primary" class="content-area">
				<main id="main" class="site-main" role="main">
				<article class="post">
					<header class="entry-header">
						<h1 class="entry-title">${oneBlogInfoById.title }</h1>
					</header>
					<!-- .entry-header -->
					<div class="entry-content">
						<div class="single-content">
							${oneBlogInfoById.content }
							<div>
								<br>
							</div>
						</div>
						<div class="s-weixin">
							<ul class="weimg1" style="margin-left: 135px">
								<li><strong>微信</strong></li>
								<li>赶快加我聊天吧</li>
								<li><img
									src="${pageContext.request.contextPath }/img/weixin/weixin3.png"></li>
							</ul>

							<div class="clear"></div>
						</div>
						<div class="clear"></div>
						<div id="social">
							<div class="social-main">
								<span class="like"> <a href="javascript:;"
									data-action="ding" data-id="1" title="点赞" class="favorite"
									onclick="increaseLikeCount()"> <i class="fa fa-thumbs-up"></i>赞
										<i class="count" id="count-10">5</i>
								</a>
								</span>
								<div class="shang-p">
									<div class="shang-empty">
										<span></span>
									</div>
									<span class="shang-s"> <a onclick="PaymentUtils.show();"
										style="cursor: pointer">赏</a>
									</span>
								</div>
								<div class="share-sd">
									<span class="share-s" style="margin-top: 25px !important;">
										<a href="javascript:void(0)" id="share-s" title="分享"> <i
											class="fa fa-share-alt"></i>分享
									</a>
									</span>
									<div id="share">
										<ul class="bdsharebuttonbox bdshare-button-style1-16"
											data-bd-bind="1503997585792">
											<li><a title="更多" class="bds_more fa fa-plus-square"
												data-cmd="more" onclick="return false;" href="#"></a></li>
											<li><a title="分享到QQ空间" class="fa fa-qq" data-cmd="qzone"
												onclick="return false;" href="#"></a></li>
											<li><a title="分享到新浪微博" class="fa fa-weibo"
												data-cmd="tsina" onclick="return false;" href="#"></a></li>
											<li><a title="分享到腾讯微博" class="fa fa-pinterest-square"
												data-cmd="tqq" onclick="return false;" href="#"></a></li>
											<li><a title="分享到人人网" class="fa fa-renren"
												data-cmd="renren" onclick="return false;" href="#"></a></li>
											<li><a title="分享到微信" class="fa fa-weixin"
												data-cmd="weixin" onclick="return false;" href="#"></a></li>
										</ul>
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>

						<footer class="single-footer">
							<ul class="single-meta">
								<li class="comment"><a href="/article/10#comments"
									rel="external nofollow"> <i class="fa fa-comment-o"></i> <i
										class="comment-count">1</i>
								</a></li>
								<li class="views"><i class="fa fa-eye"></i> <span
									class="articleViewCount">25</span> views</li>
								<li class="r-hide"><a href="javascript:pr()" title="侧边栏">
										<i class="fa fa-caret-left"></i> <i class="fa fa-caret-right"></i>
								</a></li>
							</ul>
							<ul id="fontsize">
								<li>A+</li>
							</ul>
							<div class="single-cat-tag">
								<div class="single-cat">
									所属分类： <a href="/category/1"> Java</a> <a href="/category/2">
										Java基础</a>
								</div>
							</div>
						</footer>
						<!-- .entry-footer -->


						<div class="clear"></div>
					</div>
					<!-- .entry-content -->
				</article>
				<!-- #post -->

				<div class="single-tag">
					<ul class="" data-wow-delay="0.3s">
						<li><a href="/tag/1" rel="tag" style="background: #666666">
								${oneBlogInfoById.tag }</a></li>
					</ul>
				</div>
				<div class="authorbio wow fadeInUp">
					<img alt="言曌" src="/uploads/2017/10/20171006225356181.jpg"
						class="avatar avatar-64 photo" height="64" width="64">
					<ul class="postinfo">
						<li></li>
						<li><strong>版权声明：</strong>本站原创文章，于2017-10-07，由 <strong>
								言曌</strong> 发表。</li>
						<li class="reprinted"><strong>转载请注明：</strong> <a
							href="/article/10" rel="bookmark" title="本文固定链接 /article/10">
								Integer与int的种种比较你知道多少？ | 风吟博客</a></li>
					</ul>
					<div class="clear"></div>
				</div>
				<div id="single-widget">
					<div class="wow fadeInUp" data-wow-delay="0.3s">
						<aside id="related_post-2" class="widget">
							<h3 class="widget-title">
								<span class="s-icon"></span>相关文章
							</h3>
							<div id="related_post_widget">
								<ul>
									<li><a href="/article/17">java中ImageIcon路径问题</a></li>
									<li><a href="/article/16">Java中File类的使用</a></li>
									<li><a href="/article/15">JSP 中 forward 转发 和
											sendRedirect 重定向的区别</a></li>
									<li><a href="/article/14">execute、executeUpdate、executeQuery三者的区别</a>
									</li>
									<li><a href="/article/12">Java中静态代码块、构造代码块的区别</a></li>
								</ul>
							</div>
							<div class="clear"></div>
						</aside>
						<aside id="hot_post-8" class="widget hot_post">
							<h3 class="widget-title">
								<span class="s-icon"></span>猜你喜欢
							</h3>
							<div id="hot_post_widget">
								<ul>
									<li><a href="/article/17"> java中ImageIcon路径问题</a></li>
									<li><a href="/article/16"> Java中File类的使用</a></li>
									<li><a href="/article/8"> Mybatis高级映射多对多查询</a></li>
									<li><a href="/article/15"> JSP 中 forward 转发 和
											sendRedirect 重定向的区别</a></li>
									<li><a href="/article/13"> sql语句分为三类(DML,DDL,DCL)-介绍</a></li>
								</ul>
							</div>
							<div class="clear"></div>
						</aside>
					</div>
					<div class="clear"></div>
				</div>
				<nav class="nav-single">
					<a href="/article/1" rel="next"> <span class="meta-nav">
							<span class="post-nav">上一篇 <i class="fa fa-angle-left"></i>
						</span> <br>[转载]SpringMVC中使用Interceptor拦截器
					</span>
					</a> <a href="/article/11" rel="next"> <span class="meta-nav">
							<span class="post-nav">下一篇 <i class="fa fa-angle-right"></i>
						</span> <br>Java如何让程序一直运行，不停止
					</span>
					</a>
					<div class="clear"></div>
				</nav>
				<div class="scroll-comments"></div>
				<div id="comments" class="comments-area">
					<div id="respond" class="comment-respond">
						<h3 id="reply-title" class="comment-reply-title">
							<span id="reply-title-word">发表评论</span> <a rel="nofollow"
								id="cancel-comment-reply-link" href="/article/10#respond"
								style="">取消回复</a>
						</h3>
						<form id="comment_form" method="post">
							<p class="comment-form-comment">
								<textarea id="comment" name="commentContent" rows="4"
									tabindex="1" required></textarea>
							</p>
							<div id="comment-author-info">
								<input type="hidden" name="commentPid" value="0"> <input
									type="hidden" name="commentPname" value=""> <input
									type="hidden" name="commentRole" value="0">
								<p class="comment-form-author">
									<label for="author_name"> 昵称<span class="required">*</span>
									</label> <input type="text" name="commentAuthorName" id="author_name"
										class="" value="" tabindex="2" required>
								</p>
								<p class="comment-form-email">
									<label for="author_email"> 邮箱<span class="required">*</span>
									</label> <input type="email" name="commentAuthorEmail"
										id="author_email" class="" value="" tabindex="3" required>
								</p>
								<p class="comment-form-url">
									<label for="author_url">网址</label> <input type="url"
										name="commentAuthorUrl" id="author_url" class="" value=""
										tabindex="4">
								</p>
							</div>
							<div class="clear"></div>
							<p class="form-submit">
								<input id="submit" name="submit" type="submit" tabindex="5"
									value="提交评论"> <input type="hidden"
									name="commentArticleId" value="10" id="article_id"> <input
									type="hidden" name="commentPid" id="comment_pid" value="0">
							</p>
						</form>
					</div>

					<ol class="comment-list">
						<li class="comments-anchor">
							<ul id="anchor-comment-10"></ul>
						</li>
						<li class="comment">
							<div id="div-comment-10" class="comment-body">
								<div class="comment-author vcard">
									<img class="avatar"
										src="http://cn.gravatar.com/avatar/01459f970ce17cd9e1e783160ecc951c?s=128&d=identicon&r=PG"
										alt="avatar" style="display: block;"> <strong>言曌</strong>
									<i class="fa fa-black-tie" style="color: #c40000;"></i> <span
										class=""
										style="margin-top: 2px !important; color: #c40000; font-size: 13px;"><b>博主</b></span>
									<span class="comment-meta commentmetadata"> <span
										class="ua-info" style="display: inline;"> <br> <span
											class="comment-aux"> <span class="reply"> <a
													rel="nofollow" class="comment-reply-link" href="#respond"
													onclick="replyComment()">回复 </a>
											</span> 2017年10月07日 16:12:15&nbsp; <span class="floor">
													&nbsp;1楼 </span>
										</span>
									</span>
									</span>
									<p>博主测试</p>
								</div>
							</div>
							<ul class="children">
							</ul>
						</li>
					</ol>
				</div>
				</main>
				<!-- .site-main -->
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