<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header id="masthead" class="site-header">
	<nav id="top-header">
		<div class="top-nav">
			<c:choose>
				<c:when test="${userInfo == null }">
					<div class="user-login">
						<a href="${pageContext.request.contextPath }/blog/toLogin">登录</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="user-login">
						欢迎您:  <a href="#">${userInfo.nickName}</a>
					</div>
				</c:otherwise>
			</c:choose>
			<div class="menu-topmenu-container">
				<ul id="menu-topmenu" class="top-menu">
					<li class="menu-item"><a href="/applyLink"> <i
							class="fa fa-link"></i> <span class="font-text">申请友链&nbsp;</span>&nbsp;
					</a></li>
					<li class="menu-item"></li>
					<li class="menu-item"><a href="/articleFile"> <i
							class="fa-list-alt fa"></i> <span class="font-text">文章归档&nbsp;</span>&nbsp;
					</a></li>
					<li class="menu-item"></li>
					<li class="menu-item"><a href="/aboutSite"> <i
							class="fa fa-info"></i> <span class="font-text">关于本站&nbsp;</span>&nbsp;
					</a></li>
					<li class="menu-item"><a
						href="${pageContext.request.contextPath }/document.html"
						target="_blank"> <i class="fa fa-info"></i> <span
							class="font-text">开发文档&nbsp;</span>&nbsp;
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- #top-header -->
	<div id="menu-box">
		<div id="top-menu">
			<span class="nav-search"> <i class="fa fa-search"></i>
			</span>
			<div class="logo-site">
				<h1 class="site-title">
					<a href="/" title="持之李恒">持之李恒</a>
				</h1>
				<p class="site-description">积跬步以至千里，积小流以成江河</p>
			</div>
			<!-- .logo-site -->
			<div id="site-nav-wrap">
				<div id="sidr-close">
					<a href="#sidr-close" class="toggle-sidr-close">×</a>
				</div>
				<nav id="site-nav" class="main-nav">
					<a href="#sidr-main" id="navigation-toggle" class="bars"> <i
						class="fa fa-bars"></i>
					</a>
					<div class="menu-pcmenu-container">
						<ul id="menu-pcmenu"
							class="down-menu nav-menu sf-js-enabled sf-arrows">

							<li><a href="${pageContext.request.contextPath }/blog/index/1">
									<i class="fa-home fa"></i> <span class="font-text">首页</span>
							</a></li>

							<c:forEach items="${bigTypeBlogList }" var="b">
								<li><a
									href="${pageContext.request.contextPath }/blog/getBlogInfoByBigType/${b.id }/1">
										<i class="fa fa-coffee"></i> <span class="font-text">${b.name }&nbsp;</span>
								</a>
									<ul class="sub-menu">
										<c:forEach items="${b.smallTypeBlogs }" var="s">
											<c:if test="${b.id == s.bid}">
												<li><a
													href="${pageContext.request.contextPath }/blog/getBlogInfoBySmallType/${s.id}/1"
													>${s.name }</a></li>
											</c:if>
										</c:forEach>

									</ul></li>
							</c:forEach>

							<li><a href="/message"> <i class="fa fa-comment"></i> <span
									class="font-text">留言板&nbsp;</span>
							</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="clear"></div>
		</div>
		<!-- #top-menu -->
	</div>
	<!-- #menu-box -->
</header>
<!-- #masthead -->
<div id="search-main">
	<div class="searchbar">
		<form method="get" id="searchform" action="/search">
			<span> <input type="text" value="" name="query" id="s"
				placeholder="输入搜索内容" required="">
				<button type="submit" id="searchsubmit">搜索</button>
			</span>
		</form>
	</div>
	<div class="clear"></div>
</div>