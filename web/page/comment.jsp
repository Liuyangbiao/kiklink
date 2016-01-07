<%@ page contentType="text/html;charset=UTF-8" %>
<div class="orderLayer orderLayer3">
<div class="bg">
     <h5>评分<a href="javascript:;" class="close"></a></h5>
     <div class="list">
     	<input id="pointDescriptionMatch" name="pointDescriptionMatch" type="hidden" value="-1" />
     	<input id="pointPerfational" name="pointPerfational" type="hidden" value="-1" />
     	<input id="pointServiceAttitude" name="pointServiceAttitude" type="hidden" value="-1" />
     	<input id="pointAppointmentSuccessful" name="pointAppointmentSuccessful" type="hidden" value="-1" />
     	
        <ul>
          <li id="xingli0" class="xingli">
              <em>服务与描述相符度:</em>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <span id="fenxingli0"><b class="red"></b> - 服务与描述相符度</span>
          </li>
          <li id="xingli1" class="xingli"><em>专业程度：</em>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <span id="fenxingli1"><b class="red"></b> - 专业程度</span>
          </li>
          <li id="xingli2" class="xingli"><em>服务态度：</em>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <span id="fenxingli2"><b class="red"></b> - 服务态度</span>
          </li>
          <li id="xingli3" class="xingli"><em>预约成功率：</em>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <img src="${ctx}/image/xing2.png"/>
              <span id="fenxingli3"><b class="red"></b> - 预约成功率</span>
          </li>

          <li class="li_01"><em>服务评价：</em>
              <textarea name="commentcontent" id="commentcontent" cols="" rows=""></textarea>
          </li>
          <li>
             <input type="button" class="btn1" value="提 交" onclick="commentit();" />
             <input type="button" class="btn1 btn2" value="删除评论" />
          </li>
        </ul>
     </div>
</div>
</div>


<script>
	$('.xingli').each(function(i){
		$(this).find('img').each(function(ii){
			$(this).css({cursor:'pointer'});
			$(this).click(
				function() {
					var pid = $(this).parent().attr('id');
					var idx = $('#' + pid + ' img').index(this);
					//alert(ii);
					for (var x = 0; x < 5; x ++) {
						var xing = "xing2.png";
						if (x <= ii)
							xing = "xing1.png";
						$('#' + pid + ' img').eq(x).attr('src',"${ctx}/image/" + xing);
					}
					
					var fen = (ii + 1) * 2;
					
					if (i == 0)
						$('#pointDescriptionMatch').val(fen);
					else if (i == 1)
						$('#pointPerfational').val(fen);
					else if (i == 2)
						$('#pointServiceAttitude').val(fen);
					else if (i == 3)
						$('#pointAppointmentSuccessful').val(fen);
					
					var cont = "较差";
					if (fen >= 4 && fen <8)
						cont = "一般";
					else if (fen >= 8 && fen < 10)
						cont = "较好";
					else if (fen == 10)
						cont = "完美";
					
					cont = "<b class='red'>" + fen + "分</b>" + cont;
					$("#fen" + pid).html(cont);
				}	
			)		
		})
	});
</script>