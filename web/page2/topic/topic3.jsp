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
		<title>${map.topic.topicname} | 开练</title>
		<script src="${ctx}/page2/js/jquery-1.11.1.min.js"></script>
		<!-- Bootstrap -->
		<link href="${ctx}/page2/css/owl.carousel.css" rel="stylesheet" />
		<link href="${ctx}/page2/css/owl.theme.css" rel="stylesheet" />
		<link href="${ctx}/page2/css/style.css" rel="stylesheet" />

		<!-- 让IE6-8支持html5元素-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.min.js"></script>
		<![endif]-->
	</head>
	<body class="special special-3">
		<%@ include file="/page2/kailianheader.jsp" %>
		<div class="main">
			<div class="banner">
				<img src="${ctx}/${map.topic.headimg}" />
			</div>
			<div class="container shops">
				<h1>活力运动  甜蜜周末</h1>
				<h2><img src="${ctx}/${map.topic.bgimg2}" /></h2>
				<p>${my:replaceall(map.topic.description,'\\n','<br/>')}</p>
				<h3><img src="${ctx}/${map.topic.bgimg1}" /></h3>
				<ul>
				
					<c:if test="${fn:length(map.list) ge 2}">
						<c:forEach var="v" items="${map.list[0].infoList}">
								<li>
								<dl>
									<dt>
										<img src="${ctx}/${v.productimg}" />
									</dt>
									<dd>
										<h4>${v.productname}</h4>
										<p>${my:replaceall(v.subname,'\\n','<br/>')}</p>
										<c:choose>
											<c:when test="${v.shopid ne null and v.shopid gt 0}">
												<a onclick="window.open('${ctx}/shop_${v.shopid}.html','_blank');" class="btn">试 炼</a>
											</c:when>
											<c:otherwise>
												<a onclick="window.open('${v.ext2}','_blank');" class="btn">试 炼</a>
											</c:otherwise>
										</c:choose>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</c:if>
				</ul>
			</div>
		</div>
		
		<%@ include file="/page2/kailiantail.jsp" %>
		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.bxslider.min.js"></script>
		<script src="js/function.js"></script>
	</body>
</html>