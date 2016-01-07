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
	<body class="special special-2">
		<%@ include file="/page2/kailianheader.jsp" %>
		<div class="main" style="background: url(${ctx}/${map.topic.bgimg1}) repeat-y center 498px;">
			<div class="banner" style="cursor:pointer;" onclick="window.open('${map.topic.ext1}','_blank');">
				<img src="${ctx}/${map.topic.headimg}" />
			</div>
			<div class="container shops">
				<h1>新鲜周末 新鲜运动</h1>
				<h2><img src="${ctx}/${map.topic.bgimg2}" /></h2>
				<p>
					${my:replaceall(map.topic.description,'\\n','<br/>')}

				</p>
				<h3><img src="${ctx}/page2/images/title_04_1000x32.png" /></h3>
				<ul>
					<c:if test="${fn:length(map.list) ge 2}">
					<c:forEach var="v" items="${map.list[0].infoList}">
					
						<c:choose>
										<c:when test="${info.shopid ne null and info.shopid gt 0}">
											<li onclick="window.open('${ctx}/shop_${v.shopid}.html','_blank');" style="cursor:pointer;">
										</c:when>
										<c:otherwise>
											<li onclick="window.open('${v.ext2}','_blank');" style="cursor:pointer;">
										</c:otherwise>
									</c:choose>
						<dl>
							<dt>
								<img src="${ctx}/${v.productimg}" />
							</dt>
							<dd>
								<h4><img src="${ctx}/${v.ext1}" /></h4>
								<p>
									${my:replaceall(v.subname,'\\n','<br/>')}
								</p>
							</dd>
						</dl>
					</li>
					</c:forEach>
					</c:if>
					
				</ul>
			</div>
		</div>
		<div class="other">
			<div class="editor-words">
				<div class="book">
					<h5 class="scroll">&nbsp;</h5>
					<div class="paper">
						<h1><strong>编辑寄语</strong><i class="icon-pencil"></i></h1>
						<p>
							${my:replaceall(map.topic.suggestwords,'\\n','<br/>')}
						</p>
					</div>
					<div class="paper-bottom"></div>
				</div>
			</div>
			<div class="recommend-lessons">
				<h3>
					<img src="${ctx}/page2/images/title_01_1000x49.png" />
				</h3>
				<div class="container">
					<div id="owl-lessons" class="owl-carousel">
					
					
						<c:forEach var="v" items="${map.list[1].infoList}">
						<div class="lesson">
									<c:choose>
										<c:when test="${info.productid ne null and info.productid gt 0}">
											<a href="${ctx}/product_${v.productid}.html" target="_blank">
										</c:when>
										<c:otherwise>
											<a href="${v.ext3}" target="_blank">
										</c:otherwise>
									</c:choose>
								<div class="mask"></div>
								<img src="${ctx}/${v.productimg}" />
								<div class="lesson-detail">
									<div class="lesson-detail-wrap">
										<span class="price">¥${v.price}</span>
										<span class="unit">/${v.perClassMinutes}</span>
										<span class="name">
											[${v.shopname}]
										</span>
										<p class="description">
											${v.subname}
										</p>
									</div>
								</div>
							</a>
						</div>
						</c:forEach>
					
						
						
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
