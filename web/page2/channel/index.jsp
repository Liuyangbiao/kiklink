<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>开练，0门槛开启新运动</title>
		<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
		<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
		<script>
			var host5 = "${ctx}/";
			var pagecount = ${map.pagecount};
			var pagenow = 0;
		</script>
<script src="${ctx}/page2/js/jquery-1.11.1.min.js"></script>
		<!-- Bootstrap -->
		<link href="${ctx}/page2/css/owl.carousel.css" rel="stylesheet" />
		<link href="${ctx}/page2/css/owl.theme.css" rel="stylesheet" />
		<link href="${ctx}/page2/css/jquery.bxslider.css" rel="stylesheet" />
		<link href="${ctx}/page2/css/style.css" rel="stylesheet" />
		
		<style>
			.hot-groups ul li img{
border-radius: 64px;
-webkit-border-radius: 64px;
-moz-border-radius: 64px;
}

.experience ul li img{
border-radius: 15px;
-webkit-border-radius: 15px;
-moz-border-radius: 15px;
}



		</style>

		<!-- 让IE6-8支持html5元素-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.min.js"></script>
		<![endif]-->
	</head>
	<body class="home">
		
		
		
		<%@ include file="/page2/kailianheader.jsp" %>
		
		
		<div class="main">
			<div class="container">
				<div class="banner-holder"></div>
				<div class="row">
					<div class="col-main hot-lessons">
						<div class="col-main-wrap">
							<h1><img src="${ctx}/page2/images/title_01_140x56.jpg" /></h1>
							<!-- 
							<div class="row">
								<div class="col-6 hot-lesson">
								
								<c:forEach var="p" items="${map.tops}" varStatus="vs">
								<c:if test="${vs.index lt 10 and vs.index % 2 eq 0}">
								<div class="hot-lesson-wrap">
										<a href="${ctx}/product_${p.id}.html" target="_blank">
											<img src="${ctx}/${p.photo}" style="width:489px;height:310px;" />
										</a>
										<h2>${my:maxleng(p.name,30)}</h2>
										<p>${my:maxleng(p.subname,40)}</p>
									</div>
								</c:if>
								</c:forEach>
									
								</div>
								<div class="col-6 hot-lesson">
								
								<c:forEach var="p" items="${map.tops}" varStatus="vs">
								<c:if test="${vs.index lt 10 and vs.index % 2 eq 1}">
								<div class="hot-lesson-wrap">
										<a href="${ctx}/product_${p.id}.html" target="_blank">
											<img src="${ctx}/${p.photo}" style="width:489px;height:310px;" />
										</a>
										<h2>${my:maxleng(p.name,20)}</h2>
										<p>${my:maxleng(p.subname,20)}</p>
									</div>
								</c:if>
								</c:forEach>
								 
								</div>
							</div>
							 -->
							<div class="page-more active">
								<a class="more" href="#">更多<i></i></a>
							</div>
						</div>
					</div>
					<div class="col-side">
						<div class="col-side-wrap">
							<div class="hot-groups-wrap">
								<div class="hot-groups">
									<h3>
										<img src="${ctx}/page2/images/title_01_195x70.jpg" />
									</h3>
									<ul>
										<c:forEach var="v" items="${map.topgroups}">
										<li>
											<a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}" target="_blank">
												<img src="${ctx}/${my:showHead(request,'group',v.id)}" style="width:128px;height:128px;"/>
											</a>
											<h4>${my:maxleng(v.name,6)}</h4>
											
										</li>
										</c:forEach>
								
									</ul>
								</div>
								<div class="create-group">
									<strong>创建你的兴趣小组</strong>
									<a href="${ctx}/kailian/CmsGroup/preNewGroup.do">+</a>
								</div>
							</div>
							
							<div class="recommend-tops">
								<h3>
									<img src="${ctx}/page2/images/title_02_195x70.jpg" />
								</h3>
								<ul>
									<c:forEach var="v" items="${map.toptopics}" varStatus="vs">
									<c:if test="${vs.index le 5}">
            							<li class="star first" style="cursor:pointer;" onclick="window.open('${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}','_blank');">${my:maxleng(v.title,20)}</li>
            						</c:if>
            						</c:forEach>

								</ul>
								<p>
									<a  href="${ctx}/kailian/CmsGroup/index.do"><br/>更多话题<br/><i></i></a>
								</p>
							</div>
							
							<div class="experience">
								<h3>
									<img src="${ctx}/page2/images/title_03_195x70.jpg" />
								</h3>
								<ul>
									<c:forEach var="f" items="${map.tiyans}">
									<li onclick="window.open('${ctx}/tiyan_${f.id}.html','_blank');" style="cursor:pointer;">
										<div class="avator">
											<a href="${ctx}/tiyan_${f.id}.html" target="_blank"><img style="width:30px;height:30px;" src="${ctx}/${my:jvalue(f.content, 'touxiang')}"/></a>
										</div>
										<div class="text-info">
											<h5>${f.title}</h5>
											<p>${my:jvalue(f.content, 'yonghuming')}</p>
											<p>${my:maxleng(my:jvalue(f.content, 'neirong'),20)}</p>
											<div class="date">${my:jvalue(f.content, 'riqi')}</div>
										</div>
									</li>
									</c:forEach>
									
								</ul>
								<div class="more">
									<a href="#"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/page2/kailiantail.jsp" %>
		
		<script src="${ctx}/page2/js/owl.carousel.min.js"></script>
		<script src="${ctx}/page2/js/jquery.bxslider.min.js"></script>
		<script src="${ctx}/page2/js/function.js"></script>
	</body>
</html>
