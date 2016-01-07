<%@ page contentType="text/html;charset=UTF-8" %>
<div class="orderLayer trainLayer2">
<div class="bg">
      <h5><a href="javascript:;" class="close"></a></h5>
      <div class="form">
          <span>用户搜索</span>
          <input type="text" class="input1" value="" id="username" />
          <input type="button" class="btn1" value="" onclick="gotopage(1);" />
      </div>
      <div class="table" id="userstb">
      </div>
      <div class="btn"><a href="javascript:gotopage(1);">第一页</a>|<a href="javascript:gotopage(pagenowx-1);">上一页</a>|<a href="javascript:gotopage(pagenowx+1);">下一页</a>|<a href="javascript:gotopage(pagecountx);">最后一页</a>&nbsp;<span id="pageinfo"></span></div>
</div>
</div>
<script>
	var pagecountx = 0;
	var pagenowx = 1;

	function gotopage(pageno) {
		var ext1 = $('#username').val();
		$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/KlShoppingShoppingcartproduct/listAjax.do?ext1=' + ext1 + '&pageSize=5&pageNumber=' + pageno + '&shopid=${map.shop.id}&orderStatus=20&sort=id desc',
            dataType: 'json',
            success: function (data) {
            	
            	
				var t = "";
				var cont = "<table width='100%' border=0 cellpadding=0 cellspacing=0><tr><td>&nbsp;</td><td><div class='name_1'>用户名</td><td>产品名</td><td>下单时间</td></tr>";
                for (var i in data['rows']) {
                	var ndate = new Date(data['rows'][i]['createtimelong']);
            		var t = ndate.getFullYear() + "-" + (ndate.getMonth() + 1) + "-" + (ndate.getDate() + 1);
            		var pname = data['rows'][i]['productName'];
            		if (pname.length > 10	)
            			pname = pname.substr(0,10	);
            		
                	cont += "<tr><td><input name='xxxyyy' onclick=\"$('#toUsername').val('" + data['rows'][i]['ext1'] + "');$('#toUserId').val('" + data['rows'][i]['userid'] + "');$('#toProdId').val('" + data['rows'][i]['id'] + "');\" class='checkbox' type='radio'/></td><td><div class='name_1'>" 
                		+ data['rows'][i]['ext1'] +
                	"</div></td><td>" + pname + "</td><td>" + t + "</td></tr>";
                }
                cont += "</table>";
				
				var tp = data['page']['totalCount'];
				tp = (tp - tp % 5)/5 + (tp%5>0?1:0);
				$('#pageinfo').html(data['page']['thisPageNumber'] + "/" + tp);
                $('#userstb').html(cont);
                
                pagecountx = data['page']['lastPageNumber'];
                pagenowx = data['page']['thisPageNumber'];
				
            }
        })
	}
</script>