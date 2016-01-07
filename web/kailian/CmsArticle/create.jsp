<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsArticle.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsArticle" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
<c:set var="ttcreatetime" value="CREATE_TIME"></c:set>
<c:set var="ttdeleted" value="DELETED"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>
<div id="body-wrapper">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>创建<%=JSTLTagUtils.getCnname("CmsArticle","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsArticle/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="CHANNEL_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='channelId_p' class='p123'>
				 <label id='channelId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CHANNEL_ID)%>:
				 </label>
${my:input('CmsArticle','channelId',model.channelId,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PATH"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='path_p' class='p123'>
				 <label id='path_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_PATH)%>:
				 </label>
${my:input('CmsArticle','path',model.path,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="TITILE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='titile_p' class='p123'>
				 <label id='titile_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_TITILE)%>:
				 </label>
${my:input('CmsArticle','titile',model.titile,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="SHORT_TITLE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shortTitle_p' class='p123'>
				 <label id='shortTitle_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_SHORT_TITLE)%>:
				 </label>
${my:input('CmsArticle','shortTitle',model.shortTitle,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="KEYWORDS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='keywords_p' class='p123'>
				 <label id='keywords_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_KEYWORDS)%>:
				 </label>
${my:input('CmsArticle','keywords',model.keywords,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="META_TAGS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='metaTags_p' class='p123'>
				 <label id='metaTags_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_META_TAGS)%>:
				 </label>
${my:input('CmsArticle','metaTags',model.metaTags,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="DESCRIPTION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='description_p' class='p123'>
				 <label id='description_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_DESCRIPTION)%>:
				 </label>
${my:input('CmsArticle','description',model.description,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="AUTHOR"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='author_p' class='p123'>
				 <label id='author_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_AUTHOR)%>:
				 </label>
${my:input('CmsArticle','author',model.author,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ORIGIN"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='origin_p' class='p123'>
				 <label id='origin_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ORIGIN)%>:
				 </label>
${my:input('CmsArticle','origin',model.origin,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CHANNEL_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='channelType_p' class='p123'>
				 <label id='channelType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CHANNEL_TYPE)%>:
				 </label>
${my:input('CmsArticle','channelType',model.channelType,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TITLE_IMG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='titleImg_p' class='p123'>
				 <label id='titleImg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_TITLE_IMG)%>:
				 </label>
${my:input('CmsArticle','titleImg',model.titleImg,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CONTENT_IMG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='contentImg_p' class='p123'>
				 <label id='contentImg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CONTENT_IMG)%>:
				 </label>
${my:input('CmsArticle','contentImg',model.contentImg,0,0 )}			</p>	
			</c:if>
		
			<p id='content_p' class='p123'>
				 <label id='content_mainlb'>
					内容:
				 </label>
<script>var lth = editors.length;editors[lth] = new Array();editors[lth][0]='content';KindEditor.ready(function(K) {editors[lth][1] = K.create('textarea[name="content"]', {allowFileManager : true,uploadJson : '../../kindeditornew/jsp/upload_json.jsp',fileManagerJson : '../../kindeditornew/jsp/file_manager_json.jsp',});});</script><textarea id="content" name="content" style='width:1000px;height:600px;'"></textarea>			</p>
		
			<c:set var="tt" value="RANK"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='rank_p' class='p123'>
				 <label id='rank_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_RANK)%>:
				 </label>
${my:input('CmsArticle','rank',model.rank,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="DISPLAY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='display_p' class='p123'>
				 <label id='display_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_DISPLAY)%>:
				 </label>
${my:input('CmsArticle','display',model.display,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="FLOWER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='flower_p' class='p123'>
				 <label id='flower_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_FLOWER)%>:
				 </label>
${my:input('CmsArticle','flower',model.flower,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EGG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='egg_p' class='p123'>
				 <label id='egg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_EGG)%>:
				 </label>
${my:input('CmsArticle','egg',model.egg,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="LINK"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='link_p' class='p123'>
				 <label id='link_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_LINK)%>:
				 </label>
${my:input('CmsArticle','link',model.link,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ADDITION_JSON"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='additionJson_p' class='p123'>
				 <label id='additionJson_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ADDITION_JSON)%>:
				 </label>
${my:input('CmsArticle','additionJson',model.additionJson,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsArticle','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsArticle','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsArticle','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsArticle','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsArticle','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsArticle','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
		</fieldset>
	</form>
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
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	//alert(33);
	
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent});
	//alert(5);
	doright();
});


	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
</script>
<!-- Download From www.exet.tk-->
</html>
