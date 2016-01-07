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
	<body class="special special-1">
		<%@ include file="/page2/kailianheader1.jsp" %>
		
		
		
		
		<div class="main">
			<div class="bg-banner"></div>
			<div class="bg bg-01"></div>
			<div class="bg bg-04" style="background-image: url(${ctx}/${map.topic.bgimg1})"></div>
			<div class="banner-wrap">
				<div class="container">
					<div class="banner-holder">
					</div>
				</div>
			</div>
			
			
			
			<c:forEach var="g" items="${map.list}" varStatus="vs">
			<c:if test="${vs.index +1 lt fn:length(map.list)}">
			<div class="products-wrap" style="background-image: url(${ctx}/${g.bgimgleft});border:0px solid blue;padding-top:0px;margin-top:0px;">
				
				<div class="container" style="border:0px solid red;padding-top:0px;margin-top:0px;">
					<h3><img src="${ctx}/${g.bgimg1}" style="" /></h3>
					<c:forEach var="info" items="${g.infoList}" varStatus="vs1">
					<c:choose>
						<c:when test="${vs1.index % 3 eq 0}">
						<div class="row">
						<div class="col col-offset">
						</c:when>
						<c:otherwise>
						<div class="col">
						</c:otherwise>
					</c:choose>

							<div class="product">
								<div class="sale-tag">
									<i class="icon-sale-tag icon-sale-tag-01"></i>
								</div>
								<div class="pic">
									<img src="${ctx}/${info.productimg}" style="width:320px;height:260px;">
								</div>
								<div class="info">
									<p>
										<span class="name">${info.productname}</span>
										<strong class="price">¥${info.price}</strong>
										<small class="unit">/${info.perClassMinutes}</small>
									</p>
									<p>
										<b class="name-extr">［${info.shopname}］</b>
										<small class="description">${info.subname}</small>
									</p>
									<c:choose>
										<c:when test="${info.productid ne null and info.productid gt 0}">
											<a class="btn btn-buy" href="${ctx}/product_${info.productid}.html" target="_blank">立即购买</a>
										</c:when>
										<c:otherwise>
											<a class="btn btn-buy" href="${info.ext3}" target="_blank">立即购买</a>
										</c:otherwise>
									</c:choose>
									
								</div>
							</div>
					<c:choose>
						<c:when test="${vs1.index % 3 eq 2 or vs1.index +1 eq fn:length(g.infoList)}">
							</div>
							</div>
						</c:when>
						<c:otherwise>
							</div>
						</c:otherwise>
					</c:choose>
					</c:forEach>
					
				</div>
			</div>
			</c:if>
			</c:forEach> 
			
			
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
							<a href="${ctx}/product_${v.productid}.html" target="_blank">
								<div class="mask"></div>
								<img src="${ctx}/${v.productimg}" style="width:205px;height:205px;" />
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
