<%@ page contentType="text/html;charset=UTF-8" %>
<%
	Utils.checkParamerts(request,"sessionshop");

	CmsUserInfo userxx = (CmsUserInfo) request.getSession()
				.getAttribute("user");
	 request.setAttribute("userxx", userxx);
	 
	 KlSellerShop shopxx = (KlSellerShop) request.getSession()
				.getAttribute("sessionshop");
	request.setAttribute("shopxx", shopxx);
%>
<div class="fl sideNav">
    <h2><img src="${ctx}/image/nimg16_4.png"/>我的账户</h2>
    <ul>
       <li><a href="${ctx}/kailian/CmsUserInfo/preprofile.do">基本信息</a></li>
       <li><a href="${ctx}/kailian/CmsUserInfo/premodpwd.do">修改密码</a></li>
       <li><a href="${ctx}/kailian/CmsCommonMessage/messages.do">站内短信${my:getCountTag(userxx.id,'user','message')}</a></li>
       <li><a href="${ctx}/kailian/CmsCommonSaved/mysave.do">我的收藏</a></li>
       
       <!-- 
       <li><a href="#">我的活动</a></li>
        -->
       <li><a href="${ctx}/kailian/CmsCommonPoints/points.do">积分管理</a></li>
       <li><a href="${ctx}/page/point/howto.jsp">如何获取积分</a></li>
      
    </ul>
    <c:if test="${shopxx ne null || param.center ne null }">
    <span class="clear_f"></span>
     <h2><img src="${ctx}/image/nimg16_8.png"/>商家管理</h2>
    <ul>
    <c:choose>
    	<c:when test="${shopxx eq null}">
    		<li><a href="${ctx}/kailian/KlSellerShop/preopenshop.do?center=center" >我要开店</a></li>
    	</c:when>
    	<c:when test="${shopxx ne null and shopxx.status le 0}">
    		<li><a href="${ctx}/kailian/KlSellerShop/openShop.do" >修改审核资料</a></li>
    	</c:when>
    	<c:otherwise>
    		
       <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/shopuserindex.do">商家首页</a></li>
       
       <li>
           <div class="name"><a href="javascript:;" onclick="if (donotknow == 1) {donotknow= 0;$('.list').hide();} else {donotknow=1;$('.list').show();}">店铺管理
           <c:if test="${shopxx ne null and shopxx.ext8 ne null and shopxx.ext8 ne ''}"><b>认证</b></c:if>
           </a></div>
           <div class="list">
           <ul>
             <li><a href="${ctx}/kailian/KlSellerShop/home.do" p="dpgl">概览</a></li>
             <li><a href="${ctx}/kailian/KlSellerShop/focus.do" p="dpgl">焦点图管理</a></li>
             <li><a href="${ctx}/kailian/KlSellerShop/basic.do" p="dpgl">基本信息</a></li>
             <li><a href="${ctx}/kailian/KlSellerShop/photos.do" p="dpgl">环境图</a></li>
             <li><a href="${ctx}/kailian/KlSellerProduct/classes.do" p="dpgl">课程信息管理</a></li>
             <li><a href="${ctx}/kailian/KlSellerShop/coaches.do" p="dpgl">教练资源内容管理</a></li>
             <!-- 
             <li><a href="${ctx}/kailian/KlSellerShop/basic.do">地理位置内容管理</a></li>
              -->
             
           </ul>
           <span class="clear_f"></span>
           </div>
       </li>
       <li><a href="${ctx}/kailian/KlSellerProduct/preclass.do">课程发布</a></li>
       <li><a href="${ctx}/kailian/KlSellerProduct/classes.do">课程管理</a></li>
       <!-- 
       <li><a href="${ctx}/kailian/CmsArticle/myArticles.do">教程管理</a></li>
        -->
       <li><a href="${ctx}/kailian/KlShoppingPiliangtime/piliangs.do">批量设置时间</a></li>
       <li><a href="${ctx}/kailian/KlShoppingCoachtime/shoptimes.do">预约管理</a></li>
       <!-- 
       <li><a href="${ctx}/kailian/KlShoppingCoachtime/signgot.do">发起签到</a></li>
        -->
       <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/orders.do">订单管理</a></li>
       <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/presummary.do">训练总结</a></li>
       <!-- 
       <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/moneys.do">资金管理</a></li>
        -->
       <li><a href="${ctx}/kailian/KlShoppingComplaints/mycomps.do">我的投诉</a></li>
       <li><a href="${ctx}/kailian/KlShoppingComplaints/preshopcomplain.do">投诉举报</a></li>
       <li><a href="${ctx}/kailian/KlShoppingComplaints/comresults.do">违规记录</a></li>
       <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/yuyuema.do">预约码查询</a></li>
       <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/nannvshen.do">男神女神</a></li>
    	</c:otherwise>
    </c:choose>
     
    
   
    </ul>
    </c:if>
    
    <c:if test="${shopxx eq null && param.center eq null or 1 eq 1}">
    <span class="clear_f"></span>
    <h2><img src="${ctx}/image/nimg16_5.png"/>我的课程</h2>
    <ul>
    	<li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do">主页首页</a></li>
       <li><a href="${ctx}/kailian/KlShoppingOrder/userorders.do">我的订单</a></li>
       <li><a href="${ctx}/kailian/KlShoppingCard/myCards.do">我的开练卡</a></li>
       <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/myclass.do">我的课程</a></li>
       <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/mycoachtime.do">课程预约</a></li>
       <!--
       <li><a href="${ctx}/kailian/KlShoppingCoachtime/waitconfirm.do">最新待确认课程</a></li>
       <li><a href="${ctx}/page/card/cards.jsp">开练卡</a></li>
        -->
       <li><a href="${ctx}/kailian/KlTrainningRecord/myrecords.do">训练记录</a></li>
       <!-- 
       <li><a href="${ctx}/kailian/KlShoppingOrder/userorders.do" >订单管理</a></li>
        -->
       <li><a href="${ctx}/kailian/KlShoppingComplaints/usercomps.do">投诉退款</a></li>
    </ul>
    </c:if>
    <span class="clear_f"></span>
    
</div>

<script>
var donotknow = 0;
	$(function() {
		$(".sideNav ul li a").each(
			function() {
				var url = window.location.href;
				var href = $(this).attr('href');
				//alert(url + "   " + href);
				href = href.replace(":80/","/");
				if (url.indexOf(href) >= 0)
				{
					$(this).addClass("aNow");
					
					if ("dpgl" == $(this).attr("p")) {
						$('.sideNav').find('li').find('.list').hide();
						$('.sideNav').find('li').find('.list').show();
						donotknow = 1;
					}
				}
				
				
			}
		);
	})
</script>

