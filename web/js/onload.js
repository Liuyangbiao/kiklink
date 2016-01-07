
function getRightContent(url,termId,articleId,divId){
	
	if (divId != "topAd" && divId != 'rightAd')
	{
	
	$.ajax({
		   type: "POST",
		   url: url,
		   data: 'param='+articleId+'&termId='+termId,
		   async:true,
		   success: function(s) {
			   document.getElementById(divId).innerHTML=s;
			   
	  		}
		}); 
	
	}

	if (divId == "topAd")
	{
		
		var tmp111 = "<iframe width='600' height='70' border='0px' style='border:0px;' scrolling='no' src='http://www.hiesquire.com/Ad/fashion/upAd2.html'></iframe>";
		 document.getElementById(divId).innerHTML=tmp111;
	}
	else if (divId == 'rightAd')
	{
		var tmp111 = "<iframe width='300' height='580' border='0px' style='border:0px;' scrolling='no' src='http://www.hiesquire.com/Ad/fashion/rightAd2.html'></iframe>";
		 document.getElementById(divId).innerHTML=tmp111;
	}



	var tturl = window.location.href;
	if (tturl.indexOf("beauty") > 0) {
		tturl = tturl.replace("_1", "_term");
		window.location.href = tturl;
	}
}
