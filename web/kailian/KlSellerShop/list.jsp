<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
request.setAttribute("tableName", KlSellerShop.TABLE_ALIAS);
Map map = new HashMap();
map.put("ID", "1");
map.put("USER_TYPE", "1");
map.put("SHOP_NAME", "1");
/*
map.put("LOGO", "1");
*/
//map.put("SHOPTYPE", "1");
/*
map.put("PROVINCEID", "1");
map.put("PROVINCE", "1");
map.put("CITYID", "1");
map.put("CITY", "1");
map.put("QUID", "1");
map.put("QU", "1");
*/
map.put("REAL_NAME", "1");
map.put("ID_NUMBER", "1");
/*
map.put("ID_PICTURE", "1");
map.put("ID_PCITURE_BACK", "1");
map.put("BIRTH_YEAR", "1");
map.put("BIRTH_MONTH", "1");
map.put("BIRTH_DATE", "1");
map.put("SEX", "1");
*/
map.put("PHONENO", "1");
map.put("EMAIL", "1");
//map.put("ADDRESS", "1");
/*
map.put("POSTCODE", "1");
map.put("PROFILE", "1");
map.put("BANKNAME", "1");
map.put("BANKOPENNAME", "1");
map.put("BANKNUMBER", "1");
map.put("TEMPLATE_ID", "1");
map.put("TEMPLATE", "1");
map.put("COMPANY_NAME", "1");
map.put("PASSPORT_PICTURE", "1");
map.put("ORG_NUMBER", "1");
map.put("CREATE_DATE", "1");
map.put("POINT_DESCRIPTION_MATCH", "1");
map.put("POINT_PERFATIONAL", "1");
map.put("POINT_SERVICE_ATTITUDE", "1");
map.put("POINT_APPOINTMENT_SUCCESSFUL", "1");
map.put("FLOWER_PERCENT", "1");
map.put("SERVED_CLIENTS", "1");
map.put("SAVED_COUNT", "1");
map.put("STATUS", "1");
map.put("ADDITION", "1");
map.put("CREATETIMELONG", "1");
map.put("MODIFYTIMELONG", "1");
map.put("CREATEUSER", "1");
map.put("MODIFYUSER", "1");
map.put("USERID", "1");
*/
request.setAttribute("showmap", map);
%>
<c:set var="actionBasePath" value="/kailian/KlSellerShop" />
<c:set var="ttid" value="ID">
</c:set>
<c:set var="ttcreator" value="CREATOR">
</c:set>
<c:set var="ttdeleted" value="DELETED">
</c:set>
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
            <h3>
              <%=JSTLTagUtils.getCnname("KlSellerShop","table_name")%>

              列表 &nbsp;&nbsp;
              <c:choose>
                <c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
                  <a class="button iframe" href="${ctx}/${actionBasePath}/create.do" title="新增">
                    新增
                  </a>
                  &nbsp;&nbsp;
                  <a class="button" onclick="if(confirm('确定要删除所选数据吗？')) deleteidsrt();" title="删除所选">
                    删除所选
                  </a>
                </c:when>
                <c:otherwise>

                </c:otherwise>
              </c:choose>



              &nbsp;&nbsp; ${pg.totalCount}条记录 &nbsp;&nbsp;
              <a class="button" onclick="$('#queryForm').submit();">
                刷新
              </a>
               <a class="button" target="_blank" href="${ctx}/kailian/KlSellerShop/excel.do?status=1">导出数据</a>
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



                    <c:set var="tt" value="ID">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="id_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_ID%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="USER_TYPE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="userType_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_USER_TYPE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_USER_TYPE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="SHOP_NAME">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="shopName_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_SHOP_NAME%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SHOP_NAME)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="LOGO">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="logo_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_LOGO%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_LOGO)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="SHOPTYPE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="shoptype_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_SHOPTYPE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SHOPTYPE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="PROVINCEID">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="provinceid_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_PROVINCEID%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROVINCEID)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="PROVINCE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="province_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_PROVINCE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROVINCE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="CITYID">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="cityid_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_CITYID%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CITYID)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="CITY">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="city_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_CITY%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CITY)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="QUID">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="quid_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_QUID%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_QUID)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="QU">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="qu_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_QU%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_QU)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="REAL_NAME">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="realName_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_REAL_NAME%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_REAL_NAME)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="ID_NUMBER">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="idNumber_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_ID_NUMBER%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_NUMBER)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="ID_PICTURE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="idPicture_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_ID_PICTURE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_PICTURE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="ID_PCITURE_BACK">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="idPcitureBack_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_ID_PCITURE_BACK%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_PCITURE_BACK)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="BIRTH_YEAR">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="birthYear_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_BIRTH_YEAR%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_YEAR)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="BIRTH_MONTH">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="birthMonth_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_BIRTH_MONTH%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_MONTH)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="BIRTH_DATE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="birthDate_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_BIRTH_DATE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_DATE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="SEX">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="sex_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_SEX%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SEX)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="PHONENO">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="phoneno_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_PHONENO%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PHONENO)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="EMAIL">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="email_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_EMAIL%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_EMAIL)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="ADDRESS">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="address_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_ADDRESS%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ADDRESS)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="POSTCODE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="postcode_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_POSTCODE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POSTCODE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="PROFILE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="profile_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_PROFILE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROFILE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="BANKNAME">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="bankname_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_BANKNAME%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKNAME)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="BANKOPENNAME">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="bankopenname_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_BANKOPENNAME%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKOPENNAME)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="BANKNUMBER">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="banknumber_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_BANKNUMBER%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKNUMBER)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="TEMPLATE_ID">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="templateId_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_TEMPLATE_ID%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_TEMPLATE_ID)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="TEMPLATE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="template_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_TEMPLATE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_TEMPLATE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="COMPANY_NAME">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="companyName_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_COMPANY_NAME%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_COMPANY_NAME)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="PASSPORT_PICTURE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="passportPicture_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_PASSPORT_PICTURE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PASSPORT_PICTURE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="ORG_NUMBER">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="orgNumber_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_ORG_NUMBER%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ORG_NUMBER)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="CREATE_DATE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="createDate_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_CREATE_DATE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATE_DATE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="POINT_DESCRIPTION_MATCH">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="pointDescriptionMatch_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_POINT_DESCRIPTION_MATCH%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_DESCRIPTION_MATCH)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="POINT_PERFATIONAL">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="pointPerfational_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_POINT_PERFATIONAL%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_PERFATIONAL)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="POINT_SERVICE_ATTITUDE">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="pointServiceAttitude_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_POINT_SERVICE_ATTITUDE%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_SERVICE_ATTITUDE)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="POINT_APPOINTMENT_SUCCESSFUL">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="pointAppointmentSuccessful_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_POINT_APPOINTMENT_SUCCESSFUL%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_APPOINTMENT_SUCCESSFUL)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="FLOWER_PERCENT">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="flowerPercent_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_FLOWER_PERCENT%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_FLOWER_PERCENT)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="SERVED_CLIENTS">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="servedClients_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_SERVED_CLIENTS%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SERVED_CLIENTS)%>
                        </span>
                      </th>
                    </c:if>




                    <c:set var="tt" value="SAVED_COUNT">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="savedCount_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_SAVED_COUNT%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SAVED_COUNT)%>
                        </span>
                      </th>
                    </c:if>

                    <!--
                      <c:set var="tt" value="STATUS"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and tt ne
                      ttdeleted and showmap[tt] ne null}"> <th id="status_000"><span
                      onclick="newsort('<%=KlSellerShop.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_STATUS)%></span></th>
                      </c:if> -
                    -->

                    <!--
                      <c:set var="tt" value="ADDITION"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and tt ne
                      ttdeleted and showmap[tt] ne null}"> <th id="addition_000"><span
                      onclick="newsort('<%=KlSellerShop.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ADDITION)%></span></th>
                      </c:if> -
                    -->

                    <!--
                      <c:set var="tt" value="CREATETIMELONG"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and
                      tt ne ttdeleted and showmap[tt] ne null}"> <th id="createtimelong_000"><span
                      onclick="newsort('<%=KlSellerShop.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATETIMELONG)%></span></th>
                      </c:if> -
                    -->

                    <!--
                      <c:set var="tt" value="MODIFYTIMELONG"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and
                      tt ne ttdeleted and showmap[tt] ne null}"> <th id="modifytimelong_000"><span
                      onclick="newsort('<%=KlSellerShop.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_MODIFYTIMELONG)%></span></th>
                      </c:if> -
                    -->

                    <!--
                      <c:set var="tt" value="CREATEUSER"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and tt ne
                      ttdeleted and showmap[tt] ne null}"> <th id="createuser_000"><span
                      onclick="newsort('<%=KlSellerShop.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATEUSER)%></span></th>
                      </c:if> -
                    -->

                    <!--
                      <c:set var="tt" value="MODIFYUSER"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and tt ne
                      ttdeleted and showmap[tt] ne null}"> <th id="modifyuser_000"><span
                      onclick="newsort('<%=KlSellerShop.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_MODIFYUSER)%></span></th>
                      </c:if> -
                    -->




                    <c:set var="tt" value="USERID">
                    </c:set>
                    <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                      <th id="userid_000">
                        <span onclick="newsort('<%=KlSellerShop.ALIAS_USERID%>');">
                          <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_USERID)%>
                        </span>
                      </th>
                    </c:if>

                    <th>
                      操作
                    </th>
                  </tr>
                </thead>

                <tbody>
                  <c:forEach var="v" varStatus="vs" items="${pg.result}">
                    <tr>
                      <td>
                        <input type="checkbox" id="checkbox_${v.id}" />
                      </td>

                      <c:set var="tt" value="ID">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td>
                          ${v.id}
                        </td>
                      </c:if>

                      <c:set var="tt" value="USER_TYPE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="userType_${v.id}" class="td123 userTypeTd">
                          ${my:showcont('KlSellerShop','userType',v.userType,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="SHOP_NAME">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="shopName_${v.id}" class="td123 shopNameTd">
                          ${my:showcont('KlSellerShop','shopName',v.shopName,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="LOGO">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="logo_${v.id}" class="td123 logoTd">
                          ${my:showcont('KlSellerShop','logo',v.logo,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="SHOPTYPE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="shoptype_${v.id}" class="td123 shoptypeTd">
                          ${my:showcont('KlSellerShop','shoptype',v.shoptype,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="PROVINCEID">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="provinceid_${v.id}" class="td123 provinceidTd">
                          ${my:showcont('KlSellerShop','provinceid',v.provinceid,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="PROVINCE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="province_${v.id}" class="td123 provinceTd">
                          ${my:showcont('KlSellerShop','province',v.province,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="CITYID">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="cityid_${v.id}" class="td123 cityidTd">
                          ${my:showcont('KlSellerShop','cityid',v.cityid,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="CITY">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="city_${v.id}" class="td123 cityTd">
                          ${my:showcont('KlSellerShop','city',v.city,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="QUID">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="quid_${v.id}" class="td123 quidTd">
                          ${my:showcont('KlSellerShop','quid',v.quid,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="QU">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="qu_${v.id}" class="td123 quTd">
                          ${my:showcont('KlSellerShop','qu',v.qu,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="REAL_NAME">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="realName_${v.id}" class="td123 realNameTd">
                          ${my:showcont('KlSellerShop','realName',v.realName,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="ID_NUMBER">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="idNumber_${v.id}" class="td123 idNumberTd">
                          ${my:showcont('KlSellerShop','idNumber',v.idNumber,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="ID_PICTURE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="idPicture_${v.id}" class="td123 idPictureTd">
                          ${my:showcont('KlSellerShop','idPicture',v.idPicture,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="ID_PCITURE_BACK">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="idPcitureBack_${v.id}" class="td123 idPcitureBackTd">
                          ${my:showcont('KlSellerShop','idPcitureBack',v.idPcitureBack,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="BIRTH_YEAR">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="birthYear_${v.id}" class="td123 birthYearTd">
                          ${my:showcont('KlSellerShop','birthYear',v.birthYear,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="BIRTH_MONTH">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="birthMonth_${v.id}" class="td123 birthMonthTd">
                          ${my:showcont('KlSellerShop','birthMonth',v.birthMonth,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="BIRTH_DATE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="birthDate_${v.id}" class="td123 birthDateTd">
                          ${my:showcont('KlSellerShop','birthDate',v.birthDate,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="SEX">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="sex_${v.id}" class="td123 sexTd">
                          ${my:showcont('KlSellerShop','sex',v.sex,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="PHONENO">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="phoneno_${v.id}" class="td123 phonenoTd">
                          ${my:showcont('KlSellerShop','phoneno',v.phoneno,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="EMAIL">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="email_${v.id}" class="td123 emailTd">
                          ${my:showcont('KlSellerShop','email',v.email,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="ADDRESS">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="address_${v.id}" class="td123 addressTd">
                          ${my:showcont('KlSellerShop','address',v.address,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="POSTCODE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="postcode_${v.id}" class="td123 postcodeTd">
                          ${my:showcont('KlSellerShop','postcode',v.postcode,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="PROFILE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="profile_${v.id}" class="td123 profileTd">
                          ${my:showcont('KlSellerShop','profile',v.profile,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="BANKNAME">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="bankname_${v.id}" class="td123 banknameTd">
                          ${my:showcont('KlSellerShop','bankname',v.bankname,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="BANKOPENNAME">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="bankopenname_${v.id}" class="td123 bankopennameTd">
                          ${my:showcont('KlSellerShop','bankopenname',v.bankopenname,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="BANKNUMBER">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="banknumber_${v.id}" class="td123 banknumberTd">
                          ${my:showcont('KlSellerShop','banknumber',v.banknumber,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="TEMPLATE_ID">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="templateId_${v.id}" class="td123 templateIdTd">
                          ${my:showcont('KlSellerShop','templateId',v.templateId,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="TEMPLATE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="template_${v.id}" class="td123 templateTd">
                          ${my:showcont('KlSellerShop','template',v.template,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="COMPANY_NAME">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="companyName_${v.id}" class="td123 companyNameTd">
                          ${my:showcont('KlSellerShop','companyName',v.companyName,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="PASSPORT_PICTURE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="passportPicture_${v.id}" class="td123 passportPictureTd">
                          ${my:showcont('KlSellerShop','passportPicture',v.passportPicture,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="ORG_NUMBER">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="orgNumber_${v.id}" class="td123 orgNumberTd">
                          ${my:showcont('KlSellerShop','orgNumber',v.orgNumber,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="CREATE_DATE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="createDate_${v.id}" class="td123 createDateTd">
                          ${my:showcont('KlSellerShop','createDate',v.createDate,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="POINT_DESCRIPTION_MATCH">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="pointDescriptionMatch_${v.id}" class="td123 pointDescriptionMatchTd">
                          ${my:showcont('KlSellerShop','pointDescriptionMatch',v.pointDescriptionMatch,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="POINT_PERFATIONAL">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="pointPerfational_${v.id}" class="td123 pointPerfationalTd">
                          ${my:showcont('KlSellerShop','pointPerfational',v.pointPerfational,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="POINT_SERVICE_ATTITUDE">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="pointServiceAttitude_${v.id}" class="td123 pointServiceAttitudeTd">
                          ${my:showcont('KlSellerShop','pointServiceAttitude',v.pointServiceAttitude,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="POINT_APPOINTMENT_SUCCESSFUL">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="pointAppointmentSuccessful_${v.id}" class="td123 pointAppointmentSuccessfulTd">
                          ${my:showcont('KlSellerShop','pointAppointmentSuccessful',v.pointAppointmentSuccessful,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="FLOWER_PERCENT">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="flowerPercent_${v.id}" class="td123 flowerPercentTd">
                          ${my:showcont('KlSellerShop','flowerPercent',v.flowerPercent,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="SERVED_CLIENTS">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="servedClients_${v.id}" class="td123 servedClientsTd">
                          ${my:showcont('KlSellerShop','servedClients',v.servedClients,0 )}
                        </td>
                      </c:if>

                      <c:set var="tt" value="SAVED_COUNT">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="savedCount_${v.id}" class="td123 savedCountTd">
                          ${my:showcont('KlSellerShop','savedCount',v.savedCount,0 )}
                        </td>
                      </c:if>

                      <!--
                        <c:set var="tt" value="STATUS"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and tt ne
                        ttdeleted and showmap[tt] ne null}"> <td id="status_${v.id}" class="td123 statusTd">
                        ${my:showcont('KlSellerShop','status',v.status,0 )} </td> </c:if> -
                      -->
                      <!--
                        <c:set var="tt" value="ADDITION"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and tt ne
                        ttdeleted and showmap[tt] ne null}"> <td id="addition_${v.id}" class="td123 additionTd">
                        ${my:showcont('KlSellerShop','addition',v.addition,0 )} </td> </c:if> -
                      -->
                      <!--
                        <c:set var="tt" value="CREATETIMELONG"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and
                        tt ne ttdeleted and showmap[tt] ne null}"> <td id="createtimelong_${v.id}" class="td123
                        createtimelongTd"> ${my:showcont('KlSellerShop','createtimelong',v.createtimelong,0 )} </td>
                        </c:if> -
                      -->
                      <!--
                        <c:set var="tt" value="MODIFYTIMELONG"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and
                        tt ne ttdeleted and showmap[tt] ne null}"> <td id="modifytimelong_${v.id}" class="td123
                        modifytimelongTd"> ${my:showcont('KlSellerShop','modifytimelong',v.modifytimelong,0 )} </td>
                        </c:if> -
                      -->
                      <!--
                        <c:set var="tt" value="CREATEUSER"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and tt
                        ne ttdeleted and showmap[tt] ne null}"> <td id="createuser_${v.id}" class="td123 createuserTd">
                        ${my:showcont('KlSellerShop','createuser',v.createuser,0 )} </td> </c:if> -
                      -->
                      <!--
                        <c:set var="tt" value="MODIFYUSER"></c:set> <c:if test="${tt ne ttid and tt ne ttcreator and tt
                        ne ttdeleted and showmap[tt] ne null}"> <td id="modifyuser_${v.id}" class="td123 modifyuserTd">
                        ${my:showcont('KlSellerShop','modifyuser',v.modifyuser,0 )} </td> </c:if> -
                      -->
                      <c:set var="tt" value="USERID">
                      </c:set>
                      <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                        <td id="userid_${v.id}" class="td123 useridTd">
                          ${my:showcont('KlSellerShop','userid',v.userid,0 )}
                        </td>
                      </c:if>


                      <td id="operate_${v.id}" class="operate111">
                        <!-- Icons-->
                        
                        <a class="denglu111" target="_blank" href="${ctx}/${actionBasePath}/loginshop.do?id=${v.id}" title="登录">登录店铺</a>
                        <c:choose>
                          <c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
                            <!--
                              <a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img
                              src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                            -->

                            <c:choose>
                              <c:when test="${v.status eq 0}">
                                <a 
                                    href="#"
                                    onclick="subajax('${ctx}/kailian/KlSellerShop/updateStatus.do?id=${v.id}&status=2&ajax=ajax');">

                                  通过
                                </a>
                                &nbsp;&nbsp;
                                <a href="#" onclick="reject(${v.id});">
                                  驳回
                                </a>
                                &nbsp;&nbsp;
                                <a href="${ctx}/kailian/KlSellerShop/show.do?id=${v.id}" target="_blank">
                                  查看
                                </a>
                              </c:when>
                               <c:when test="${v.status eq 2}">
                               <a 
                                    href="#"
                                    onclick="subajax('${ctx}/kailian/KlSellerShop/updateStatus.do?id=${v.id}&status=1&ajax=ajax');">

                                  上线
                                </a>
                               </c:when>
                            </c:choose>
                            <a title="产品列表" onclick="parent.addPanel('${ctx}/kailian/KlSellerProduct/list.do?shopId=${v.id}','${v.shopName}的产品列表');">
                              产品列表
                            </a>
                            <!--
                              <a href="#" onclick="if(confirm('您确定要删除这条数据吗？'))
                              window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img
                              src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                            -->
                            <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="编辑">
                             编辑
                            </a>

                            ${my:input('KlSellerShop','list_iframe',v.id,-1,0
                            )}${my:input('KlSellerShop','list_blank',v.id,-1,0 )}
                          </c:when>
                          <c:otherwise>
                            <a class="button" href="#" onclick="parent.didiframe(obj[${vs.index}],'${param.params}');">
                              选取
                            </a>
                          </c:otherwise>
                        </c:choose>

						
						 <c:if test="${v.status le -50}">
						 	 <a class="button" onclick="if(confirm('确定要重新打开这个店铺吗？')) subajax('${ctx}/kailian/KlSellerShop/openshop.do?id=${v.id}&ajax=ajax');" title="开店">
                   			开店
                 		 </a>
						 </c:if>
	
                        <c:if test="${v.status gt 0}">
                          &nbsp;
                          <a class="iframe" title="资金" onclick="parent.addPanel('${ctx}/kailian/KlShoppingShoppingcartproduct/list.do?shopid=${v.id}','${v.shopName}资金管理');">
                            资金
                          </a>
                          &nbsp;
                          <a class="iframe" href="${ctx}/kailian/KlShoppingComplaints/list.do?toUserId=${v.userid}">
                            被投诉
                          </a>
                          &nbsp;
                          <a class="iframe" href="${ctx}/kailian/KlShoppingComplaints/list.do?userid=${v.userid}">
                            投诉
                          </a>
                          &nbsp;
                          <a class="iframe" href="${ctx}/kailian/KlShoppingShoppingcartproduct/list.do?shopid=${v.id}">
                            课程
                          </a>
                          &nbsp;
                          <a 
                              class="iframe"
                              onclick="parent.addPanel('${ctx}/kailian/CmsCommonComment/list.do?targetType=20&targetId2=${v.id}','对${v.shopName}的评论');">

                            评论
                          </a>
                          &nbsp;
                          <a class="iframe" href="${ctx}/kailian/CmsCommonMessage/list.do?touserid=${v.userid}">
                            消息
                          </a>
                          &nbsp;
                          <a class="iframe" href="${ctx}/kailian/CmsCommonPoints/list.do?userid=${v.userid}">
                            积分
                          </a>
 							<a class="iframe" href="${ctx}/kailian/CmsUserInfo/edit.do?id=${v.userid}">
                            用户
                          </a>
                          
                          <a class="button" onclick="if(confirm('确定要关闭这个店铺吗？这个操作比较危险哦')) subajax('${ctx}/kailian/KlSellerShop/closeshop.do?id=${v.id}&ajax=ajax');" title="关店">
                   			关店
                 		 </a>
                          <c:choose>
                            <c:when test="${v.ext8 eq null or v.ext8 eq ''}">
                              <a 
                                  href="#"
                                  onclick="subajax('${ctx}/kailian/KlSellerShop/updateLevel.do?id=${v.id}&ext8=认证&ajax=ajax');">

                                认证
                              </a>
                            </c:when>
                            <c:otherwise>
                              <a 
                                  href="#"
                                  onclick="subajax('${ctx}/kailian/KlSellerShop/updateLevel.do?id=${v.id}&ext8=&ajax=ajax');">

                                取消认证
                              </a>
                            </c:otherwise>
                          </c:choose>
                        </c:if>

                      </td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
              <script>
                function reject(id1) {
                  var reason=prompt("请输入拒绝的理由：");

                  if (reason == null || reason== "")
                  {
                    alert("请输入拒绝原因");
                    return;
                  }

                  var data1 = {'reason':reason};
                  var url1 = "${ctx}/kailian/KlSellerShop/updateStatus.do?id=" + id1 + "&status=-1&ajax=ajax";
                  postdata(url1, data1);

                }
              </script>
              <br/>
              <br/>
              <div class="clear">
              </div>
              <div class="align-left">

                <c:if test="${pg.thisPageNumber gt 1}">
                  <a class="button" href="javascript:submitSearch(1);" title="首页">
                    &laquo; 首页
                  </a>
                  <a class="button" href="javascript:submitSearch(${pg.previousPageNumber});" title="上页">
                    &laquo; 上页
                  </a>
                </c:if>

                <c:forEach var="p" items="${pg.linkPageNumbers}">
                  <c:choose>
                    <c:when test="${p eq pg.thisPageNumber}">
                      &nbsp;&nbsp;${p}&nbsp;&nbsp;
                    </c:when>
                    <c:otherwise>
                      <a class="button" href="javascript:submitSearch(${p});" class="number" title="${p}">
                        ${p}
                      </a>
                    </c:otherwise>
                  </c:choose>

                </c:forEach>

                <c:if test="${pg.thisPageNumber lt pg.lastPageNumber}">
                  <a class="button" href="javascript:submitSearch(${pg.nextPageNumber});" title="下页">
                    &raquo; 下页
                  </a>
                  <a class="button" href="javascript:submitSearch(${pg.lastPageNumber});" title="尾页">
                    &raquo; 尾页
                  </a>
                </c:if>
              </div>
              <!-- End .pagination -->
              <div class="clear">
              </div>
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
            <h3>
              搜索
            </h3>
          </div>
          <!-- End .content-box-header -->
          <div class="content-box-content">
            <div class="tab-content default-tab">
              <form 
                  id="queryForm"
                  name="queryForm"
                  action="${ctx}/${actionBasePath}/list.do"
                  method="post"
                  style="display: inline;">

                <a href="#" class="button" onclick="$('#queryForm').submit();">
                  查询
                </a>
                &nbsp;&nbsp;
                <a href="#" class="button" onclick="$('#queryForm').reset();">
                  重置
                </a>
                <br/>

                <input type="hidden" id="pageNumber" name="pageNumber" value="${param.pageNumber}"/>
                <input type="hidden" id="pageSize" name="pageSize" value="10" />
                <input type="hidden" id="sort" name="sort" value="${param.sort}" />
                <input type="hidden" id="fromiframe" name="fromiframe" value="${param.fromiframe}" />
                <input type="hidden" id="params" name="params" value="${param.params}" />
                <fieldset>

                  <p id="id_formp">
                    <label>
                      <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID)%>
                    </label>

                    ${my:input('KlSellerShop','id',param.id,0,-1 )}
                  </p>
                  <!--
                    <p id="userType_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_USER_TYPE)%></label>
                    ${my:input('KlSellerShop','userType',param.userType,0,-1 )} </p>
                  -->
                  <p id="shopName_formp">
                    <label>
                      <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SHOP_NAME)%>
                    </label>

                    ${my:input('KlSellerShop','shopName',param.shopName,0,-1 )}
                  </p>

                  <p id="phoneno_formp">
                    <label>
                      <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PHONENO)%>
                    </label>

                    ${my:input('KlSellerShop','phoneno',param.phoneno,0,-1 )}
                  </p>

                  <p id="email_formp">
                    <label>
                      <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_EMAIL)%>
                    </label>

                    ${my:input('KlSellerShop','email',param.email,0,-1 )}
                    <input type="hidden" id="status" name="status" value="${param.status}" />
                  </p>

                  <!--
                    <p id="logo_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_LOGO)%></label>
                    ${my:input('KlSellerShop','logo',param.logo,0,-1 )} </p> <p id="shoptype_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SHOPTYPE)%></label>
                    ${my:input('KlSellerShop','shoptype',param.shoptype,0,-1 )} </p> <p id="provinceid_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROVINCEID)%></label>
                    ${my:input('KlSellerShop','provinceid',param.provinceid,0,-1 )} </p> <p id="province_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROVINCE)%></label>
                    ${my:input('KlSellerShop','province',param.province,0,-1 )} </p> <p id="cityid_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CITYID)%></label>
                    ${my:input('KlSellerShop','cityid',param.cityid,0,-1 )} </p> <p id="city_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CITY)%></label>
                    ${my:input('KlSellerShop','city',param.city,0,-1 )} </p> <p id="quid_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_QUID)%></label>
                    ${my:input('KlSellerShop','quid',param.quid,0,-1 )} </p> <p id="qu_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_QU)%></label>
                    ${my:input('KlSellerShop','qu',param.qu,0,-1 )} </p> <p id="realName_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_REAL_NAME)%></label>
                    ${my:input('KlSellerShop','realName',param.realName,0,-1 )} </p> <p id="idNumber_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_NUMBER)%></label>
                    ${my:input('KlSellerShop','idNumber',param.idNumber,0,-1 )} </p> <p id="idPicture_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_PICTURE)%></label>
                    ${my:input('KlSellerShop','idPicture',param.idPicture,0,-1 )} </p> <p id="idPcitureBack_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_PCITURE_BACK)%></label>
                    ${my:input('KlSellerShop','idPcitureBack',param.idPcitureBack,0,-1 )} </p> <p id="birthYear_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_YEAR)%></label>
                    ${my:input('KlSellerShop','birthYear',param.birthYear,0,-1 )} </p> <p id="birthMonth_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_MONTH)%></label>
                    ${my:input('KlSellerShop','birthMonth',param.birthMonth,0,-1 )} </p> <p id="birthDate_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_DATE)%></label>
                    ${my:input('KlSellerShop','birthDate',param.birthDate,0,-1 )} </p> <p id="sex_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SEX)%></label>
                    ${my:input('KlSellerShop','sex',param.sex,0,-1 )} </p> <p id="phoneno_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PHONENO)%></label>
                    ${my:input('KlSellerShop','phoneno',param.phoneno,0,-1 )} </p> <p id="email_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_EMAIL)%></label>
                    ${my:input('KlSellerShop','email',param.email,0,-1 )} </p> <p id="address_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ADDRESS)%></label>
                    ${my:input('KlSellerShop','address',param.address,0,-1 )} </p> <p id="postcode_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POSTCODE)%></label>
                    ${my:input('KlSellerShop','postcode',param.postcode,0,-1 )} </p> <p id="profile_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROFILE)%></label>
                    ${my:input('KlSellerShop','profile',param.profile,0,-1 )} </p> <p id="bankname_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKNAME)%></label>
                    ${my:input('KlSellerShop','bankname',param.bankname,0,-1 )} </p> <p id="bankopenname_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKOPENNAME)%></label>
                    ${my:input('KlSellerShop','bankopenname',param.bankopenname,0,-1 )} </p> <p id="banknumber_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKNUMBER)%></label>
                    ${my:input('KlSellerShop','banknumber',param.banknumber,0,-1 )} </p> <p id="templateId_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_TEMPLATE_ID)%></label>
                    ${my:input('KlSellerShop','templateId',param.templateId,0,-1 )} </p> <p id="template_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_TEMPLATE)%></label>
                    ${my:input('KlSellerShop','template',param.template,0,-1 )} </p> <p id="companyName_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_COMPANY_NAME)%></label>
                    ${my:input('KlSellerShop','companyName',param.companyName,0,-1 )} </p> <p
                    id="passportPicture_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PASSPORT_PICTURE)%></label>
                    ${my:input('KlSellerShop','passportPicture',param.passportPicture,0,-1 )} </p> <p
                    id="orgNumber_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ORG_NUMBER)%></label>
                    ${my:input('KlSellerShop','orgNumber',param.orgNumber,0,-1 )} </p> <p id="createDate_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATE_DATE)%></label>
                    ${my:input('KlSellerShop','createDate',param.createDate,0,-1 )} </p> <p
                    id="pointDescriptionMatch_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_DESCRIPTION_MATCH)%></label>
                    ${my:input('KlSellerShop','pointDescriptionMatch',param.pointDescriptionMatch,0,-1 )} </p> <p
                    id="pointPerfational_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_PERFATIONAL)%></label>
                    ${my:input('KlSellerShop','pointPerfational',param.pointPerfational,0,-1 )} </p> <p
                    id="pointServiceAttitude_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_SERVICE_ATTITUDE)%></label>
                    ${my:input('KlSellerShop','pointServiceAttitude',param.pointServiceAttitude,0,-1 )} </p> <p
                    id="pointAppointmentSuccessful_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_APPOINTMENT_SUCCESSFUL)%></label>
                    ${my:input('KlSellerShop','pointAppointmentSuccessful',param.pointAppointmentSuccessful,0,-1 )} </p>
                    <p id="flowerPercent_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_FLOWER_PERCENT)%></label>
                    ${my:input('KlSellerShop','flowerPercent',param.flowerPercent,0,-1 )} </p> <p
                    id="servedClients_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SERVED_CLIENTS)%></label>
                    ${my:input('KlSellerShop','servedClients',param.servedClients,0,-1 )} </p> <p id="savedCount_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SAVED_COUNT)%></label>
                    ${my:input('KlSellerShop','savedCount',param.savedCount,0,-1 )} </p> <p id="status_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_STATUS)%></label>
                    ${my:input('KlSellerShop','status',param.status,0,-1 )} </p>
                  -->

                  <!--
                    <p id="addition_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ADDITION)%></label>
                    ${my:input('KlSellerShop','addition',param.addition,0,-1 )} </p>
                  -->

                  <!--
                    <p id="createtimelong_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATETIMELONG)%></label>
                    ${my:input('KlSellerShop','createtimelong',param.createtimelong,0,-1 )} </p>
                  -->

                  <!--
                    <p id="modifytimelong_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_MODIFYTIMELONG)%></label>
                    ${my:input('KlSellerShop','modifytimelong',param.modifytimelong,0,-1 )} </p>
                  -->

                  <!--
                    <p id="createuser_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATEUSER)%></label>
                    ${my:input('KlSellerShop','createuser',param.createuser,0,-1 )} </p>
                  -->

                  <!--
                    <p id="modifyuser_formp">
                    <label><%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_MODIFYUSER)%></label>
                    ${my:input('KlSellerShop','modifyuser',param.modifyuser,0,-1 )} </p>
                  -->

                  <p id="userid_formp">
                    <label>
                      <%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_USERID)%>
                    </label>

                    ${my:input('KlSellerShop','userid',param.userid,0,-1 )}
                  </p>
                </fieldset>
                <br/>
                <a href="#" class="button" onclick="$('#queryForm').submit();">
                  查询
                </a>
                &nbsp;&nbsp;
                <a href="#" class="button" onclick="$('#queryForm').reset();">
                  重置
                </a>
              </form>
            </div>
            <!-- End #tab3 -->
          </div>
          <!-- End .content-box-content -->
        </div>
        <!-- End .content-box -->
        <div class="clear">
        </div>
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
	var iiids = [];
	<c:forEach var="v" varStatus="vs" items="${pg.result}">
		iiids[iiids.length] = ${v.id};
	</c:forEach>
		var items = "";
		for (var i = 0; i < iiids.length; i ++) {
			if($("#checkbox_" + iiids[i]).attr("checked")=="checked") {
				if (items == "")
					items += "" + iiids[i];
				else 
					items += "," + iiids[i];
				
			}
		}
		alert("${ctx}/${actionBasePath}/delete.do?items=" + items);
		
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
