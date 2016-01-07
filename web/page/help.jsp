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
<title>开练网${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/help.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style type="text/css">
body{background:#f6f5f3;}
</style>
</head>
<c:choose>
          			
          			<c:when test="${param.name eq 'baozhangfanwei'}">
          				<c:set value="消费者权益" var="da" />
          				<c:set value="保障范围" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'tuihuotuikuanliucheng'}">
          				<c:set value="消费者权益" var="da" />
          				<c:set value="退货退款流程" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'fuwuzhongxin'}">
          				<c:set value="消费者权益" var="da" />
          				<c:set value="服务中心" var="xiao" />
          			</c:when>
          			
          			
          			<c:when test="${param.name eq 'xinshouzhuanqu'}">
          				<c:set value="新手上路" var="da" />
          				<c:set value="新手专区" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'changjianwenti'}">
          				<c:set value="新手上路" var="da" />
          				<c:set value="常见问题" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'jiaoyianquan'}">
          				<c:set value="新手上路" var="da" />
          				<c:set value="交易安全" var="xiao" />
          			</c:when>


          			<c:when test="${param.name eq 'fukuanfangshi'}">
          				<c:set value="付款方式" var="da" />
          				<c:set value="付款方式" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'disanfangzijindanbao'}">
          				<c:set value="付款方式" var="da" />
          				<c:set value="第三方资金担保" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'fencizhifu'}">
          				<c:set value="付款方式" var="da" />
          				<c:set value="分次支付" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'fenshizhifu'}">
          				<c:set value="付款方式" var="da" />
          				<c:set value="分时支付" var="xiao" />
          			</c:when>
          			
          			
          			<c:when test="${param.name eq 'agree'}">
          				<c:set value="新手上路" var="da" />
          				<c:set value="注册协议" var="xiao" />
          			</c:when>
          			
          			
					<c:when test="${param.name eq 'guanyuwomen'}">
          				<c:set value="关于开练" var="da" />
          				<c:set value="关于我们" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'hezuohuoban'}">
          				<c:set value="关于开练" var="da" />
          				<c:set value="合作伙伴" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'lianxiwomen'}">
          				<c:set value="关于开练" var="da" />
          				<c:set value="联系我们" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'falvshengming'}">
          				<c:set value="关于开练" var="da" />
          				<c:set value="法律声明" var="xiao" />
          			</c:when>
          			<c:when test="${param.name eq 'rencaizhaopin'}">
          				<c:set value="关于开练" var="da" />
          				<c:set value="人才招聘" var="xiao" />
          			</c:when>

					
          			

          		</c:choose>
<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<!--顶部end-->

<div class="h15"></div>
<div class="wal">
<!--wal-->
<div class="fl w206">
     <div class="pageBox helpNav">
          <h1>${da}</h1>
          <c:choose>
          	<c:when test="${da eq '新手上路'}">
          		<ul>
            <li><a href="${ctx}/page/help.jsp?name=xinshouzhuanqu"<c:if test="${param.name eq 'xinshouzhuanqu'}"> class="aNow"</c:if>>新手专区</a></li>
            <li><a href="${ctx}/page/help.jsp?name=changjianwenti"<c:if test="${param.name eq 'changjianwenti'}"> class="aNow"</c:if>>常见问题</a></li>
            <li><a href="${ctx}/page/help.jsp?name=jiaoyianquan"<c:if test="${param.name eq 'jiaoyianquan'}"> class="aNow"</c:if>>交易安全</a></li>
            <li><a href="${ctx}/page/help.jsp?name=fuwuzhongxin"<c:if test="${param.name eq 'zaixianbangzhu'}"> class="aNow"</c:if>>在线帮助</a></li>
          </ul>
          	</c:when>
          	<c:when test="${da eq '消费者权益'}">
          		 <ul>
            <li><a href="${ctx}/page/help.jsp?name=baozhangfanwei"<c:if test="${param.name eq 'baozhangfanwei'}"> class="aNow"</c:if>>保障范围</a></li>
            <li><a href="${ctx}/page/help.jsp?name=tuihuotuikuanliucheng"<c:if test="${param.name eq 'tuikuanliucheng'}"> class="aNow"</c:if>>退款流程</a></li>
            <li><a href="${ctx}/page/help.jsp?name=fuwuzhongxin"<c:if test="${param.name eq 'fuwuzhongxin'}"> class="aNow"</c:if>>服务中心</a></li>
          </ul>

          	</c:when>
          	
          	
          		<c:when test="${da eq '付款方式'}">
          		 <ul>
            <li><a href="${ctx}/page/help.jsp?name=fukuanfangshi"<c:if test="${param.name eq 'fukuanfangshi'}"> class="aNow"</c:if>>付款方式</a></li>
             <li><a href="${ctx}/page/help.jsp?name=disanfangzijindanbao"<c:if test="${param.name eq 'disanfangzijindanbao'}"> class="aNow"</c:if>>资金担保</a></li>
            <li><a href="${ctx}/page/help.jsp?name=fencizhifu"<c:if test="${param.name eq 'fencizhifu'}"> class="aNow"</c:if>>分次支付</a></li>
            <li><a href="${ctx}/page/help.jsp?name=fenshizhifu"<c:if test="${param.name eq 'fenshizhifu'}"> class="aNow"</c:if>>分时支付</a></li>
          </ul>

          	</c:when>
          	
          	<c:when test="${da eq '关于开练'}">
          		 <ul>
            <li><a href="${ctx}/page/help.jsp?name=guanyuwomen"<c:if test="${param.name eq 'guanyuwomen'}"> class="aNow"</c:if>>关于我们</a></li>
           <li><a href="${ctx}/page/help.jsp?name=hezuohuoban"<c:if test="${param.name eq 'hezuohuoban'}"> class="aNow"</c:if>>合作伙伴</a></li>
           <li><a href="${ctx}/page/help.jsp?name=lianxiwomen"<c:if test="${param.name eq 'lianxiwomen'}"> class="aNow"</c:if>>联系我们</a></li>
           <li><a href="${ctx}/page/help.jsp?name=falvshengming"<c:if test="${param.name eq 'falvshengming'}"> class="aNow"</c:if>>法律声明</a></li>
           <li><a href="${ctx}/page/help.jsp?name=rencaizhaopin"<c:if test="${param.name eq 'rencaizhaopin'}"> class="aNow"</c:if>>人才招聘</a></li>
          </ul>

          	</c:when>
          </c:choose>
          
          
     </div>
     <div class="h10"></div>
      <%@ include file="/page/searchleft.jsp" %>

</div>
<div class="fr w776 pageBox">
     <div class="helpTitle">
          <h1>${xiao}</h1>
          <div class="pageNow"><em>当前位置：</em><a href="${ctx}/kailian/KlSellerProduct/siteindex.do">首页</a>
          	<a href="#">${da}</a>${xiao}
          		
          		
          
          </div>
     </div>
     
     
     <c:choose>
     
     <c:when test="${param.name eq 'agree'}">
          				<%@ include file="/page/help/agree.jsp" %>
          			</c:when>
          			<c:when test="${param.name eq 'changjianwenti'}">
          				<%@ include file="/page/help/changjianwenti.jsp" %>
          			</c:when>
					<c:when test="${param.name eq 'xinshouzhuanqu'}">
          				<%@ include file="/page/help/xinshouzhuanqu.jsp" %>
          			</c:when>
          			<c:when test="${param.name eq 'fuwuzhongxin'}">
          				<%@ include file="/page/help/fuwuzhongxin.jsp" %>
          			</c:when>
          			<c:when test="${param.name eq 'wangzhanyijian'}">
          				<%@ include file="/page/help/wangzhanyijian.jsp" %>
          			</c:when>
          			
          			<c:when test="${param.name eq 'lianxiwomen'}">
          				<%@ include file="/page/help/lianxiwomen.jsp" %>
          			</c:when>
          			<c:when test="${param.name eq 'rencaizhaopin'}">
          				<%@ include file="/page/help/rencaizhaopin.jsp" %>
          			</c:when>
					<c:when test="${param.name eq 'fukuanfangshi'}">
						<%@ include file="/page/help/fukuanfangshi.jsp" %>
					</c:when>
					<c:when test="${param.name eq 'guanyuwomen'}">
						<%@ include file="/page/help/guanyuwomen.jsp" %>
					</c:when>
					<c:when test="${param.name eq 'hezuohuoban'}">
						<%@ include file="/page/help/hezuohuoban.jsp" %>
					</c:when>
					<c:when test="${param.name eq 'falvshengming'}">
						<%@ include file="/page/help/falvshengming.jsp" %>
					</c:when>
					<c:when test="${param.name eq 'jiaoyianquan'}">
						<%@ include file="/page/help/jiaoyianquan.jsp" %>
					</c:when>
					<c:when test="${param.name eq 'baozhangfanwei'}">
						<%@ include file="/page/help/baozhangfanwei.jsp" %>
					</c:when>

					<c:when test="${param.name eq 'tuihuotuikuanliucheng'}">
						<%@ include file="/page/help/tuihuotuikuanliucheng.jsp" %>
					</c:when>

<c:when test="${param.name eq 'fencizhifu'}">
						<%@ include file="/page/help/fencizhifu.jsp" %>
					</c:when>

<c:when test="${param.name eq 'fenshizhifu'}">
						<%@ include file="/page/help/fenshizhifu.jsp" %>
					</c:when>

          		</c:choose>
     
     
     
     
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>