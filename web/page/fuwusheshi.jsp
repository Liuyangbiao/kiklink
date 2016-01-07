<%@ page contentType="text/html;charset=UTF-8" %>
 <div class="basicList">
           <div class="name" style="float:left;">服务设施</div>
           <div style="float:left;padding-left:50px;">通过点击图标，可以在免费、付费、没有三种状态之间切换</div>
           <div style="clear:both;"></div>
           <div>
           <ul>
           	<c:set value="${'私人储物柜,私人储物柜锁,车位,WIFI,锻炼服饰,补剂,体测,淋浴,桑拿,拖鞋,浴巾,糖果茶点,饮用水,功能饮料,课后辅导,一对一指导,一对多指导'}" var="sss" />
           <c:set value="${fn:split(sss, ',')}" var="ss1" />
           <c:forEach var="ss" items="${ss1}" varStatus="vs">
           		<li><div id="money-${vs.index+1}" class="img"><img src="${ctx}/image/lico8.png" /></div>
           			<a href="javascript:sheshid(${vs.index+1});"><div><img src="${ctx}/image/limg48_${vs.index + 1}.png" /></div>${ss}</a>
                 	<h5><input id="sheshi-${vs.index+1}" name="fuwusheshi" type="checkbox" value="${ss}" /><span id="ssspan-${vs.index+1}">免费</span></h5>
             	</li>
           </c:forEach>
           </ul>
           </div>
           <span class="clear_f"></span>
           
      </div>
      <script>
      	$('.basicList ul li .img').hide();
      	function sheshid(tid) {
      		var vl = $('#sheshi-' + tid).val();
      		var ck = $('#sheshi-' + tid).attr('checked');
      		var kk = vl.split("-");

      		if (ck == true || ck == "checked") {
      			
      			if (kk.length == 2) {
      				//付费  改为没有
      			
      				$('#sheshi-' + tid).val(kk[0]);
      				$('#sheshi-' + tid).attr('checked', false);
      				$('#money-' + tid).hide();
      				$('#ssspan-' + tid).html('免费');
      			}
      			else if (kk.length == 1) {
      				//免费 改为付费
      				$('#sheshi-' + tid).val(kk[0] + "-m");
      				$('#sheshi-' + tid).attr('checked', 'checked');
      				$('#money-' + tid).show();
      				$('#ssspan-' + tid).html('收费');
      			}
      			
      		}
      		else {
      			
      				//没有  改为免费
      			$('#sheshi-' + tid).val(kk[0]);
      			$('#sheshi-' + tid).attr('checked', 'checked');
      			$('#money-' + tid).hide();
      			$('#ssspan-' + tid).html('免费');
      		}
      	}
      	
      	
      	$(function(){
      		var has = [];
      		<c:forEach var="ss" items="${ss1}" varStatus="vs">
      			has['${ss}'] = '${vs.index+1}';
      		</c:forEach>
      	
      		var ads = "${map.shop.addition}";
      		var ss = ads.split(",");
      		for (var i = 0; i < ss.length; i ++) {
      			var s = ss[i];
      			var kk = s.split('-');
      			var tid = has[kk[0]];
      			if (kk.length == 1) {
      				$('#sheshi-' + tid).val(kk[0]);
      				$('#sheshi-' + tid).attr('checked', 'checked');
      				$('#money-' + tid).hide();
      				$('#ssspan-' + tid).html('免费');
      			}
      			else {
      				$('#sheshi-' + tid).val(kk[0] + "-m");
      				$('#sheshi-' + tid).attr('checked', 'checked');
      				$('#money-' + tid).show();
      				$('#ssspan-' + tid).html('收费');
      			}
      		}
      	})
      </script>