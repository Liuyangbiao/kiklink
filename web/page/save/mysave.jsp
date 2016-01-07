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
<title>我的收藏${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member2.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
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


<div class="w993 pageNow"><em>当前位置：</em><a href="">首页</a><span>我的收藏</span></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>


<div class="fr w791">
      <div class="memberTitle">
          <div class="tab" style="left:17px;">
          <ul>
            <li class="liNow">店铺收藏</li>
            
            <li>课程收藏</li>
            <!-- 
            <li>教程收藏</li>
            -->
          </ul>
          </div>
      </div>
      <div class="pageBox tabContentDiv">
          <div class="tabContent collection">
                <ul>
                <c:forEach var="v" items="${map.page0.result}">
                 
                  <li>
                    <div class="imgDiv"><a href="${ctx}/kailian/KlSellerShop/shopindex.do?id=${v.targetId}" target="_blank"><img src="${ctx}/${v.targetPhoto}" style="width:134px;height:90px;" alt="" /></a></div>
                    <h1><a href="${ctx}/kailian/KlSellerShop/shopindex.do?id=${v.targetId}" target="_blank">${v.targetName}</a></h1>
                    <div class="time">${my:transDate(v.createtimelong)}</div>
                  </li>
                 </c:forEach>
                  
                 
                </ul>
                <span class="clear_f"></span>
                ${my:drawpage(map.page0, pageContext.request,  null)}
          </div>
          <div class="tabContent collection">
               <ul>
                <c:forEach var="v" items="${map.page1.result}">
                 
                  <li>
                    <div class="imgDiv"><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.targetId}" target="_blank"><img src="${ctx}/${v.targetPhoto}" style="width:134px;height:90px;" alt="" /></a></div>
                    <h1><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.targetId}" target="_blank">${v.targetName}</a></h1>
                    <div class="time">${my:transDate(v.createtimelong)}</div>
                  </li>
                 </c:forEach>
                  
                 
                </ul>
                <span class="clear_f"></span>
                ${my:drawpage(map.page1, pageContext.request,  null)}
          </div>
          <div class="tabContent collection2">
                <ul>
                   <c:forEach var="v" items="${map.page2.result}">
                   <li><a href="">${v.targetName}</a><span>[${my:transDate(v.createtimelong)}]</span></li>
                </c:forEach>
                   <li><a href="">你就是超级英雄</a><span>[2014-03-25]</span></li>
                </ul>
                <div class="pageNum">每页有40条记录　第1页　共1页　<a href="">首页</a> | <a href="">末页</a>　转到<input type="text" />页</div>
          </div>
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="orderLayer trainLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>写记录<a href="javascript:;" class="close"></a></h5>
      <div class="form">
          <textarea name="" cols="" rows=""></textarea>
          <div class="inputDiv">
              <span>添加图片：</span>
              <input type="text" class="input1" />
              <input type="button" class="btn2" value="浏览..." />
              <input type="button" class="btn2" value="上传" />
          </div>
      </div>
      <div class="btnDiv"><input type="button" value="发 布" /></div>
</div>
<div class="bgB"></div>
</div>

<div class="orderLayer orderLayer1">
<div class="bg">
     <h5>培训确认<a href="javascript:;" class="close"></a></h5>
     <div class="content">
张三教练与2014-2-22日发来初级游泳的培训确认，您已经进行到"第三课时"了。
如果没有异议请确认，若有异议请投诉
     </div>
     <div class="btnDiv"><a href="">确 认</a></div>
</div>
</div>
<!---->
<div class="orderLayer orderLayer2">
<div class="bg">
     <h5>查看<a href="javascript:;" class="close"></a></h5>
     <dl>
       <dt><a href=""><img src="${ctx}/image/nimg60.png"/></a></dt>
       <dd>
         <div class="name"><b><a href="">张三教练</a></b>　　2014-1-24</div>
         <div class="content">
            今天训练结构不错，一定要坚持下去！！！！
         </div>
       </dd>
     </dl>
     <div class="list">
         <ul>
           <li><img src="${ctx}/image/nimg142_5.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_6.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_7.jpg"/></li>
         </ul>
     </div>
     <div class="btnDiv"><a href="">点击查看更多</a></div>
</div>
</div>
<!---->
<div class="orderLayer orderLayer3">
<div class="bg">
     <h5>评分<a href="javascript:;" class="close"></a></h5>
     <div class="list">
        <ul>
          <li>
              <em>服务与描述相符度:</em>
              <img src="${ctx}/image/nimg117.jpg"/>
              <span><b class="red">10分</b> - 非常好，锻炼效果最佳，非常满意</span>
          </li>
          <li><em>专业程度：</em>
              <img src="${ctx}/image/nimg117_2.jpg"/>
              <span><b class="red">7分</b> - 教练专业程度较高，完全超出期望值</span>
          </li>
          <li><em>服务态度：</em>
              <img src="${ctx}/image/nimg45.jpg"/>
              <span><b class="red">4分</b> - 服务太多有点凶</span>
          </li>
          <li><em>预约成功率：</em>
              <img src="${ctx}/image/nimg117_3.jpg"/>
              <span><b class="red">7分</b> - 预约成功率较高</span>
          </li>
          <li>
              <em>服务态度：</em>
              <input name="" type="radio" class="radio" />好评　
              <input name="" type="radio" class="radio" />中评　
              <input name="" type="radio" class="radio" />差评
          </li>
          <li class="li_01"><em>服务评价：</em>
              <textarea name="" cols="" rows=""></textarea>
          </li>
          <li>
             <input type="button" class="btn1" value="提 交" />
             <input type="button" class="btn1 btn2" value="删除评论" />
          </li>
        </ul>
     </div>
</div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>