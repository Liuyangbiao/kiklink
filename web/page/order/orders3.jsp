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
<title>订单列表${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member.css" rel="stylesheet" type="text/css" />
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


<div class="h25"></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle"><h1>课程确认</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="79">编号</th>
           <th width="126">课程名称</th>
           <th width="72">课程类型</th>
           <th width="72">教练/机构</th>
           <th width="76">联系方式</th>
           <th width="43">课时</th>
           <th width="51">价格</th>
           <th width="56">进度</th>
           <th width="64">培训确认</th>
           <th width="43">总结</th>
           <th class="th_01">操作</th>
         </tr>
         
       <c:forEach var="v" items="${map.page.result}">
         
         <tr>
           <td>${v.id}</td>
           <td>
				<c:choose>
						<c:when test="v.classType eq 1">
							器械健身
						</c:when>
						<c:otherwise>
							其他
						</c:otherwise>
					</c:choose>
			</td>
           <td>单次卡</td>
           <td>${v.ext1}</td>
           <td>13812345678</td>
           <td>10</td>
           <td>${v.price}</td>
           <td>第${v.progress}课时</td>
           <td><a href="javascript:;" onclick="queren(${v.id},'${v.shopName}','${v.productName}', '${v.progress}');" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A" onclick="getsummary(${v.id});">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a></td>
         </tr>
       </c:forEach>
       
<!-- 
         <tr>
           <td>10202023</td>
           <td>器械健身的分时课程</td>
           <td>单次卡</td>
           <td>张三</td>
           <td>13812345678</td>
           <td>10</td>
           <td>2000</td>
           <td>第三课时</td>
           <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
           <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
           <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a></td>
         </tr>
          -->
      </table>
      </div>
      <!--pageBoxEnd-->
       ${my:drawpage(map.page, pageContext.request,  null)}
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
     <span id='shopname'>张三教练</span>发来<span id='classname'>初级游泳</span>的培训确认，<br />
您已经进行到"第<span id='keshi'>三</span>课时"了。
<br /><br />
如果没有异议请确认，若有异议请投诉！
     </div>
     <div class="btnDiv"><a id="querenurl" href="">确 认</a></div>
     <div class="msg">如收到完课确认10天内未能评价，系统默认为中评并确认完课!</div>
</div>
</div>
<script>
	function queren(opid, shopname, classname, keshi) {
		$('#querenurl').attr('href', '${ctx}/kailian/KlShoppingCoachtime/waitconfirm.do?opid=' + opid);
		$('#shopname').html(shopname);
		$('#classname').html(classname);
		$('#keshi').html(keshi);		
	}
</script>
<!---->
<%@ include file="/page/summary.jsp" %>
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

<div class="orderLayer ComplaintLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>处理意见<a href="javascript:;" class="close"></a></h5>
      <div class="content">
       经确认，您反应的问题属实，我们已经对教练进行警告处理，再有此类事情发生，可全额退款！请放心！
      </div>
</div>
<div class="bgB"></div>
</div>

<div class="orderLayer ComplaintLayer2">
<div class="bgT"></div>
<div class="bg">
      <h5>处理意见<a href="javascript:;" class="close"></a></h5>
      <div class="list">
          <ul>
            <li>
               <em>投诉教练：</em>
               <input type="text" class="input1" />
               <a href="" class="btn"><img src="${ctx}/image/lico2.png" /></a>
            </li>
            <li class="li_01">
               <em>投诉事因：</em>
               <textarea name="" cols="" rows=""></textarea>
            </li>
            <li><input type="button" class="btn1" value="发布投诉" /></li>
          </ul>
      </div>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>