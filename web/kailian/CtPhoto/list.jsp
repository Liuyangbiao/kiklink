<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CtPhoto.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("OWNERID", "1");
		map.put("OWNERTYPE", "1");
		map.put("SUBMITERID", "1");
		map.put("SUBMITERNAME", "1");
		map.put("IMGURL", "1");
		map.put("IMGNAME", "1");
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
<c:set var="actionBasePath" value="/kailian/CtPhoto" />
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
        <h3><%=JSTLTagUtils.getCnname("CtPhoto","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="${ctx}/${actionBasePath}/create.do" title="新增">新增</a>
		 &nbsp;&nbsp;
		 <a class="button" onclick="if(confirm('确定要删除所选数据吗？')) deleteidsrt();" title="删除所选">删除所选</a>
            </c:when>
            <c:otherwise>
            
            </c:otherwise>
        </c:choose>
		
		
		 
		 &nbsp;&nbsp;
		 ${pg.totalCount}条记录
		 &nbsp;&nbsp;
		 <a class="button" onclick="$('#queryForm').submit();">刷新</a>
		 </h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content" style="">
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
						<th id="id_000"><span onclick="newsort('<%=CtPhoto.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="OWNERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ownerid_000"><span onclick="newsort('<%=CtPhoto.ALIAS_OWNERID%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_OWNERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="OWNERTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ownertype_000"><span onclick="newsort('<%=CtPhoto.ALIAS_OWNERTYPE%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_OWNERTYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SUBMITERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="submiterid_000"><span onclick="newsort('<%=CtPhoto.ALIAS_SUBMITERID%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_SUBMITERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SUBMITERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="submitername_000"><span onclick="newsort('<%=CtPhoto.ALIAS_SUBMITERNAME%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_SUBMITERNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="IMGURL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="imgurl_000"><span onclick="newsort('<%=CtPhoto.ALIAS_IMGURL%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_IMGURL)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="IMGNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="imgname_000"><span onclick="newsort('<%=CtPhoto.ALIAS_IMGNAME%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_IMGNAME)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CtPhoto.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CtPhoto.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CtPhoto.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CtPhoto.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CtPhoto.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CtPhoto.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint1_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXTINT1%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint2_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXTINT2%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint3_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXTINT3%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint4_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXTINT4%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint5_000"><span onclick="newsort('<%=CtPhoto.ALIAS_EXTINT5%>');"><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT5)%></span></th>
					</c:if>
				-->	
			
				<th>操作</th>
              </tr>
            </thead>

            <tbody>
            <c:forEach var="v" varStatus="vs" items="${pg.result}">
              <tr>
                <td>
                  <input type="checkbox" id="checkbox_${v.id}" />
                </td>
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<td>${v.id}</td>
					</c:if>
				
                	<c:set var="tt" value="OWNERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ownerid_${v.id}" class="td123 owneridTd">
${my:showcont('CtPhoto','ownerid',v.ownerid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="OWNERTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ownertype_${v.id}" class="td123 ownertypeTd">
${my:showcont('CtPhoto','ownertype',v.ownertype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SUBMITERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="submiterid_${v.id}" class="td123 submiteridTd">
${my:showcont('CtPhoto','submiterid',v.submiterid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SUBMITERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="submitername_${v.id}" class="td123 submiternameTd">
${my:showcont('CtPhoto','submitername',v.submitername,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="IMGURL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="imgurl_${v.id}" class="td123 imgurlTd">
${my:showcont('CtPhoto','imgurl',v.imgurl,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="IMGNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="imgname_${v.id}" class="td123 imgnameTd">
${my:showcont('CtPhoto','imgname',v.imgname,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CtPhoto','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CtPhoto','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CtPhoto','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CtPhoto','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CtPhoto','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CtPhoto','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('CtPhoto','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('CtPhoto','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('CtPhoto','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('CtPhoto','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('CtPhoto','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint1_${v.id}" class="td123 extint1Td">
${my:showcont('CtPhoto','extint1',v.extint1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint2_${v.id}" class="td123 extint2Td">
${my:showcont('CtPhoto','extint2',v.extint2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint3_${v.id}" class="td123 extint3Td">
${my:showcont('CtPhoto','extint3',v.extint3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint4_${v.id}" class="td123 extint4Td">
${my:showcont('CtPhoto','extint4',v.extint4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint5_${v.id}" class="td123 extint5Td">
${my:showcont('CtPhoto','extint5',v.extint5,0 )}							</td>
					</c:if>
				
				--> 
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CtPhoto','list_iframe',v.id,-1,0 )}${my:input('CtPhoto','list_blank',v.id,-1,0 )}
           
            </c:when>
            <c:otherwise>
            	<a class="button" href="#" onclick="parent.didiframe(obj[${vs.index}],'${param.params}');">选取</a>
            </c:otherwise>
        </c:choose>	
             		
             		

                 </td>
              </tr>
           	</c:forEach>
            </tbody>
          </table>
          <br/><br/>
                  <div class="clear"></div>
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
                  			<a class="button" href="javascript:submitSearch(${pg.nextPageNumber});" title="下页">&raquo; 下页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.lastPageNumber});" title="尾页">&raquo; 尾页</a>
                  		</c:if>
                  </div>
                  <!-- End .pagination -->
                  <div class="clear"></div>
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
			<a href="#" class="button" onclick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onclick="$('#queryForm').reset();">重置</a>
				<br/>
			
			<input type="hidden" id="pageNumber" name="pageNumber" value="${param.pageNumber}"/>
			<input type="hidden" id="pageSize" name="pageSize" value="10" />
			<input type="hidden" id="sort" name="sort" value="${param.sort}" />
			<input type="hidden" id="fromiframe" name="fromiframe" value="${param.fromiframe}" />
			<input type="hidden" id="params" name="params" value="${param.params}" />
			<fieldset>
			
			 <p id="id_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_ID)%></label>
${my:input('CtPhoto','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="ownerid_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_OWNERID)%></label>
${my:input('CtPhoto','ownerid',param.ownerid,0,-1 )}						
						
              </p>
			
			 <p id="ownertype_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_OWNERTYPE)%></label>
${my:input('CtPhoto','ownertype',param.ownertype,0,-1 )}						
						
              </p>
			
			 <p id="submiterid_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_SUBMITERID)%></label>
${my:input('CtPhoto','submiterid',param.submiterid,0,-1 )}						
						
              </p>
			
			 <p id="submitername_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_SUBMITERNAME)%></label>
${my:input('CtPhoto','submitername',param.submitername,0,-1 )}						
						
              </p>
			
			 <p id="imgurl_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_IMGURL)%></label>
${my:input('CtPhoto','imgurl',param.imgurl,0,-1 )}						
						
              </p>
			
			 <p id="imgname_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_IMGNAME)%></label>
${my:input('CtPhoto','imgname',param.imgname,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_STATUS)%></label>
${my:input('CtPhoto','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_ADDITION)%></label>
${my:input('CtPhoto','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_CREATETIMELONG)%></label>
${my:input('CtPhoto','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CtPhoto','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_CREATEUSER)%></label>
${my:input('CtPhoto','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_MODIFYUSER)%></label>
${my:input('CtPhoto','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT1)%></label>
${my:input('CtPhoto','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT2)%></label>
${my:input('CtPhoto','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT3)%></label>
${my:input('CtPhoto','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT4)%></label>
${my:input('CtPhoto','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT5)%></label>
${my:input('CtPhoto','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint1_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT1)%></label>
${my:input('CtPhoto','extint1',param.extint1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint2_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT2)%></label>
${my:input('CtPhoto','extint2',param.extint2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint3_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT3)%></label>
${my:input('CtPhoto','extint3',param.extint3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint4_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT4)%></label>
${my:input('CtPhoto','extint4',param.extint4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint5_formp">
              <label><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT5)%></label>
${my:input('CtPhoto','extint5',param.extint5,0,-1 )}						
						
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
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent,  'onClosed' :function() { $('#queryForm').submit();}});
	dorightlist();
});

function newsort(sortname) {
	var sort = $('#sort').val();
	if (sort == "")
		$('#sort').val(sortname);
	else {
		sort = sort.split(" ")[0];
		if (sort != sortname || $('#sort').val().split(" ").length > 1) {
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
	
	var str1 = '${my:resultlist(pg.result)}';
	var obj = eval('(' + str1 + ')');   
	
</script>
<!-- Download From www.exet.tk-->
</html>
