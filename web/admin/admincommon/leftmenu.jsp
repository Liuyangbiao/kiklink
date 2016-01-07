<%@ page import="java.io.*" contentType="text/html;charset=UTF-8" %>
<%@page import="com.kailian.glo.model.*" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.yebucuo.com/date" prefix="date"%>
<%
	request.setAttribute("admin", request.getSession().getAttribute("adminuser"));
%>
  <div id="sidebar">
    <div id="sidebar-wrapper">
      <!-- Sidebar with logo and menu -->
      <h1 id="sidebar-title"><a href="#"></a></h1>
      <!-- Logo (221px wide) -->
      <a href=""><img id="logo" src="${ctx }/admin/logo.png" width="200"  alt="Simpla Admin logo" /></a>
      <!-- Sidebar Profile links -->
      
      <div id="profile-links"> ${my:getConfig('欢迎词','Hello,')} <a href="#" title="Edit your profile">${admin.username}</a><br />
        <br />
        <a href="http://www.benbener.com" title="View the Site">查看站点</a> | <a href="${ctx}/kailian/CmsAdminuser/logout.do" title="Sign Out">退出</a> </div>
	   <ul id="main-nav">
        <!-- Accordion Menu -->
       
        <li> <a href="#" class="nav-top-item">卖家管理</a>
			<ul>          	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/KlSellerShop/list.do?status=0','开店申请');">开店申请</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/KlSellerShop/list.do?status=2','装修中店铺');">装修中店铺</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/KlSellerShop/list.do?status=1','已上线店铺');">已上线店铺</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/KlSellerShop/list.do?status=-99','已关闭店铺');">已关闭店铺</a></li>
          	<!-- 
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/KlShoppingShoppingcartproduct/list.do?status=0&tm=0','预约管理');">预约管理</a></li>
          	 -->
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/KlShoppingOrder/list.do?status=20','订单管理');">订单管理</a></li>
            </ul>
          </li> 
       
        <li> <a href="#" class="nav-top-item">买家管理</a>
       	<ul>
        	<li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/CmsUserInfo/list.do','用户列表');">所有用户列表</a>
            </li>
            <li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/CmsUserInfo/list.do?status=1','正常用户列表');">正常用户列表</a>
            </li>
            <li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/CmsUserInfo/list.do?status=-1','被阻止用户列表');">被阻止用户列表</a>
            </li>
        </ul>
       </li>
       
       <li> <a href="#" class="nav-top-item">开练卡管理</a>
       	<ul>
        	<li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/KlSellerCard/list.do','开练卡配置');">开练卡配置</a>
            </li>
        </ul>
       </li>
       
        <li> <a href="#" class="nav-top-item">热活派、专题管理</a>
			<ul>          	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStSpecialtopic/list.do','专题列表');">专题列表</a></li>
			<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStSpecialtopic/create.do','新增专题');">新增专题</a></li>
			<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStRehuopai/list.do','热活派列表');">热活派列表</a></li>
			<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStRehuopai/create.do','新增热活派');">新增热活派</a></li>
            </ul>
          </li> 
       
       
 <li> <a href="#" class="nav-top-item">服务器</a>
          <ul>
          	<li><a href="#" onclick="addPanel('${ctx}/admin/serverinfo.jsp','服务器信息');">服务器信息</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/admin/duanxins.jsp','短信群发');">短信群发</a></li>			
            </ul>
          </li> 
       <!-- 
     <li> <a href="#" class="nav-top-item">店铺管理</a>
          <ul>
          	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/KlSellerShop/list.do?status=0','开店申请');">开店申请</a></li>
            <li><a href="#" onclick="addPanel('${ctx}/kailian/KlSellerShop/list.do?status=1','已上线店铺');">已上线店铺</a></li>	
            </ul>
          </li> 
           -->
      <li> <a href="#" class="nav-top-item">投诉管理</a>
          <ul>
          	
          	<li><a onclick="addPanel('${ctx}/kailian/KlShoppingComplaints/list.do?status=0','未处理投诉');">未处理投诉</a></li>
            <li><a onclick="addPanel('${ctx}/kailian/KlShoppingComplaints/list.do?status=5','和解处理投诉');">和解处理投诉</a></li>
            <li><a onclick="addPanel('${ctx}/kailian/KlShoppingComplaints/list.do?status=10','警告处理投诉');">警告处理投诉</a></li>
            <li><a onclick="addPanel('${ctx}/kailian/KlShoppingComplaints/list.do?status=20','退款处理投诉');">退款处理投诉</a></li>
            <li><a onclick="addPanel('${ctx}/kailian/KlShoppingComplaints/list.do?status=50','关店处理投诉');">关店处理投诉</a></li>
            </ul>
          </li> 
         <!--
           <li> <a href="#" class="nav-top-item">交易管理</a>
          <ul>
          	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/klShoppingShoppingcartproduct/list.do?status=-41','等待关闭交易');">等待关闭交易</a></li>
            </ul>
          </li> 
		-->
    <li> <a href="#" class="nav-top-item">产品管理</a>
          <ul>
          	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/KlSellerProduct/list.do?status=0','待审核课程');">待审核课程</a></li>	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/KlSellerProduct/list.do?status=1','已审核课程');">已审核课程</a></li>	
            </ul>
          </li> 
          
          <!-- 
          <li> <a href="#" class="nav-top-item">标签管理</a>
          <ul>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsBiaodanDetail/list.do?inputListId=6&pageSize=100','首页搜索标签');">首页搜索标签</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsConfig/list.do?category=20','频道标签及其他配置');">频道标签及其他配置</a></li>

            </ul>
          </li> 
           -->
          <li> <a href="#" class="nav-top-item">焦点图、标签等列表管理</a>
          <ul>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsBiaodan/list.do?bianji=1&type=10','首页相关配置');">首页相关配置</a></li>
			<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsBiaodan/list.do?bianji=1&type=20','频道焦点图');">频道焦点图</a></li>
			<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsConfig/list.do?category=20','频道标签及其他配置');">频道标签</a></li>
			<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsBiaodan/list.do?bianji=1&type=1','其他列表配置');">其他列表配置</a></li>
            </ul>
          </li> 
          
         <!-- 
        <li> <a href="#" class="nav-top-item">内容管理</a>
          <ul>
          	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsChannel/list.do','频道列表');">频道列表</a></li>
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsTemplate/list.do','模板管理');">模板管理</a></li>	
            </ul>
          </li> 
        
       
       <li> <a href="#" class="nav-top-item">用户管理</a>
       	<ul>
        	<li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/CmsUserInfo/list.do','用户列表');">所有用户列表</a>
            </li>
            <li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/CmsUserInfo/list.do?status=1','正常用户列表');">正常用户列表</a>
            </li>
            <li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/CmsUserInfo/list.do?status=-1','被阻止用户列表');">被阻止用户列表</a>
            </li>
        </ul>
       </li>
       -->
       
        <li> <a href="#" class="nav-top-item">设置</a>
          <ul>
           
          	
          	 
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsConfig/list.do?category=10','上传设置');">上传设置</a></li>
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsConfig/list.do?category=30','数据库设置');">数据库设置</a></li>
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsConfig/list.do?category=40','程序相关');">程序相关</a></li>
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsConfig/list.do?category=0','其他设置');">其他设置</a></li>
            </ul>
          </li> 
          
          
          
       <li> <a href="#" class="nav-top-item">小组管理</a>
       	<ul>
        	<li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/CmsGroup/list.do','小组列表');">小组列表</a>
            </li>
            <li>
            	<a href="#" onclick="addPanel('${ctx}/kailian/CmsGroupTopic/list.do','话题列表');">话题列表</a>
            </li>
        </ul>
       </li>
      <c:if test="${admin.userGroupId ne 3}">
       
       <li> <a href="#" class="nav-top-item">管理员与管理组</a>
          <ul>
          	
          	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsAdminuser/list.do','管理员列表');">管理员列表</a></li>
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsAdminGroup/list.do','管理组列表');">管理组列表</a></li>
			
            </ul>
          </li> 
          
        <li> <a href="#" class="nav-top-item">表单数据管理</a>
          <ul>
          	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsBiaodan/list.do','表单列表');">表单列表</a></li>
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsBiaodan/create.do','新增表单');">新增表单</a></li>
		
            </ul>
          </li> 
          
          <li> <a href="#" class="nav-top-item">调查管理</a>
          <ul>
          	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsSurvey/list.do','调查列表');">调查列表</a></li>
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsSurvey/create.do','新增调查');">新增调查</a></li>
		
            </ul>
          </li> 
          
        <li> <a href="#" class="nav-top-item">高级管理（程序级）</a>
          <ul>
          <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsBiaodan/list.do','焦点图');">焦点图</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsRightTable/list.do','访问权限列表');">访问权限列表</a></li>
			<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsRequestlog/list.do?sort=id desc','访问日志列表');">访问日志列表</a></li>
          	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsInputTable/list.do','类属性列表');">类属性列表</a></li>	
             	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsIpdata/list.do','ip地址库');">ip地址库</a></li>	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsAjaxConfig/list.do','aJax测试列表');">aJax测试列表</a></li>		
             <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsBackupDb/list.do?sort=id desc','数据库备份列表');">数据库备份列表</a></li>			
            </ul>
          </li> 
         
          
          <li> <a href="#" class="nav-top-item">aJax接口测试</a>
          <ul>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsAjaxConfig/list.do?configtype=1','用户接口aJax测试');">用户接口</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsAjaxConfig/list.do?configtype=2','商品接口aJax测试');">商品接口</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsAjaxConfig/list.do?configtype=3','商品接口aJax测试');">订单接口</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsAjaxConfig/list.do?configtype=4','商品接口aJax测试');">收藏接口</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsAjaxConfig/list.do?configtype=5','商品接口aJax测试');">消息接口</a></li>	
            </ul>
          </li> 
          
          
           <li> <a href="#" class="nav-top-item">统计信息</a>
          <ul>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStaticsFlow/list.do?sort=id desc','记录流');">记录流</a></li>	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStaticsGather/gather.do?thetype=visitMonth','月流量图');">月流量图</a></li>	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStaticsGather/gather.do?thetype=visitDate','日流量图');">日流量图</a></li>	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStaticsGather/gather.do?thetype=browser','浏览器分布');">浏览器分布</a></li>	
            <li><a href="#" onclick="addPanel('${ctx}/kailian/CmsStaticsGather/gather.do?thetype=os','操作系统分布');">操作系统分布</a></li>	
            		
            </ul>
            
          </li> 
          
         <li> <a href="#" class="nav-top-item">演示页面</a>
          <ul>
          	<li><a href="#" onclick="addPanel('${ctx}/user/login.jsp','用户登录');">用户登录</a></li>	
          	<li><a href="#" onclick="addPanel('${ctx}/user/reg.jsp','用户注册');">用户注册</a></li>	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsGroup/index.do','小组首页');">小组首页</a></li>	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsGroup/myGroupTopic.do','我的小组');">我的小组</a></li>	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsGroup/newGroup.do','新建小组');">新建小组</a></li>
          	
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsArticle/bangdan.do','教练吧榜单');">教练吧广场</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsArticle/channel.do?channelid=3','培训活动');">培训活动</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsArticle/channel.do?channelid=4','文章信息');">文章信息</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsArticle/channel.do?channelid=5','教练基金');">教练基金</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsArticle/myArticles.do','我发布的文章');">我发布的文章</a></li>
          	<li><a href="#" onclick="addPanel('${ctx}/kailian/CmsArticle/preArticle.do','发布文章');">发布文章</a></li>
            </ul>
          </li> 
          
          </c:if>
      <!-- End #main-nav -->
      
      
      
      <div id="messages" style="display: none">
        <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
        <h3>意见建议</h3>
        <!-- 
        <p> <strong>17th May 2009</strong> by Admin<br />
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
        <p> <strong>2nd May 2009</strong> by Jane Doe<br />
          Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
        <p> <strong>25th April 2009</strong> by Admin<br />
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
         -->
        <form action="#" method="post">
          <h4>内容</h4>
          <fieldset>
          <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
          </fieldset>
          <fieldset>
          <select name="dropdown" class="small-input">
            <option value="option1">Send to...</option>
            <option value="option2">Everyone</option>
            <option value="option3">Admin</option>
            <option value="option4">Jane Doe</option>
          </select>
          <input class="button" type="submit" value="Send" />
          </fieldset>
        </form>
      </div>
      
      
      <!-- End #messages -->
    </div>
  </div>