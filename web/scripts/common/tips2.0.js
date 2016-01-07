//位置
var tips = {};
function CPos(x, y) {
	this.x = x;
	this.y = y;
}

//获取控件的位置
function GetObjPos(ATarget) {
	var target = ATarget;
	var pos = new CPos(target.offsetLeft, target.offsetTop);
	var target = target.offsetParent;
	while (target) {
		pos.x += target.offsetLeft;
		pos.y += target.offsetTop;
		target = target.offsetParent;
	}
	return pos;
}


//提示
function Tip(inputid, pos) {
	var _this = this;
	_this.inputid = inputid;
	_this.pos = pos;
	_this.init = function () {
		var p = GetObjPos(document.getElementById(_this.inputid));
		//新增
		createNewDiv(_this.inputid + "_tip", parseInt(p.x) + _this.pos[0], parseInt(p.y) + _this.pos[1], _this.pos[2], 100, _this.pos[4], _this.pos[3]);
	
		//事件 38 向上 40 向下
		$("#" + _this.inputid).keyup(function (event) {
			var id = ($(this).attr("id"));
			_this.onkey(id, event);
		});
		$("#" + _this.inputid).blur(function () {
			var id = ($(this).attr("id"));
			document.getElementById(id + "_tip").style.display = "none";
		});
		$("#" + _this.inputid).click(function () {
			var id = ($(this).attr("id"));
			_this.showTip("", id);
		});
	};
	
	
	//当敲击了鼠标
	_this.onkey = function (id, event) {
		var size = tips[id + "_size"];
		var index = tips[id];
		if (event.keyCode == 38) {
			if (index <= 0) {
				return;
			}
			document.getElementById(id + "_tr_" + index).style.backgroundColor = _this.pos[5];
			index--;
			tips[id] = index;
			document.getElementById(id + "_tr_" + index).style.backgroundColor = _this.pos[6];
			document.getElementById(id).value = document.getElementById(id + "_tr_" + index).innerText.split("_")[0];
			//alert(1);
		} else {
			if (event.keyCode == 40) {
				if (index >= size - 1) {
					return;
				}
				if (document.getElementById(id + "_tr_" + index) != null) {
					document.getElementById(id + "_tr_" + index).style.backgroundColor = _this.pos[5];
				}
				index++;
				tips[id] = index;
				document.getElementById(id + "_tr_" + index).style.backgroundColor = _this.pos[6];
				//alert(document.getElementById(id + "_td_" + index).innerHTML);
				document.getElementById(id).value = document.getElementById(id + "_td_" + index).innerHTML.split("_")[0];
				//alert(11);
				//alert(document.getElementById(id + "_tr_" + index).innerText.split("_")[0]);
			} else {
				if (event.keyCode == 13) {
					_this.unshowTip(id);
				} else {
					var v = document.getElementById(id).value;
					_this.showTip(v, id);
				}
			}
		}
			
			//alert(event.keyCode);
	};
	_this.showTip = function (value, dstid) {
	//把数据放到tl中
		var tl = [];
		var tin = 0;
		$.post("http://localhost/search/TbWsSearchlog/searchTag.do", {"k":value}, function (data) {
			data = eval('('+data+')');
			var l1 = data['tags'];
			for (var i = 0; i < l1.length; i ++) {
				tl[tl.length] = [l1[i]['keywords'], l1[i]['keywords']];
			}
		
			if (tl.length == 0) {
				return;
			}
			var tbcont = "<table border=0 cellpadding=0 cellspacing=0 style=\"background:" + _this.pos[5] + ";\">";
			for (var i = 0; i < tl.length; i++) {
				tbcont += "<tr id='" + dstid + "_tr_" + i + "' onclick=\"\" onmouseout=\"mouseout('" + dstid + "', '" + _this.pos[5] + "');this.style.backgroundColor='" + _this.pos[5] + "';\" onmouseover=\"this.style.backgroundColor='" + _this.pos[6] + "';\">" + "<td id='" + dstid + "_td_" + i + "' onmousedown=\"document.getElementById('" + dstid + "').value = this.innerHTML.split('_')[0];\" style=\"width:" + _this.pos[2] + "px;height:30px;font-size:11pt;overflow-x:hidden;\">" + tl[i][0] + "_" + tl[i][1] + "</td></tr>";
			}
			tbcont += "</table>";
			var o = document.getElementById(dstid + "_tip");
			o.innerHTML = tbcont;
			document.getElementById(dstid + "_tr_0").style.backgroundColor = _this.pos[5];
			o.style.display = "block";
			tips[dstid] = -1;
			tips[dstid + "_size"] = tl.length;
		});
		/*
		if (value == "") {
			for (var k = 0; k <= 10; k ++) {
				
				tl[tl.length] = [k, "1" + k];
			}
		} else {
			var tkeys = apindex[value];
			if (tkeys == null || tkeys.length <= 0) {
				return;
			}
			for (var i = 0; i < tkeys.length; i++) {
				if (tin++ > 10) {
					break;
				}
				tl[tl.length] = [tkeys[i], ap[tkeys[i]]];
			}
		}
		*/
	
	//画出一个列表 table算了
		/*
		if (tl.length == 0) {
			return;
		}
		var tbcont = "<table border=0 cellpadding=0 cellspacing=0 style="background:" + _this.pos[5] + ";">";
		for (var i = 0; i < tl.length; i++) {
			tbcont += "<tr id='" + dstid + "_tr_" + i + "' onclick="" onmouseout="mouseout('" + dstid + "', '" + _this.pos[5] + "');this.style.backgroundColor='" + _this.pos[5] + "';" onmouseover="this.style.backgroundColor='" + _this.pos[6] + "';">" 
					+ "<td id='" + dstid + "_td_" + i + "' onmousedown="document.getElementById('" + dstid + "').value = this.innerHTML.split('_')[0];" style="width:" + _this.pos[2] + "px;height:30px;font-size:11pt;overflow-x:hidden;">" + tl[i][0] + "_" + tl[i][1] + "</td></tr>";
		}
		tbcont += "</table>";
		var o = document.getElementById(dstid + "_tip");
		o.innerHTML = tbcont;
		document.getElementById(dstid + "_tr_0").style.backgroundColor = _this.pos[5];
		o.style.display = "block";
		tips[dstid] = -1;
		tips[dstid + "_size"] = tl.length;
		*/
	};
	_this.unshowTip = function (dstid) {
		var o = document.getElementById(dstid + "_tip");
		o.style.display = "none";
	};
	_this.init();
}
function mouseout(dstid, color) {
	var t = tips[dstid];
	if (document.getElementById(dstid + "_tr_" + t) != null) {
		document.getElementById(dstid + "_tr_" + t).style.backgroundColor = color;
	}
}

//创建新元素
function createNewDiv(id, left, top, width, height, borderwidth, bordercolor) {
	var newElement = document.createElement("div");
	document.body.appendChild(newElement); //漏了这一句，否则行不通 
	newElement.id = id;
	newElement.style.position = "absolute";
	newElement.style.width = width + "px";
    //newElement.style.height = height + 'px'; 
	newElement.style.left = left + "px";
	newElement.style.top = top + "px";
	newElement.style.margin = "0 auto";
	newElement.style.border = borderwidth + "px solid " + bordercolor;
	//newElement.style.borderTop = "0px";
	newElement.style.zIndex = "11";
	newElement.style.overFlow = "hidden";
	newElement.style.display = "none";
}

