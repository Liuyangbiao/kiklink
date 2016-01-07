<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsArticle.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsArticle" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>
<div id="body-wrapperx">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-contentx">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>查看<%=JSTLTagUtils.getCnname("CmsArticle","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">

		<a class="button" onClick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onClick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CHANNEL_ID)%>:
				 </label>
${my:showcont('CmsArticle','channelId',v.channelId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_PATH)%>:
				 </label>
${my:showcont('CmsArticle','path',v.path,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_TITILE)%>:
				 </label>
${my:showcont('CmsArticle','titile',v.titile,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_SHORT_TITLE)%>:
				 </label>
${my:showcont('CmsArticle','shortTitle',v.shortTitle,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_KEYWORDS)%>:
				 </label>
${my:showcont('CmsArticle','keywords',v.keywords,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_META_TAGS)%>:
				 </label>
${my:showcont('CmsArticle','metaTags',v.metaTags,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_DESCRIPTION)%>:
				 </label>
${my:showcont('CmsArticle','description',v.description,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_AUTHOR)%>:
				 </label>
${my:showcont('CmsArticle','author',v.author,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ORIGIN)%>:
				 </label>
${my:showcont('CmsArticle','origin',v.origin,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CHANNEL_TYPE)%>:
				 </label>
${my:showcont('CmsArticle','channelType',v.channelType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_TITLE_IMG)%>:
				 </label>
${my:showcont('CmsArticle','titleImg',v.titleImg,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CONTENT_IMG)%>:
				 </label>
${my:showcont('CmsArticle','contentImg',v.contentImg,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CONTENT)%>:
				 </label>
${my:showcont('CmsArticle','content',v.content,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_RANK)%>:
				 </label>
${my:showcont('CmsArticle','rank',v.rank,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_DISPLAY)%>:
				 </label>
${my:showcont('CmsArticle','display',v.display,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_FLOWER)%>:
				 </label>
${my:showcont('CmsArticle','flower',v.flower,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_EGG)%>:
				 </label>
${my:showcont('CmsArticle','egg',v.egg,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_LINK)%>:
				 </label>
${my:showcont('CmsArticle','link',v.link,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ADDITION_JSON)%>:
				 </label>
${my:showcont('CmsArticle','additionJson',v.additionJson,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsArticle','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsArticle','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsArticle','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsArticle','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsArticle','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsArticle','modifyuser',v.modifyuser,0 )}			</p>	
		</fieldset>
        </div>
        <!-- End #tab3 -->
      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    <div class="clear"></div>
    <%@ include file="/admin/admincommon/tipdown.jsp" %>

    <!-- End Notifications -->
  </div>
  <!-- End #main-content -->
</div>
</body>

<!-- Download From www.exet.tk-->
</html>
