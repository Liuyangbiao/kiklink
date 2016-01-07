<%@page import="com.kailian.glo.model.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsTest1.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("NAME", "1");
		map.put("LOGINNAME", "1");
		map.put("PASSWD", "1");
		map.put("EMAIL", "1");
		map.put("PHONE", "1");
		map.put("IMG1", "1");
		map.put("IMG2", "1");
		map.put("LEVEL", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		map.put("EXT1", "1");
		map.put("EXT2", "1");
		map.put("EXT3", "1");
		map.put("EXT4", "1");
		map.put("EXT5", "1");
		map.put("EXTINT1", "1");
		map.put("EXTINT2", "1");
		map.put("EXTINT3", "1");
		map.put("EXTINT4", "1");
		map.put("EXTINT5", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsTest1" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
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
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3><%=CmsTest1.TABLE_ALIAS %>列表
		&nbsp;&nbsp;
		 <a class="button" href="${ctx}/${actionBasePath}/create.do" title="新增">新增</a>
		 &nbsp;&nbsp;
		 <a class="button" onclick="if(confirm('确定要删除所选数据吗？')) deleteidsrt();" title="删除所选">删除所选</a>
		 </h3>
      </div>
      <div style="clear:both;"></div>
      <!-- End .content-box-header -->
      <div class="content-box-content" style="overflow-x:scroll;">
        <div class="tab-content default-tab" id="tab1">
          <!-- This is the target div. id must match the href of this div's tab -->
          <%@ include file="/admin/admincommon/tipup.jsp" %>
          <table>
            <thead>
              <tr>
                <th>
                  <input class="check-all" type="checkbox" />
                </th>
				
			
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_ID%>');"><%=CmsTest1.ALIAS_ID%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_NAME%>');"><%=CmsTest1.ALIAS_NAME%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LOGINNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_LOGINNAME%>');"><%=CmsTest1.ALIAS_LOGINNAME%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PASSWD"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_PASSWD%>');"><%=CmsTest1.ALIAS_PASSWD%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EMAIL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EMAIL%>');"><%=CmsTest1.ALIAS_EMAIL%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PHONE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_PHONE%>');"><%=CmsTest1.ALIAS_PHONE%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="IMG1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_IMG1%>');"><%=CmsTest1.ALIAS_IMG1%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="IMG2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_IMG2%>');"><%=CmsTest1.ALIAS_IMG2%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LEVEL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_LEVEL%>');"><%=CmsTest1.ALIAS_LEVEL%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_STATUS%>');"><%=CmsTest1.ALIAS_STATUS%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_ADDITION%>');"><%=CmsTest1.ALIAS_ADDITION%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_CREATETIMELONG%>');"><%=CmsTest1.ALIAS_CREATETIMELONG%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_MODIFYTIMELONG%>');"><%=CmsTest1.ALIAS_MODIFYTIMELONG%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_CREATEUSER%>');"><%=CmsTest1.ALIAS_CREATEUSER%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_MODIFYUSER%>');"><%=CmsTest1.ALIAS_MODIFYUSER%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXT1%>');"><%=CmsTest1.ALIAS_EXT1%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXT2%>');"><%=CmsTest1.ALIAS_EXT2%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXT3%>');"><%=CmsTest1.ALIAS_EXT3%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXT4%>');"><%=CmsTest1.ALIAS_EXT4%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXT5%>');"><%=CmsTest1.ALIAS_EXT5%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXTINT1%>');"><%=CmsTest1.ALIAS_EXTINT1%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXTINT2%>');"><%=CmsTest1.ALIAS_EXTINT2%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXTINT3%>');"><%=CmsTest1.ALIAS_EXTINT3%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXTINT4%>');"><%=CmsTest1.ALIAS_EXTINT4%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th><span onclick="newsort('<%=CmsTest1.ALIAS_EXTINT5%>');"><%=CmsTest1.ALIAS_EXTINT5%></span></th>
					</c:if>
				-->	
			
				<th>操作</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td colspan="6">
                  
                  <div class="align-left"> 
                  		
                  		<c:if test="${pg.thisPageNumber gt 1}">
                  			<a class="button" href="javascript:submitSearch(1);" title="首页">&laquo; 首页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.previousPageNumber});" title="上页">&laquo; 上页</a>
                  		</c:if>
                  
                  		<c:forEach var="p" items="${pg.linkPageNumbers}">
                  			<c:choose>
                  				<c:when test="${p eq pg.thisPageNumber}">
                  					&nbsp;&nbsp;${p}&nbsp;&nbsp;
                  				</c:when>
                  				<c:otherwise>
                  					<a class="button" href="javascript:submitSearch(${p});" class="number" title="${p}">${p}</a>
                  				</c:otherwise>
                  			</c:choose>
                  			
                  		</c:forEach>
                  		
                  		<c:if test="${pg.thisPageNumber lt pg.lastPageNumber}">
                  			<a class="button" href="javascript:submitSearch(${pg.nextPageNumber});" title="下页">&laquo; 下页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.lastPageNumber});" title="尾页">&laquo; 尾页</a>
                  		</c:if>
                  <!-- End .pagination -->
                  <div class="clear"></div>
                </td>
              </tr>
            </tfoot>
            <tbody>
            <c:forEach var="v" items="${pg.result}">
              <tr>
                <td>
                  <input type="checkbox" id="checkbox_${v.id}" />
                </td>
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<td>${v.id}</td>
					</c:if>
				
                	<c:set var="tt" value="NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="name_${v.id}" class="td123">${v.name}</td>
					</c:if>
				
                	<c:set var="tt" value="LOGINNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="loginname_${v.id}" class="td123">${v.loginname}</td>
					</c:if>
				
                	<c:set var="tt" value="PASSWD"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="passwd_${v.id}" class="td123">${v.passwd}</td>
					</c:if>
				
                	<c:set var="tt" value="EMAIL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="email_${v.id}" class="td123">${v.email}</td>
					</c:if>
				
                	<c:set var="tt" value="PHONE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="phone_${v.id}" class="td123">${v.phone}</td>
					</c:if>
				
                	<c:set var="tt" value="IMG1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="img1_${v.id}" class="td123">${v.img1}</td>
					</c:if>
				
                	<c:set var="tt" value="IMG2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="img2_${v.id}" class="td123">${v.img2}</td>
					</c:if>
				
                	<c:set var="tt" value="LEVEL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="level_${v.id}" class="td123">${v.level}</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123">${v.status}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123">${v.addition}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123">${v.createtimelong}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123">${v.modifytimelong}</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123">${v.createuser}</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123">${v.modifyuser}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123">${v.ext1}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123">${v.ext2}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123">${v.ext3}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123">${v.ext4}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123">${v.ext5}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint1_${v.id}" class="td123">${v.extint1}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint2_${v.id}" class="td123">${v.extint2}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint3_${v.id}" class="td123">${v.extint3}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint4_${v.id}" class="td123">${v.extint4}</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint5_${v.id}" class="td123">${v.extint5}</td>
					</c:if>
				
				--> 
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             		
                  <a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
                 
                   
                 </td>
              </tr>
           	</c:forEach>
            </tbody>
          </table>
        </div>
        <!-- End #tab1 -->

      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>搜索</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          <form id="queryForm" name="queryForm" action="${ctx}/${actionBasePath}/list.do" method="post" style="display: inline;">
			<input type="hidden" id="pageNumber" name="pageNumber" value="1"/>
			<input type="hidden" id="pageSize" name="pageSize" value="10" />
			<input type="hidden" id="sort" name="sort" value="${param.sort}" />
			<fieldset>
			
			 <p>
              <label><%=CmsTest1.ALIAS_ID%></label>
						<input class="text-input medium-input datepicker" value="${param.id}" id="id" name="id" maxlength="19"  class="validate-integer "/>
              </p>
			
			 <p>
              <label><%=CmsTest1.ALIAS_NAME%></label>
						<input class="text-input medium-input datepicker" value="${param.name}" id="name" name="name" maxlength="100"  class=""/>
              </p>
			
			 <p>
              <label><%=CmsTest1.ALIAS_LOGINNAME%></label>
						<input class="text-input medium-input datepicker" value="${param.loginname}" id="loginname" name="loginname" maxlength="100"  class=""/>
              </p>
			
			 <p>
              <label><%=CmsTest1.ALIAS_PASSWD%></label>
						<input class="text-input medium-input datepicker" value="${param.passwd}" id="passwd" name="passwd" maxlength="100"  class=""/>
              </p>
			
			 <p>
              <label><%=CmsTest1.ALIAS_EMAIL%></label>
						<input class="text-input medium-input datepicker" value="${param.email}" id="email" name="email" maxlength="100"  class="validate-email "/>
              </p>
			
			 <p>
              <label><%=CmsTest1.ALIAS_PHONE%></label>
						<input class="text-input medium-input datepicker" value="${param.phone}" id="phone" name="phone" maxlength="100"  class=""/>
              </p>
			
			 <p>
              <label><%=CmsTest1.ALIAS_IMG1%></label>
						<input class="text-input medium-input datepicker" value="${param.img1}" id="img1" name="img1" maxlength="200"  class=""/>
              </p>
			
			 <p>
              <label><%=CmsTest1.ALIAS_IMG2%></label>
						<input class="text-input medium-input datepicker" value="${param.img2}" id="img2" name="img2" maxlength="200"  class=""/>
              </p>
			
			 <p>
              <label><%=CmsTest1.ALIAS_LEVEL%></label>
						<input class="text-input medium-input datepicker" value="${param.level}" id="level" name="level" maxlength="10"  class="validate-integer max-value-2147483647"/>
              </p>
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_STATUS%></label>
						<input class="text-input medium-input datepicker" value="${param.status}" id="status" name="status" maxlength="10"  class="validate-integer max-value-2147483647"/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_ADDITION%></label>
						<input class="text-input medium-input datepicker" value="${param.addition}" id="addition" name="addition" maxlength="65535"  class=""/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_CREATETIMELONG%></label>
						<input class="text-input medium-input datepicker" value="${param.createtimelong}" id="createtimelong" name="createtimelong" maxlength="19"  class="validate-integer "/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_MODIFYTIMELONG%></label>
						<input class="text-input medium-input datepicker" value="${param.modifytimelong}" id="modifytimelong" name="modifytimelong" maxlength="19"  class="validate-integer "/>
              </p>
				-->
			
			 <p>
              <label><%=CmsTest1.ALIAS_CREATEUSER%></label>
						<input class="text-input medium-input datepicker" value="${param.createuser}" id="createuser" name="createuser" maxlength="19"  class="validate-integer "/>
              </p>
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_MODIFYUSER%></label>
						<input class="text-input medium-input datepicker" value="${param.modifyuser}" id="modifyuser" name="modifyuser" maxlength="19"  class="validate-integer "/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXT1%></label>
						<input class="text-input medium-input datepicker" value="${param.ext1}" id="ext1" name="ext1" maxlength="65535"  class=""/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXT2%></label>
						<input class="text-input medium-input datepicker" value="${param.ext2}" id="ext2" name="ext2" maxlength="65535"  class=""/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXT3%></label>
						<input class="text-input medium-input datepicker" value="${param.ext3}" id="ext3" name="ext3" maxlength="65535"  class=""/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXT4%></label>
						<input class="text-input medium-input datepicker" value="${param.ext4}" id="ext4" name="ext4" maxlength="65535"  class=""/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXT5%></label>
						<input class="text-input medium-input datepicker" value="${param.ext5}" id="ext5" name="ext5" maxlength="65535"  class=""/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXTINT1%></label>
						<input class="text-input medium-input datepicker" value="${param.extint1}" id="extint1" name="extint1" maxlength="10"  class="validate-integer max-value-2147483647"/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXTINT2%></label>
						<input class="text-input medium-input datepicker" value="${param.extint2}" id="extint2" name="extint2" maxlength="10"  class="validate-integer max-value-2147483647"/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXTINT3%></label>
						<input class="text-input medium-input datepicker" value="${param.extint3}" id="extint3" name="extint3" maxlength="10"  class="validate-integer max-value-2147483647"/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXTINT4%></label>
						<input class="text-input medium-input datepicker" value="${param.extint4}" id="extint4" name="extint4" maxlength="10"  class="validate-integer max-value-2147483647"/>
              </p>
				-->
			
				<!-- 
			 <p>
              <label><%=CmsTest1.ALIAS_EXTINT5%></label>
						<input class="text-input medium-input datepicker" value="${param.extint5}" id="extint5" name="extint5" maxlength="10"  class="validate-integer max-value-2147483647"/>
              </p>
				-->
				</fieldset>
				<br/>
				<a href="#" class="button" onclick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onclick="$('#queryForm').reset();">重置</a>
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
	dorightlist();
});

function newsort(sortname) {
	var sort = $('#sort').val();
	if (sort == "")
		$('#sort').val(sortname);
	else {
		sort = sort.split(" ")[0];
		if (sort != sortname || sort.split(" ").length > 1) {
			$('#sort').val(sortname);
		}
		else
			$('#sort').val(sortname + " desc");
	}
	$('#queryForm').submit();
}


function deleteids() {
		var items = "";
		for (var i = 1; i <= 10; i ++) {
			if($("#checkbox_" + i).attr("checked")=="checked") {
				if (items == "")
					items += "" + i;
				else 
					items += "," + i;
				
			}
		}
		
		window.location.href = "${ctx}/${actionBasePath}/delete.do?items=" + items;
	}
	
	
	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
</script>
<!-- Download From www.exet.tk-->
</html>
