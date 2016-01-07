

//对散列进行最基本的索引  type=0:索引key  type=1:索引值
function indexKeys(src) {
	var re = {};
	for (var k in src) {
		var len = k.length;
		for (var i = 0; i < len; i ++) {
			var tmp = k.substring(0, i + 1);
			var indexkey = tmp;
			var tmpv = re[indexkey];
			if (tmpv == null || tmpv == "undefined") tmpv = [];
			tmpv[tmpv.length] = k;
			re[indexkey] = tmpv;
		}
	}
	return re;
}

//对机场进行索引


function CPos(x, y)
{
    this.x = x;
    this.y = y;
}
//获取控件的位置
function GetObjPos(ATarget)
{
    var target = ATarget;
    var pos = new CPos(target.offsetLeft, target.offsetTop);
    
    var target = target.offsetParent;
    while (target)
    {
        pos.x += target.offsetLeft;
        pos.y += target.offsetTop;
        
        target = target.offsetParent
    }
    
    return pos;
}

var ap = null;
var apindex = null;

//获取机场控件的位置，并画出一个div
$(document).ready(v_ready2);
function v_ready2() {
	ap = autoHash(AIRPORT, "airportCode", "nameAirportCn");
	apindex = indexKeys(ap, 1);


	var p = GetObjPos(document.getElementById("flightFrom"));
	//新增
	
	createNewDiv("flightFrom_tip", parseInt(p.x), parseInt(p.y) + 20, 100, 100);
	
	//事件 38 向上 40 向下
	$("#flightFrom").keyup(
		function(event) {
			var id = ($(this).attr("id"));
			onKeyEvent(id, event);
		}
	);
	$("#flightFrom").blur(
		function() {
			var id = ($(this).attr("id"));
			document.getElementById(id + "_tip").style.display='none';
		}
	);
	$("#flightFrom").click(
		function() {
			var id = ($(this).attr("id"));
			
			showTip("", id);
		}
	);
	
	
	var p = GetObjPos(document.getElementById("flightArrive"));
	createNewDiv("flightArrive_tip", parseInt(p.x), parseInt(p.y) + 20, 100, 100);
	
	//事件 38 向上 40 向下
	$("#flightArrive").keyup(
		function(event) {
			var id = ($(this).attr("id"));
			onKeyEvent(id, event);
		}
	);
	$("#flightArrive").blur(
		function() {
			var id = ($(this).attr("id"));
			document.getElementById(id + "_tip").style.display='none';
		}
	);
	$("#flightArrive").click(
		function() {
			var id = ($(this).attr("id"));
			
			showTip("", id);
		}
	);
}

//当敲击了鼠标
function onKeyEvent(id, event) {
			var size = tips[id + "_size"];
			var index = tips[id];
			if (event.keyCode == 38) {
				if (index <= 0) return;
				document.getElementById(id + "_tr_" + index).style.backgroundColor="#ffffdd";
				index --;
				tips[id] = index;
				document.getElementById(id + "_tr_" + index).style.backgroundColor="#ccc";
				document.getElementById(id).value = document.getElementById(id + "_tr_" + index).innerText.split("_")[0];
				alert(1);
			}
			else if (event.keyCode == 40) {
				if (index >= size - 1) return;
				document.getElementById(id + "_tr_" + index).style.backgroundColor="#ffffdd";
				index ++;
				tips[id] = index;
				document.getElementById(id + "_tr_" + index).style.backgroundColor="#ccc";
				document.getElementById(id).value = document.getElementById(id + "_tr_" + index).innerText.split("_")[0];
				alert(document.getElementById(id + "_tr_" + index).innerText.split("_")[0]);
			}
			else if (event.keyCode == 13) {
				unshowTip(id);
			}
			else {
				var v = document.getElementById(id).value;
				showTip(v, id);
			}
			
			//alert(event.keyCode);
}

//存放id的缓存
var tips = {};


function showTip(value, dstid) {
	//把数据放到tl中
	var tl = [];
	var tin = 0;
	if (value == "") {
		for (var k in ap) {
			if (tin++ > 10) break;
			tl[tl.length] = [k, ap[k]];
		}
	}
	else {
		var tkeys = apindex[value];
		if (tkeys == null || tkeys.length <= 0) return;
		for (var i = 0; i < tkeys.length; i ++) {
			if (tin++ > 10) break;
			tl[tl.length] = [tkeys[i], ap[tkeys[i]]];
		}
	}
	
	//画出一个列表 table算了
	if (tl.length == 0) return;
	var tbcont = "<table border=0 cellpadding=0 cellspacing=0 style=\"background:#ffffdd;\">";
	for (var i = 0; i < tl.length; i ++) {
		tbcont += "<tr id='" + dstid + "_tr_" + i + "'><td id=\"\" style=\"height:25px;font-size:11pt;overflow-x:hidden;\">" 
				+ tl[i][0] + "_" + tl[i][1]
				+ "</td></tr>";
	}
	tbcont += "</table>";
	
	var o = document.getElementById(dstid + "_tip");
	o.innerHTML = tbcont;
	
	document.getElementById(dstid + "_tr_0").style.backgroundColor="#ccc";
	o.style.display = 'block';
	tips[dstid] = 0;
	tips[dstid + "_size"] = tl.length;
}
function unshowTip(dstid) {
	var o = document.getElementById(dstid + "_tip");
	o.style.display="none";
}


//创建新元素
function createNewDiv(id,  left, top ,width, height) {
var newElement = document.createElement('div'); 
    document.body.appendChild(newElement); //漏了这一句，否则行不通 
    newElement.id = id;
    newElement.style.position = 'absolute';
    //newElement.style.width = width + 'px'; 
    //newElement.style.height = height + 'px'; 
    newElement.style.left = left + 'px'; 
    newElement.style.top = top + 'px'; 
    newElement.style.margin = '0 auto'; 
    newElement.style.border = '1px solid red'; 
    newElement.style.zIndex = '11'; 
    newElement.style.overFlow = 'hidden';
    newElement.style.display = 'none';
}
