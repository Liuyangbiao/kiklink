<%@ page contentType="text/html;charset=UTF-8" %>

<script>

function tuijian() {
	if ($('#tuijian').html() == "已推") {
		return;
	}
	$('#tuijian').html("已推");
		ding(50);
		
}
function xihuan() {
	if ($('#xihuan').html() == "已顶") {
		return;
	}
	$('#xihuan').html("已顶");
		ding(20);
		
}
function ding(type1) {
	$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsGroup/ding.do',
            dataType: 'json',
            data: {topicid:'${map.topic.id}',type:type1,ajax:'ajax'},
            success: function (data) {
				alert(data['word']);
            }
        });
}
function joingroup(groupid,okid,okcontent, id) {
	$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsGroup/joinGroup.do',
            dataType: 'json',
            data: {id:groupid,ajax:'ajax'},
            success: function (data) {
				//alert(data['word']);
				if (data['re'] > 0 ) {
					alert(data['word']);
					if (okid != null && okcontent != null)
						$('#' + okid).html(okcontent);
					$("#"+id).attr("att", "true");
				}
				else {
					$("#"+id).attr("att", "false");
					alert(data['word']);
				}
            }
        });
}

function cannelgroup(groupid,okid,okcontent, id) {
	//alert(groupid);
	$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsGroup/cannelGroup.do',
            dataType: 'json',
            data: {id:groupid,ajax:'ajax'},
            success: function (data) {
				//alert(data['word']);
				if (data['re'] > 0) {
					if (okid != null && okcontent != null)
						$('#' + okid).html(okcontent);

					$("#"+id).attr("att", "false");
				}
				else {
					$("#"+id).attr("att", "true");
					alert(data['word']);
				}
            }
        });
}

</script>