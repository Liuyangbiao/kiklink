	var status = 1;
	//1 隐藏  2 向左 3 向右颤抖 4 就位 5 向右颤抖  6 向左消失 
	var pos = 0;
	var going = false;
	var next = null;

	function gostInit(id) {
		if (going == true) {
			next = id;
			return;
		}
		
		var fromtop = getScrollTop();
	
		var o = document.getElementById('gost');
		var o1 = document.getElementById('gost1');
		var screenwidth = "";
		var sclt = document.documentElement.scrollTop;
		var scll = document.body.scrollLeft ;
		var w = document.body.clientWidth ;
		var h = document.documentElement.clientHeight;
		var h1 = document.body.clientHeight;
	
	
		
		var ow = parseInt(w) - 300;
		var oh = parseInt(h) - 100;
		var oh1 = parseInt(h1) - 100;
		oh = oh1;
		var ot = parseInt(sclt) + 50;
		var ol = parseInt(scll) + 150  + w;
		
		pos = parseInt(scll) + 150;


		o.style.width = ow + "px";
		o.style.height = oh + "px";
		o.style.left = ol + "px";
		o.style.top = (fromtop + ot) + "px";

		o1.innerHTML = document.getElementById(id).innerHTML;

		status = 1;
		gostGo();
	}

	function gostLeave() {
		status = 4;
		gostGo();
	}

	function gostGo() {
		
		var o = document.getElementById('gost');
		o.style.display = "block";
		var left = parseInt(o.style.left);
		var change = -10;
		going = true;
		//1
		if (status == 1) {
			status ++;
			
		}
		//2
		if (status == 2) { 
			if (left <= pos - 200) {
				status = 3;
			}
		}
		//3
		if (status == 3) {
			if (left >= pos) {
				o.style.left = pos + "px";
				status = 4;
				going = false;
				return;
			}
			change = 10;
		}
		//4
		if (status == 4) {
			status = 5;
			chanrge = 10;
		}
		//5
		if (status == 5) {
			change = 10;
			if (left >= pos + 200) {
				status = 6;
			}
		}
		//6 
		if (status == 6) {
			if (left <= pos - 100 - 2000) {
				o.style.left = "0px";
				o.style.display = "none";
				going = false;
				
				
				if (next != null) {
					var t1 = next;
					next = null;
					setTimeout("gostInit('" + t1 + "')", 50);
				}
				
				return;
			}
		}


		//var ip = document.getElementById('ip');
		//ip.value = change;
		
		change = change * 10;
		var t = left + change;
		o.style.left = t + "px";
		setTimeout("gostGo()", 5);

	}
	
//获取滚动条滚动的高度	
function getScrollTop()
{
    var scrollTop=0;
    if(document.documentElement&&document.documentElement.scrollTop)
    {
        scrollTop=document.documentElement.scrollTop;
    }
    else if(document.body)
    {
        scrollTop=document.body.scrollTop;
    }
    return scrollTop;
}
	
