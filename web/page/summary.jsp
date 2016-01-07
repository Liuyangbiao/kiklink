<%@ page contentType="text/html;charset=UTF-8" %>
<!---->
<div class="orderLayer orderLayer2">
<div class="bg">
     <h5>查看<a href="javascript:;" class="close"></a></h5>
     <dl>
       <dt><a href=""><img src="${ctx}/image/nimg60.png"/></a></dt>
       <dd>
         <div class="name"><b><a href="">店铺</a></b>&nbsp;&nbsp;&nbsp;<span id='sumtime'></span></div>
         <div id='sumcontent' class="content">
            暂时没有训练总结
         </div>
       </dd>
     </dl>
     <div id='sumimg' class="list">
     <!-- 
         <ul>
           <li><img src="${ctx}/image/nimg142_5.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_6.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_7.jpg"/></li>
         </ul>
         -->
     </div>
     <div class="btnDiv"><a href="${ctx}/kailian/KlShoppingTrainningsummary/mysummary.do">点击查看更多</a></div>
</div>
</div>
<script>
	function getsummary(pid) {
	
		$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/KlShoppingTrainningsummary/mysummary.do?ajax=ajax&shoppingProductId=' + pid,
            dataType: 'json',
            data: {},
            success: function (data) {
				if (data['re'] > 0 && data['page'].result.length > 0) {
					//alert(data['word']);
					var t = data['page'].result[0];
					$('#sumcontent').html(t['summary']);
					var pt = t['addition'];
					//alert(pt	);
					var ndate = new Date(t['createtimelong']);
            		var t = ndate.getFullYear() + "-" + (ndate.getMonth() + 1) + "-" + (ndate.getDate() + 1);
            		$('#sumtime').html(t);
					if (pt != null && pt != '' && pt != 'undefined') 
						$('#sumimg').html("<ul><li><img style='width:100px;height:60px;' src='${ctx}/" + pt + "' /></li></ul>");
				}
				else {
					//alert(data['word']);
					
				}
            }
        });
	}
</script>
<!---->