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
<title>订单详情${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
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
      <div class="memberTitle"><h1>订单管理</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="OrdersMsg">订单：<b class="red">${map.order.id}</b> 的详细内容:</div>
      <div class="Orders ordersShow">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="75">编号</th>
           <th width="120">课程名称</th>
           <th width="65">课程类型</th>
           <th width="48">教练/<br />机构</th>
           <th width="78">联系方式</th>
           <th width="41">课时</th>
           <th width="37">价格</th>
           <th width="66">购买日期</th>
           <th width="56">进度</th>
           <th width="40">完课<br />确认</th>
           <th width="37">总结</th>
           <th class="th_01">操作</th>
         </tr>
         <c:forEach var="v" items="${map.page.result}">
         <tr>
           <td>${v.id}</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>${my:transDate(v.createtimelong)}</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         </c:forEach>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>分时课程</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>2014-2-22</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
         </tr>
      </table>
      </div>
      <!--pageBoxEnd-->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="orderLayer orderLayer1">
<div class="bg">
     <h5>完课确认<a href="javascript:;" class="close"></a></h5>
     <div class="content">
     张三教练与2014-2-22日发来初级游泳的培训确认，<br />
您已经进行到"第三课时"了。
<br /><br />
如果没有异议请确认，若有异议请投诉！
     </div>
     <div class="btnDiv"><a href="">确 认</a></div>
     <div class="msg">如收到完课确认10天内未能评价，系统默认为中评并确认完课!</div>
</div>
</div>
<!---->
<div class="orderLayer orderLayer2">
<div class="bg">
     <h5>查看<a href="javascript:;" class="close"></a></h5>
     <dl>
       <dt><a href=""><img src="image/nimg60.png"/></a></dt>
       <dd>
         <div class="name"><b><a href="">张三教练</a></b>　　2014-1-24</div>
         <div class="content">
            今天训练结构不错，一定要坚持下去！！！！
         </div>
       </dd>
     </dl>
     <div class="list">
         <ul>
           <li><img src="image/nimg142_5.jpg"/></li>
           <li><img src="image/nimg142_6.jpg"/></li>
           <li><img src="image/nimg142_7.jpg"/></li>
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
              <img src="image/nimg117.jpg"/>
              <span><b class="red">10分</b> - 非常好，锻炼效果最佳，非常满意</span>
          </li>
          <li><em>专业程度：</em>
              <img src="image/nimg117_2.jpg"/>
              <span><b class="red">7分</b> - 教练专业程度较高，完全超出期望值</span>
          </li>
          <li><em>服务态度：</em>
              <img src="image/nimg45.jpg"/>
              <span><b class="red">4分</b> - 服务太多有点凶</span>
          </li>
          <li><em>预约成功率：</em>
              <img src="image/nimg117_3.jpg"/>
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
<!---->
<div class="orderLayer orderLayer4">
<div class="bg">
     <h5>投诉<a href="javascript:;" class="close"></a></h5>
     <div class="form">
         <em>投诉原因：</em>
         <textarea name="" cols="" rows=""></textarea>
     </div>
     <div class="btnDiv"><input type="button" class="btn1" value="提 交" /></div>
</div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>