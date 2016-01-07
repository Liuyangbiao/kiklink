<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<!DOCTYPE 
    html
    PUBLIC
    "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>
      课程修改${my:config('title后缀','--开练网')}
    </title>
    <meta name="keywords" content="${my:config('关键词','开练网')}" />
    <meta name="description" content="${my:config('metadata','开练网')}" />
    <link rel="shortcut icon" href="${ctx}/favicon.ico" />
    <link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
    <script src="${ctx}/kindeditornew/kindeditor.js">
    </script>
    <script src="${ctx}/kindeditornew/lang/zh_CN.js">
    </script>
    <script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js">
    </script>
    <script language="javascript" type="text/javascript" src="${ctx}/script/js.js">
    </script>
    <script language="javascript" type="text/javascript" src="${ctx}/script/fun.js">
    </script>
    <script language="javascript" type="text/javascript" src="${ctx}/script/form.js">
    </script>
    <script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js">
    </script>
    <script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js">
    </script>

    <!-- Add jQuery library -->

    <!-- Add mousewheel plugin (this is optional) -->
    <script type="text/javascript" src="${ctx}/fancy/lib/jquery.mousewheel-3.0.6.pack.js">
    </script>

    <!-- Add fancyBox main JS and CSS files -->
    <script type="text/javascript" src="${ctx}/fancy/source/jquery.fancybox.js?v=2.1.5">
    </script>
    <link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/jquery.fancybox.css?v=2.1.5" media="screen" />

    <!-- Add Button helper (this is optional) -->
    <link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
    <script type="text/javascript" src="../source/helpers/jquery.fancybox-buttons.js?v=1.0.5">
    </script>

    <!-- Add Thumbnail helper (this is optional) -->
    <link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
    <script type="text/javascript" src="../source/helpers/jquery.fancybox-thumbs.js?v=1.0.7">
    </script>

    <!-- Add Media helper (this is optional) -->
    <script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-media.js?v=1.0.6">
    </script>

    <script type="text/javascript">
      function dood() {
        alert(22);
      }

      var date = new Date(new Date().valueOf() + 1*24*60*60*1000);
      var tmp = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + (date.getDate());

      $(document).ready(function() {





        $("#fancybox-manual-b").click(function() {
          $.fancybox.open({
            href : '${ctx}/page/map.jsp',
            type : 'iframe',
            padding : 5
            });
            });

            $("#photo_button1").click(function() {
              $.fancybox.open({
                href : '${ctx}/kailian/KlSellerProduct/focus.do?iframe=iframe&pid=${map.class.id}',
                type : 'iframe',
                padding : 5
                });
                });

                //piliangtime
                $("#piliangtime").click(function() {
                  $.fancybox.open({
                    href : '${ctx}/kailian/KlShoppingPiliangtime/piliangs.do?preproductid=${map.class.id}',
                    type : 'iframe',
                    padding : 5
                    });
                    });
                    });


                    //onclick="window.open('${ctx}/kailian/KlSellerProduct/focus.do?iframe=iframe&pid=${map.class.id}','_blank');"

                    function useaddress(address, x, y	) {
                      //$('#ext1').val(address);
                      $('#ext2').val(x + "," + y);

                    }
                  </script>

                  <!--
                    [if lte IE 6]><script src="script/png.js" type="text/javascript"></script> <script
                    type="text/javascript"> DD_belatedPNG.fix('div, ul, img, li, input , a'); </script> <![endif]-
                  -->

                  <style type="text/css">
                    #dl_photos dd img { width:90px; height:60px; }
                  </style>

                </head>

                <body>
                  <div class="selectLayer">
                    <ul>
                    </ul>
                  </div>
                  <%@ include file="/page/kailianheader.jsp" %>

                  <div class="h25">
                  </div>
                  <div class="w993">
                    <!--wal-->
                    <%@ include file="/page/centerleft.jsp" %>

                    <div class="fr w791">
                      <div class="memberTitle">
                        <h1>
                          课程修改
                        </h1>
                      </div>
                      <div class="pageBox">
                        <!--pageBox-->
                        <div class="coursePublish2 CourseAlter">
                          <div class="form">
                            <form id="form1" action="${ctx}/kailian/KlSellerProduct/mod.do" method="post">

                              <input id="id" name="id" value="${param.id}" type="hidden" />
                              <input id="photos" name="photos" type="hidden" value="" />
                              <input id="status" name="status" type="hidden" value="${map.class.status}" />
                              <input id="preview" name="preview" type="hidden" value="-1" />

                              <input id="newphotos" name="newphotos" type="hidden" value="" />
                              <input id="delphotos" name="delphotos" type="hidden" value="" />

                              <ul>
                                <li>
                                <em>
                                  课程名称
                                </em>
                                <div class="input1">
                                  <input id="name" name="name" value="${map.class.name}${param.name}" type="text"/>
                                </div>
                              </li>
                              <li>
                              <em>
                                副标题
                              </em>
                              <div class="input1">
                                <input 
                                    id="subname"
                                    name="subname"
                                    value="${map.class.subname}${param.subname}"
                                    type="text"/>
                              </div>
                            </li>
                            <li>
                            <em>
                              课程价格
                            </em>
                            <div class="input1">
                              <input 
                                  id="price"
                                  name="price"
                                  class="easyui-numberbox"
                                  value="${map.class.price}${param.price}"
                                  type="text"/>
                            </div>
                          </li>
                          <li>
                          <em>
                            单节课时长
                          </em>
                          <div class="input1">
                            <input 
                                id="ext8"
                                 class=""
                                name="ext8"
                                value="${map.class.ext8}${param.ext8}"
                                type="text"/>分钟
                            
                          </div>
                        </li>
                        <li>
                        <em>
                          封面图片
                        </em>
                        <div class="input1 input2">
                          <input id="photo" name="photo" value="${map.class.photo}${param.photo}" type="input"/>
                        </div>
                        <a id="photo_button" class="map">
                          选择图片
                        </a>
                        &nbsp;尺寸540*360
                      </li>

                      <li>
                      <em>
                        焦点图
                      </em>
                      <input id="photo_button1" type="button" class="btn1" value="点击管理" style="cursor:pointer;"  />
                      <span id="jiaodiantu">

                      </span>

                    </li>

                    <li>
                    <em>
                      分类
                    </em>
                    <!--
                      ${my:input('KlSellerProduct','categoryid',map.class.categoryid,0,0 )}
                    -->
                    <select id="categoryid" name="categoryid">
                      <option value="10"  >
                        球类
                      </option>
                      <option value="20" >
                        健身瑜伽
                      </option>
                      <option value="30"  >
                        运动恢复
                      </option>
                      <option value="40"  >
                        水上冰上
                      </option>
                      <option value="50"  >
                        极限户外
                      </option>
                      <option value="60"  >
                        舞蹈
                      </option>
                      <option value="70"  >
                        射击搏击格斗
                      </option>
                    </select>
                  </li>
                  <li>
                  <em>
                    权重
                  </em>
                  <div class="input1 input3">
                    <input 
                        type="text"
                        placeholder="课程权重，数字越大越靠前"
                        value="${map.class.extInt3}"
                        name="extInt3"
                        id="extInt3"
                        class="easyui-numberbox"
                    />
                  </div>
                  <span class="tips">
                    数字越大越靠前
                  </span>

                </li>
                <li>
                <em>
                  销售截止日期
                </em>
                <div class="input1">
                  <input 
                      id="validDays"
                      name="validDays1"
                      value="${map.class.validDays}${param.validDays}"
                      onclick="WdatePicker({minDate:tmp,dateFmt:'yyyy-MM-dd'});"
                      type="text"/>
                </div>
                <div class="tips">
                </div>
              </li>
              <li>
              <em>
                预约
              </em>
              <select name="extInt5" id="extInt5">
                <option value="1">
                  提前24小时预约
                </option>
                <option value="3">
                  提前3天预约
                </option>
                <option value="7">
                  提前7天预约
                </option>
              </select>
              &nbsp;
              
              <select name="returnClassCount" id="returnClassCount">
                <option value="1">
                  提前24小时取消预约
                </option>
                <option value="3">
                  提前3天取消预约
                </option>
                <option value="7">
                  提前7天取消预约
                </option>
              </select>
              &nbsp;
              <a id="piliangtime" style="cursor:pointer;">
                设置课程预约时间
              </a>
              
              <input type="hidden" id="noneedyuyue" name="noneedyuyue" value="${map.class.returnClassCount}" />
              <input 
                  id="noneedyuyuex"
                  name="noneedyuyuex"
                  type="radio"
                  <c:if
                  test="${map.class.returnClassCount gt 0}">checked=checked</c:if>
                  value="1" onclick="noyuyue(1);"
              />需要预约
				 
			<input 
                  id="noneedyuyuex"
                  name="noneedyuyuex"
                  type="radio"
                  <c:if
                  test="${map.class.returnClassCount lt 0}">checked=checked</c:if>
                  value="-1" onclick="noyuyue(-1);"
              />不用预约
              
              <input 
                  id="noneedyuyuex"
                  name="noneedyuyuex"
                  type="radio"
                  <c:if
                  test="${map.class.returnClassCount lt 0}">checked=checked</c:if>
                  value="-2" onclick="noyuyue(-2);"
              />电话预约
			 
              
            </li>
            <li>
            <em>
              教学方式
            </em>
            <select name="teachType" id="teachType">
              <option value="1">
                一对一
              </option>
              <option value="2">
                多对一
              </option>
              <option value="3">
                一对多
              </option>
            </select>

          </li>



          <li>
          <em>
            地域
          </em>
          <div id="provinceid" style="float:left;">
            <select id="provinceid" name="provinceid" onchange="getcities($(this).val());">
              <c:forEach var="p" items="${map.provinces}">
                <option class="option_pro" value="${p.id}">
                  ${p.name}
                </option>
              </c:forEach>
            </select>
          </div>
          <div id="citydiv" style="float:left;">
            <select id="cityid" name="cityid" onchange="getqus($(this).val());">
              <option value="${param.cityid}">
                ${map.user.city}
              </option>
            </select>
          </div>
          <div id="qudiv" style="float:left;">
            <select id="quid" name="quid">
              <option value="${map.user.quid}">
                ${map.user.qu}
              </option>
            </select>
          </div>

        </li>
        <li>
        <em>
          详细地址
        </em>
        <input type="hidden" id="ext2" name="ext2" value="${map.class.ext2}${param.ext2}" />
        <div class="input1 input2">
          <input id="ext1" name="ext1" type="input" value="${map.class.ext1}${param.ext1}" />
        </div>
        <a id="fancybox-manual-b" class="map">
          选择地图
        </a>
      </li>
      <li>
      <em>
        是否提供上门服务
      </em>
      <select name="gotoHome" id="gotoHome">
        <option value="0">
          否
        </option>
        <option value="1">
          是
        </option>
      </select>

    </li>
    <li>
    <em>
      场地费用
    </em>
    <select name="placePriceInclued" id="placePriceInclued">
      <option 
          value="1"
          <c:if
          test="${map.class.placePriceInclued eq 1 or param.placePriceInclued eq 1}">selected='true'</c:if>>

        课时费含场地费
      </option>
      <option 
          value="0"
          <c:if
          test="${map.class.placePriceInclued eq 0 or param.placePriceInclued eq 0}">selected='true'</c:if>>

        课时费不含场地费
      </option>
    </select>

  </li>
  <li>
  <em>
    场地说明
  </em>
  <div class="input1 input2">
    <input 
        id="placeAddition"
        name="placeAddition"
        value="${map.class.placeAddition}${param.placeAddition}"
        type="input"/>
  </div>
</li>
<li>
<em>
  课程服务
</em>
<span class="coursePublish2LayerA">
  <input 
      id="allConsulting"
      <c:if
      test="${map.class.allConsulting eq 1}">
      checked="checed"</c:if>
      name="allConsulting"
      value="1"
      class="checkbox"
      type="checkbox"/>
  全程咨询
</span>
　
<span class="coursePublish2LayerA">
  <input 
      id="freeConsulting"
      <c:if
      test="${map.class.freeConsulting eq 1}">
      checked="checed"</c:if>
      name="freeConsulting"
      value="1"
      class="checkbox"
      type="checkbox"/>
  免费咨询
</span>
</li>
<script>
  var editors = new Array();

  var lth = editors.length;
  editors[lth] = new Array();
  editors[lth][0]='description';
  KindEditor.ready(function(K) {
    editors[lth][1] = K.create('textarea[name="description"]',
    {allowFileManager : true,uploadJson : '${ctx}/kindeditornew/jsp/upload_json2.jsp',fileManagerJson : '${ctx}/kindeditornew/jsp/file_manager_json.jsp'
    });});

    function doeditors() {
      for (var i = 0; i < editors.length; i ++) {
        var name = editors[i][0];
        var edt = editors[i][1];

        $('#' + name).text(edt.html());
       //alert($('#' + name).text());
      }
      return true;
    }
  </script>
  <li class="li_01" style="height:auto;padding-left:60px;">
  <em>
    详细说明
  </em>
  <br/>
  <div style="border:0px solid red;height:500px;padding-left:0px;margin-left:0px;float:left;">
  <textarea id="description"
      name="description"
      style="border:0px solid red;height:500px;padding-left:0px;margin-left:0px;float:left;"
      cols=""
      rows="">

    ${map.class.description}${param.description}
  </textarea>
  </div>
</li>
<!--
  <li class="li_01"><em>详细信息</em> <textarea name="addition" cols=""
  rows="">${map.class.addition}${param.addition}</textarea> </li>
-->
<li>
<em>
  课程教练
</em>
<c:forEach var="c" items="${map.coaches}">
  <c:set var="vvv" value="${c.id}," />
  <input 
      name="coaches"
      value="${c.id}"
      class="checkbox"
      type="checkbox"
      <c:if
      test="${fn:contains(map.class.ext4,vvv )}">
      checked=true</c:if>
  />
  ${c.name}　
</c:forEach>
<!--
  <a href="${ctx}/kailian/KlSellerShop/coaches.do" class="red">添加教练</a>
-->
</li>
<li>
<em>
  课程标签
</em>
<div class="input1 input3">
  <input id="tags" name="tags" value="${map.class.tags}${param.tags}" type="input"/>
</div>
<span class="tips">
  多个标签"|"分开
</span>
</li>
<li>
<!--
  <input type="submit" class="btn2" value="提交"/> <c:choose> <c:when test="${map.class.status eq -10 or map.class.status
  eq -5 or map.class.status eq -3 or map.class.status eq -1}"> <input type="button"
  onclick="doeditors();$('#form1').submit();" class="btn2" value="保存"/> <input type="button"
  onclick="doeditors();$('#preview').val(1);$('#form1').attr('target','_blank');$('#form1').submit();" class="btn2"
  value="预览"/> <input type="button" onclick="doeditors();$('#status').val(0);$('#form1').submit();" class="btn2"
  value="提交并审核"/> </c:when> <c:when test="${map.class.status eq 0}"> </c:when> <c:otherwise> <input type="button"
  onclick="doeditors();$('#form1').submit();" class="btn2" value="保存"/> </c:otherwise> </c:choose>
-->
<input type="button" onclick="doeditors();$('#form1').submit();" class="btn2" value="保存"/>
</li>
</ul>
</form>
</div>
</div>
<!--pageBoxEnd-->
</div>
</div>
<span class="clear_f">
</span>
<!--walEnd-->
</div>
<div class="h20">
</div>

<div class="pageLayer_1 coursePublish2Layer">
  <div class="bgT_1">
  </div>
  <div class="bg">
    <h5>
      <a href="javascript:;" class="close">
      </a>
    </h5>
    <div class="content">

      对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明
    </div>
  </div>
  <div class="bgB">
  </div>
</div>
<!---->
<div class="pageLayer_1 coursePublishLayer">
  <div class="bgT">
  </div>
  <div class="bg">
    <div class="content" style="font-size:14px; text-align:center;">
      <a href="javascript:;">
        游泳
      </a>
      　
      <a href="javascript:;">
        健身
      </a>
      　
      <a href="javascript:;">
        游泳
      </a>
      　
      <a href="javascript:;">
        健身
      </a>
      　
      <a href="javascript:;">
        健身
      </a>
      　
      <a href="javascript:;">
        游泳
      </a>
      　
      <a href="javascript:;">
        健身
      </a>
    </div>
  </div>
  <div class="bgB">
  </div>
</div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
  var host2 = "${ctx}";
  var sel_proid = "${map.class.provinceid}";
  var sel_cityid="${map.class.cityid}";
  var sel_quid="${map.class.quid}";

  var imgs = new Array();
  <c:forEach var="p" items="${map.photos}" >
  imgs[imgs.length] = "${p.resource}";
  </c:forEach>


  $(document).ready(function(){


    $("#provinceid").find("option[value='${map.class.provinceid}']").attr("selected",true);
    //returnClassCount
    
	
    $("#categoryid").find("option[value='${map.class.categoryid}']").attr("selected",true);
    $("#extInt1").find("option[value='${map.class.extInt1}']").attr("selected",true);
    $("#returnClassCount").find("option[value='${map.class.returnClassCount}']").attr("selected",true);
    $("#extInt5").find("option[value='${map.class.extInt5}']").attr("selected",true);

    $("#teachType").find("option[value='${map.class.teachType}']").attr("selected",true);
    $("#gotoHome").find("option[value='${map.class.gotoHome}']").attr("selected",true);
    $("#placePriceInclued").find("option[value='${map.class.placePriceInclued}']").attr("selected",true);

    showphotos();
	getcities(${map.class.provinceid});

	/*
    if ($('#noneedyuyue').val() == '1' || $('#noneedyuyue').val() == '2') {
      $('#returnClassCount').hide();
      $('#piliangtime').hide();
      $('#extInt5').hide();
      //$('#noneedyuyue').val(-1);
    }
    else {
      $('#returnClassCount').show();
      $('#piliangtime').show();
      $('#extInt5').show();
      //$('#noneedyuyue').val(1);
    }
	*/

    //http://localhost:8080/kailian/kailian/CmsCommonPhoto/listAjax.do?ownnerType=20
    focus();
    
    noyuyue(${map.class.returnClassCount});
    });
    
    
    function noyuyue(vl) {
    	$('#noneedyuyue').val(vl);
    	if (vl == -1 || vl == -2) {
      $('#returnClassCount').hide();
      $('#piliangtime').hide();
      $('#extInt5').hide();
      
    }
    else {
 
      $('#returnClassCount').show();
      $('#piliangtime').show();

      $('#extInt5').show();
      //$('#noneedyuyue').val(1);
    }
    }


    function focus() {
      $.ajax({
        type: 'GET',
        url: '${ctx}/kailian/CmsCommonPhoto/listAjax.do?ownnerType=20&ownnerid=${param.id}&pageSize=11111',
        data: {

          },
          success: function (data) {
            //alert(data['rows'].length);
            var cont = "";
            
            for (var i = 0; i < data['rows'].length; i ++) {
            	var iurl = data['rows'][i]['resource'];
            	iis = iurl.split('.');
              cont += "<a class='fancybox-thumbs' data-fancybox-group='thumb' href='${ctx}/" + data['rows'][i]['resource'] + "'>"
              + "<img src='${ctx}/" + iis[0] + '_s.' + iis[1] + "' style='max-width:100px;max-height:50px;' />"
              + "</a>&nbsp;&nbsp;&nbsp;&nbsp;";
            }

            $('#jiaodiantu').html(cont);

            $('#jiaodiantu a').fancybox({
              prevEffect : 'none',
              nextEffect : 'none',

              closeBtn  : true,
              arrows    : true,
              nextClick : true,
              helpers : {
                thumbs : {
                  width  : 50,
                  height : 50
                }
              }
              });
              },
              dataType: 'json'
              });
            }


            function showphotos() {
              var cont = "";
              for (var i = 0; i < imgs.length; i ++ ) {
                cont = cont + "<dd><img src='${ctx}/" + imgs[i] + "' /></dd>";
              }
              $('#dl_photos').html(cont);
              //$('#photos').val(imgs.join());
              //alert(imgs.join());
            }


            KindEditor.ready(function(K) {
              var editor = K.editor({
                allowFileManager : true
                });


                K('#photo_button').click(function() {
                  editor.loadPlugin('image', function() {
                    editor.plugin.imageDialog({
                      showRemote : false,
                      imageUrl : K('#photo').val(),
                      clickFn : function(url, title, width, height, border, align) {
                        K('#photo').val(url);
                        editor.hideDialog();
                      }
                      });
                      });
                      });


                      });
                    </script>
                  </body>
                </html>
