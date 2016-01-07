	//提交ajax
function subajax(url1) {
	$.ajax({
            type: 'GET',
            url: url1,
            dataType: 'json',
            success: function (data) {
				var re = data['re'];
				var word = data['word'];
				if (re > 0) {
					if (confirm(word))
						submitSearch($('#pageNumber').val()) ;
				}	
				else {
					alert(word);
				}
            }
        });
    
}

function seturl(pre, width, height, src) {
	var year = "2011";
	var nprei = src.indexOf(year);
	if (nprei < 0) return src;
	var nimg = src.substring(nprei);
	var mon = src.substring(4,6);
	if (mon.indexOf("0") == 0) mon = mon.substring(1,2);
	var day = src.substring(6,8);
	if (day.indexOf("0") == 0) day = day.substring(1,2);
	var npre = src.substring(0, nprei);
	//return "/" + year + "/" + mon + "/" + day + "/" + pre + "_" + width + "_" + height + "_" +  nimg; 
	return src;
}




