<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>提示信息${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>


<div class="h25"></div>
<div class="w993">
<!--wal-->

<%@ include file="/page/centerleft.jsp" %>


<div class="fr w791">
      <div class="memberTitle"><h1>
      <c:choose>
      	<c:when test="${map.righttitle ne null}">${map.righttitle}</c:when>
      	<c:otherwise>
      		 ${map.righttitle}
      	</c:otherwise>
      </c:choose>
     
      </h1></div>
      <div class="pageBox">
      <!--pageBox-->
      
      <c:choose>
      	<c:when test="${map.re eq -1}">
      		<div class="applyEnd">
             <div class="imgDiv"><img src="${ctx}/image/nimg55_1.gif"/></div>
             <div class="content">
          			<c:if test="${map.word ne null}">
          			${map.word}<br />
          			</c:if>
          		<c:if test="${map.word1 ne null}">
          			<span>${map.word1}</span><br />
          		</c:if>
          		<c:if test="${map.word2 ne null}">
          		备注信息：${map.word3}
          		</c:if>
             </div>
      		</div>
      	</c:when>
      	<c:when test="${map.re eq -2 or map.re eq 1}">
      		 <div class="apply">
            <div class="imgDiv"><img src="${ctx}/image/nimg55_3.gif"/></div>
            <div class="content">
               ${map.word}
            </div>
      </div>
      	</c:when>
      </c:choose>
     
      
      <!--pageBoxEnd-->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer lyLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>用户的留言内容<a href="javascript:;" class="close"></a></h5>
      <div class="content">
　　用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息。
      </div>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>
<c:if test="${sessionurl ne null}">
<script>
	window.location.href = "${sessionurl}";
</script>
</c:if>
<c:if test="${map.word eq '登录成功'}">
<script>
	window.location.href = "${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do";
</script>
</c:if>
</body>
</html>