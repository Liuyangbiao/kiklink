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
<title>开练网</title>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/page1.css" rel="stylesheet" type="text/css" />
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

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<!--顶部end-->

<div class="h25"></div>
<div class="wal">
<!--wal-->
<div class="fl w735">
      <div class="ArticleFlash fadeFlash">
            <ul>
            	<c:forEach var="v" items="${map.focus}">
            	<li>
					${v.id}
				</li>
            	</c:forEach>
              <li><a href=""><img src="${ctx}/image/nimg733_1.jpg"/></a></li>

            </ul>
            <div class="btnDiv"><span class="spanNow"></span><span></span><span></span><span></span><span></span><span></span></div>
      </div>
      <div class="h20"></div>
      <!---->
      <div class="pageBox ArticlePart1">
           <div class="fl listImg">
                 <ul>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg241_1.jpg"/></a></div>
                      <div class="name"><a href="">（文章标题）本栏目相关文章的标题</a></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg241_2.jpg"/></a></div>
                      <div class="name"><a href="">（文章标题）本栏目相关文章的标题</a></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg241_3.jpg"/></a></div>
                      <div class="name"><a href="">（文章标题）本栏目相关文章的标题</a></div>
                   </li>
                 </ul>
              </div>
              <!---->
              <div class="fr listDiv">
                 <ul>
                 <forEach var="v" items="${map.page.result}">
                   <li><a href="${ctx}/kailian/CmsAritcle/kan.do?id=${v.id}">${v.titile}</a><span>${my:transDate(v.createtimelong)}</span></li>
                 </forEach>
                   <li><a href="ArticleShow.html">（文章标题）本栏目相关文章的标题</a><span>2014-12-12</span></li>

                 </ul>
              </div>
              <div class="clear_f"></div>
      </div>
</div>
<div class="fr w242">
     <div class="pageBox active_01" style="min-height:278px; _height:278px;">
           <h1 class="activeTitle1">热门标签……</h1>
           <div class="list">
                <ul>
                  <li class="li_01"><a href=""><b>高尔夫球</b></a></li>
                  <li class="li_02"><a href="">羽毛球</a></li>
                  <li class="li_03"><a href="">攀岩</a></li>
                  <li class="li_04"><a href="">瑜珈</a></li>
                  <li class="li_05"><a href="">高尔夫球</a></li>
                  <li class="li_06"><a href="">羽毛球</a></li>
                  <li class="li_02"><a href="">羽毛球</a></li>
                  <li class="li_03"><a href="">攀岩</a></li>
                  <li class="li_01"><a href="">瑜珈</a></li>
                  <li class="li_01"><a href=""><b>高尔夫球</b></a></li>
                  <li class="li_02"><a href="">羽毛球</a></li>
                  <li class="li_03"><a href="">攀岩</a></li>
                  <li class="li_04"><a href="">瑜珈</a></li>
                  <li class="li_05"><a href="">高尔夫球</a></li>
                  <li class="li_06"><a href="">羽毛球</a></li>
                  <li class="li_02"><a href="">羽毛球</a></li>
                  <li class="li_03"><a href="">攀岩</a></li>
                  <li class="li_01"><a href="">瑜珈</a></li>
                </ul>
                <span class="clear_f"></span>
                <div class="h15"></div>
           </div>
     </div>
     <div class="h20"></div>
     <!---->
     <div class="pageBox active_02">
           <h1 class="activeTitle1">推荐阅读 ......</h1>
           <div class="list">
                <ul>
                  <li>
                     <div class="num">1</div>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                  <li>
                     <div class="num">2</div>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                  <li>
                     <div class="num">3</div>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                  <li>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                  <li>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                  <li>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                  <li>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                </ul>
           </div>
     </div>
     <!---->
     <div class="active_03">
         <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg242_2.jpg"/></a></div>
         <div class="title"><a href="">（文章标题）本栏目相关文章的标题</a></div>
     </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>