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
<title>频道首页${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/page1.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script type="text/javascript" src="http://cbjs.baidu.com/js/m.js"></script>
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


<div class="h10"></div>
<div class="wal">
<!--wal-->
<div class="pageNow pageNow2"><a href="">首页</a><span>${my:showcont('KlSellerProduct','categoryid',param.cid,0)}</span></div>
<div class="fl w722">
      <div class="ChannelFlash fadeFlash">
             <ul>
            <c:forEach var="f" items="${map.focus}">	
            	<li><a href="${my:jvalue(f.content, 'lianjie')}" target="_blank"><img src="${ctx}/${my:jvalue(f.content, 'tupian')}" style="width:712px;height:216px;" /></a></li>

            </c:forEach>

             </ul>
             <div class="btnDiv">
             
             	<c:forEach var="f" items="${map.focus}" varStatus="vs">	
             		<span<c:if test="${vs.index eq 0}"> class="spanNow"</c:if>></span>
             	</c:forEach>
             </div>
      </div>
      <div class="h10"></div>
      <!---->
      <div class="pageBox ChannelPart1">
           <ul>
          
             <li>
                <h2><a href="${ctx}/kailian/KlSellerProduct/channel.do?cid=${param.cid}&tags=">${map.tags.addition}</a></h2>
                <div class="content">
                 <c:set value="${fn:split(map.tags.configvalue,',')}" var="tags2" />
                 <c:forEach var="t" items="${tags2}" varStatus="vs">	
                 	<a href="${ctx}/kailian/KlSellerProduct/channel.do?cid=${param.cid}&tags=${t}">${t}</a>
                 </c:forEach>
                 	<a href="${ctx}/kailian/KlSellerProduct/channel.do?cid=${param.cid}&tags=">全部</a>
                </div>
             </li>
           </ul>
      </div>
      <script type="text/javascript">
      $('.ChannelPart1').find('li:last').css('border','0px');
      </script>
      <div class="h10"></div>
      <!---->
      <div class="ChannelPart2">
            <ul>
              <li><a href="${ctx}/kailian/KlSellerProduct/channel.do?cid=${param.cid}&sortby=id desc">默认排序</a></li>
              <li><a href="${ctx}/kailian/KlSellerProduct/channel.do?cid=${param.cid}&sortby=buyedCount desc"><span>销量</span></a></li>
              <li><a href="${ctx}/kailian/KlSellerProduct/channel.do?cid=${param.cid}&sortby=savedCount desc"><span>人气</span></a></li>
              <li><a href="${ctx}/kailian/KlSellerProduct/channel.do?cid=${param.cid}&sortby=id desc"><span>评分</span></a></li>
              <li><a href="${ctx}/kailian/KlSellerProduct/channel.do?cid=${param.cid}&sortby=id desc"><span>最新</span></a></li>
              <li class="inputLi">
                  <em>价格</em>
                  <input id="moneyfrom" type="text" class="input1" value="" />
                  <div class="tips">-</div>
                  <input id="moneyto" type="text" class="input1 input2" value="" />
              </li>
              <li class="li_01">
                  
                       <select name="provinceid" id="provinceid" onchange="window.location.href='${ctx}/kailian/KlSellerProduct/channel.do?provinceid=' + $('#provinceid').val() + '&cid=${param.cid}&moneyfrom=' + $('#moneyfrom').val() + '&moneyto=' + $('#moneyto').val();">
                            <option value="">不限</option>
                            <option value="174">北京</option>
                            <option value="156">上海</option>
                            <option value="151">广州</option>
                       </select>
                  
              </li>
            </ul>
      </div>
      <div class="ChannelPart2Layer">
      <a href="#" onclick="$('#moneyfrom').val('');$('#moneyto').val('');">清空</a>
      <a href="#" onclick="window.location.href='${ctx}/kailian/KlSellerProduct/channel.do?provinceid=' + $('#provinceid').val() + '&cid=${param.cid}&moneyfrom=' + $('#moneyfrom').val() + '&moneyto=' + $('#moneyto').val();">确定</a>
      </div>
      <script type="text/javascript">
      $('.ChannelPart2').find('input').focus(function(){
		  $('.ChannelPart2Layer').css('left',$('.inputLi').offset().left+52);
		  $('.ChannelPart2Layer').css('top',$('.inputLi').offset().top+38);
		  $('.ChannelPart2Layer').show();
		  })
	  $('.ChannelPart2Layer').hover(
	      function(){
			  $('.ChannelPart2Layer').show();
			  },
		  function(){
			  $('.ChannelPart2Layer').hide();
			  }
	  ) 
      </script>
      <script type="text/javascript">
      var zindex = 100;
      $(function(){
		  $('.ChannelPart3').find('li').hover(
		     function(){
		     	//$(this).css("position":"absolute","z-index":"10");
				 $(this).find('.imgDiv').find('img').animate({top: -27}, 300);
				 $(this).find('.contentDiv').animate({top: 91,opacity:'show'}, 300);
				 $(this).find('.ico').show();
				 $(this).addClass('liNow');
				 },
			 function(){
			 	//$(this).css("position":"absolute","z-index":"1");
				 $(this).find('.imgDiv').find('img').animate({top: 0}, 300);
				 $(this).find('.contentDiv').animate({top: 61,opacity:'hide'}, 300);
				 $(this).find('.ico').hide();
				 $(this).removeClass('liNow');
				 }
		  )
		  })
      </script>
      <div class="ChannelPart3">
           <ul>
          <c:forEach var="p" items="${map.page.result}">
            <li style="border:1px soid red;">
                      <div class="imgDiv"><a target="blank" href="${ctx}/product_${p.id}.html">
                      <img src="${ctx}/${p.photo}"/></a></div>
                      <h2 style="height:13px;line-height:20px;overflow:hidden;"><a target="blank" href="${ctx}/product_${p.id}.html">${p.name}</a></h2>
                      <div class="content">归属店铺：${my:maxleng(p.ext5,8)}</div>
                      <div class="price"><b>￥${p.price}</b><img src="${ctx}/image/nimg13_3.png"/>${p.buyedCount}人已订</div>
                      <a target="blank" href="${ctx}/product_${p.id}.html" class="ico"><img src="${ctx}/image/limg30.png" /></a>
                      <div class="contentDiv">
                           <h3><a href="${ctx}/product_${p.id}.html">${my:maxleng(p.name,20)}</a></h3>
                           <div style="height:50px;overflow:block;">${my:maxleng(p.subname,30)}</div>
                      </div>
            </li>
            
          </c:forEach>
          
          

          </ul>
          <span class="clear_f"></span>
          <div class="h20"></div>
         ${my:drawpage(map.page, pageContext.request,  null)}
      </div>
</div>
<div class="fr w260">
      
     
     <!-- 
         <div class="ico"><img src="${ctx}/image/nimg260.png"/></div>
         <div class="step"><img src="${ctx}/image/nimg215.png"/></div>
         <div class="title"><a href="">今天最流行的健身课程</a></div>
         <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg184.jpg"/></a></div>
         <div class="name"><a href="">高冲低肌肉训练</a></div>
         <div class="btn"><a href="">穿越一下</a></div>
       -->
       <script type="text/javascript">BAIDU_CLB_fillSlot("952860");</script>
        


     
     <div class="h10"></div>
     <div class="pageBox sCoachList">
          <h1>精品推荐 ......</h1>
          <ul>

            <c:forEach var="v" items="${map.tops}">
            <li>
                <div class="imgDiv"><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.id}" taget="_blank"><img src="${ctx}/${v.photo}" style="width:196px;height:131px;"/></a></div>
                <h2><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.id}" target="_blank">${v.name}</a></h2>
                <div class="content">归属店铺：${my:maxleng(v.ext5,6)}</div>
                <div class="price">￥${v.price}</div>
            </li>
            </c:forEach>

           
          </ul>
     </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
$(document).ready(function(){
	 $("#provinceid").find("option[value='${param.provinceid}']").attr("selected",true);
	});
</script>
</body>
</html>