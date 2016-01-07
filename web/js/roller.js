	function ge(id) {
		return document.getElementById(id);
	}	
		
function startTimer(idss, typess, fromvaluess, tovaluess, nowvaluess, totaltime, overfunc) {
	//alert(nowvalue);
	//alert(idss);
	var ids = idss.split(",");
	var types = typess.split(",");
	var fromvalues = fromvaluess.split(",");
	var tovalues = tovaluess.split(",");
	var nowvalues = nowvaluess.split(",");
	
	for (var i = 0; i < types.length; i ++) {
	var id = ids[i];
	var type = types[i];
	var fromvalue = parseInt(fromvalues[i]);
	var tovalue = parseInt(tovalues[i]);
	var nowvalue = parseInt(nowvalues[i]);
	
	if (fromvalue == tovalue) return;
	var o = ge(id);
	if (o == null) return;
	var pertime = (tovalue - fromvalue) / (totaltime / 100);
	var newvalue = nowvalue + pertime; 
	
	if (fromvalue > tovalue) {
		if (nowvalue <= tovalue) {
			if ("oneflyin" == overfunc) {
				r.oneflyin();
			}
			else if ("checklast" == overfunc) {
				r.checklast();
			}
			else if ("oneflyin2" == overfunc) {
				r.oneflyin2();
			}
			else if ("checkfirst" == overfunc) {
				r.checkfirst();
			}
	
			return;
		}
		if (newvalue < tovalue) newvalue = tovalue;
	}
	if (fromvalue < tovalue) {
	
		if (nowvalue >= tovalue) {
			if ("oneflyin" == overfunc) {
				r.oneflyin();
			}
			else if ("checklast" == overfunc) {
				r.checklast();
			}
			else if ("oneflyin2" == overfunc) {
				r.oneflyin2();
			}
			else if ("checkfirst" == overfunc) {
				r.checkfirst();
			}
			
			return;
		}
		if (newvalue > tovalue) newvalue = tovalue;
	}
	
	if (type == "borderWidth" ) o.style.borderWidth = newvalue + "px";
	if (type == "width" ) o.style.width = newvalue + "px";
	if (type == "height" ) o.style.height = newvalue + "px";
	if (type == "left" ) o.style.left = newvalue + "px";
	if (type == "top" ) o.style.top = newvalue + "px";
	if (type == "alpha") {
		newvalue = parseInt(newvalue);
		o.style.filter = "alpha(opacity=" + newvalue + ")";
		
		if (newvalue < 10) {
			o.style.opacity = "0.0" + newvalue;
		}
		else {
			o.style.opacity = "0." + newvalue;
		}
		if (newvalue == 100) o.style.opacity = "1.0";
		
		if (newvalue == 0) o.style.display = 'none';
		
	}
	
	nowvalues[i] = newvalue;
	}
	nowvaluess = nowvalues.join(","); 
	
	setTimeout("startTimer('" + idss + "','" + typess + "','" + fromvaluess + "','" + tovaluess + "','" + nowvaluess + "'," + totaltime + ",'" + overfunc + "')"  ,100);
}		











		function Rooler() {
			var _this = this;
			_this.id = null;
			_this.now = 0;
			_this.count = 0;
			_this.oldnow = 0;
			_this.notfirst = false;
			_this.notlast = false;
			_this.pertime = 400;
			_this.paused = false;
			_this.nexttime = 6000;
			_this.going = false;
			_this.ar = null;
			
			_this.init = function(id, ar ) {
				_this.id = id;
				_this.ar = ar;
				for (var i = 1; ; i ++) {
					var o = ge(_this.id + i);
					if (o == null) {
						_this.count = i - 1;
						break;
					}
					o.style.zIndex = 1000 - i;
				}
				
				
				
				_this.roll();
			}
			
			
			_this.roll = function() {
				if (_this.paused == false ) {
					_this.next();
					
				}
				setTimeout("r.roll();", _this.nexttime);	
			}
			_this.rolltip = function() {
				if (ge("rolltip") != null) ge("rolltip").innerHTML = _this.now + "&nbsp;&nbsp;of&nbsp;&nbsp;" + _this.count;
			}
			_this.switchstatus = function() {
				if (_this.paused) {
					_this.goon(); 
				}
				else 
				{
					_this.pause();
				}
			}
			_this.pause = function() {
				_this.paused = true;
				if (ge("pause") != null) ge("pause").src = "images/roller/goon.gif";
			}
			_this.goon = function() {
				_this.paused = false;
				if (ge("pause") != null) ge("pause").src = "images/roller/pause.gif";
			}
			
			_this.next = function() {
				if (_this.going) return;
				_this.going = true;
				_this.notfirst = false;
				
				_this.now ++;
				if (_this.now > _this.count) {
					_this.now = 1;
					_this.notfirst = true;	
				} 
				var tid = _this.id + "" + _this.now;
				_this.oldnow = _this.now - 1;
				if (_this.oldnow == 0) _this.oldnow = _this.count;
				
				
				ge(_this.id + "a").href = _this.ar[_this.now - 1];
				
				//第一张
				if (_this.now == 1 && _this.notfirst == false) {
					startTimer(tid , "left", "" + _this.leftleft, "-" + _this.bigwidth , "" + _this.leftleft, _this.pertime, "oneflyin");
				}
				//不是第一张
				else {
					
					if (_this.notfirst == true) _this.oldnow = _this.count;
					var oid = _this.id + "" + _this.oldnow;
					startTimer(tid + "," + oid, "left,left", _this.leftleft + ",10", "-" + _this.bigwidth + "," + _this.bigwidth , _this.leftleft + ",10", _this.pertime, "oneflyin");
				}
				_this.rolltip();
			}
			
			_this.pre = function() {
				if (_this.going) return;
				_this.going = true;
				_this.notlast = false;
				
				_this.now --;
				if (_this.now < 1) {
					_this.now = _this.count;
					_this.notlast = true;	
				} 
				
				ge(_this.id + "a").href = _this.ar[_this.now - 1];
				
				var tid = _this.id + "" + _this.now;
				_this.oldnow = _this.now + 1;
				if (_this.oldnow == _this.count + 1) _this.oldnow = 1;
				
				//第一张
				if (_this.now == _this.count && _this.notlast == false) {
					startTimer(tid , "left", "" + _this.leftleft, "" + _this.bigwidth , "" + _this.leftleft, _this.pertime, "oneflyin2");
				}
				//不是第一张
				else {
					if (_this.notfirst == true) _this.oldnow = _this.count;
					var oid = _this.id + "" + _this.oldnow;
					startTimer(tid + "," + oid, "left,left", _this.leftleft + ",10", _this.bigwidth + ",-" + _this.bigwidth 
								, _this.leftleft + ",10", _this.pertime, "oneflyin2");
				}
				_this.rolltip();
			}
			
			
			_this.smallwidth = 540;
			_this.smallheight = 395;
			_this.smalltop = 10;
			_this.leftleft = 10;
			_this.rightleft = 70;
			_this.bigtop = 0;
			_this.bigleft = 30;
			_this.bigwidth = 560;
			_this.bigheight = 415;
			
			_this.oneflyin = function() {
				var tid = _this.id + "" + _this.now;
				
				var o = ge(tid);
				var oi = ge(_this.id + "img" + _this.now);
				o.style.width = _this.bigwidth + "px";
				o.style.height = _this.bigheight + "px";
				o.style.top = _this.bigtop + "px";
				oi.style.width = (_this.bigwidth - 10) + "px";
				oi.style.height = (_this.bigheight - 10) + "px";
				o.style.zIndex = 1000;
				
				var oo = ge(_this.id + "" + _this.oldnow);
				if (oo != null) {
					var ooi = ge(_this.id + "img" + _this.oldnow);
					oo.style.width = _this.smallwidth + "px";
					oo.style.height = _this.smallheight + "px";
					oo.style.top = _this.smalltop + "px";
					ooi.style.width = (_this.smallwidth-10) + "px";
					ooi.style.height = (_this.smallheight-10) + "px";
					oo.style.zIndex = 800 - _this.oldnow;
				}
				
				if (_this.now == 1 && _this.notfirst == false) {
					startTimer(tid , "left", "-" + _this.bigwidth, "" + _this.bigleft, "-" + _this.bigwidth, _this.pertime, "checklast");
				}
				else {
				//	alert(_this.oldnow);
					startTimer(tid + "," +  _this.id + "" + _this.oldnow, "left,left", "-" + _this.bigwidth + "," + _this.bigwidth
						, _this.bigleft + "," + _this.rightleft , "-" +_this.bigwidth + "," + _this.bigwidth, _this.pertime, "checklast");
				}
			}
			
			//检查最后一个
			_this.checklast = function() {
				if (_this.now == _this.count) {
					for (var i = 1; i < _this.now; i ++) {
						var o = ge(_this.id + "" + i);
						o.style.left = _this.leftleft + "px";
					}
				}
				_this.going = false;
			}
			
			
			_this.oneflyin2 = function() {
				var tid = _this.id + "" + _this.now;
				
				var o = ge(tid);
				var oi = ge(_this.id + "img" + _this.now);
				o.style.width = _this.bigwidth + "px";
				o.style.height = _this.bigheight + "px";
				o.style.top = _this.bigtop + "px";
				oi.style.width = (_this.bigwidth - 10) + "px";
				oi.style.height = (_this.bigheight - 10) + "px";
				o.style.zIndex = 1000;
				
				var oo = ge(_this.id + "" + _this.oldnow);
				if (oo != null) {
					var ooi = ge(_this.id + "img" + _this.oldnow);
					oo.style.width = _this.smallwidth + "px";
					oo.style.height = _this.smallheight + "px";
					oo.style.top = _this.smalltop + "px";
					ooi.style.width = (_this.smallwidth-10) + "px";
					ooi.style.height = (_this.smallheight-10) + "px";
					oo.style.zIndex = 800 - _this.oldnow;
				}
				
				if (_this.now == _this.count && _this.notlast == false) {
					startTimer(tid , "left", "-" + _this.bigwidth, "50" , "" + _this.bigwidth, _this.pertime, "checklast");
				}
				else {
				//	alert(_this.oldnow);
					startTimer(tid + "," +  _this.id + "" + _this.oldnow, "left,left", "" + _this.bigwidth + ",-" + _this.bigwidth
						, _this.bigleft + "," + _this.rightleft , "" +_this.bigwidth + ",-" + _this.bigwidth, _this.pertime, "checklast");
				}
			}
			
			//检查最后一个
			_this.checkfirst = function() {
				if (_this.now == _this.count) {
					for (var i = 1; i < _this.now; i ++) {
						var o = ge(_this.id + "" + i);
						o.style.left = _this.leftleft + "px";
					}
				}
				_this.going = false;
			}
			
		}
		
		
		
		
		
		/////////////////////////////////////
		var optid = 0;
		var optid2 = 0;
		var pert = 300;
	function nextx() {
		optid2 ++;
	 nowid ++;
	 if (nowid > count)
	 {
		nowid = 1;
	 }
	 var t= nowid - 1;
	 if (nowid == 1) t = count;
	 $("#rollerx").animate({left: '-' + (t * 660 ) + 'px'}, pert,  returnto());
	 showbgx();
}
function prex() {
	optid2 ++;
	nowid --;
	if (nowid < 1)
	{
		nowid = count;
	}
	var t = nowid - 1;
	if (nowid == count) {
		$("#rollerx").animate({left: '-' + ((nowid-1 + count) * 660 ) + 'px'}, 0);
	}
	$("#rollerx").animate({left: '-' + ((nowid-1) * 660 ) + 'px'}, pert);
	showbgx();
}

function returnto() {
	if (nowid == 1) {
		setTimeout("returntot()", 350);
	}	
}
function returntot() {
	$("#rollerx").animate({left: '-' + ((nowid-1) * 660 ) + 'px'}, 1);
}

function showbgx() {
	var pre = nowid - 1;
	var next = nowid + 1;
	if (pre == 0)
	{
		pre = count;
	}
	if (next > count)
	{
		next = 1; 
	}
	
	document.getElementById('preimg').src = imgs[pre - 1];
	document.getElementById('nextimg').src = imgs[next - 1];
	document.getElementById('rolltip').innerHTML = nowid + "  of  " + count;
	document.getElementById("aaa").href = urls[nowid - 1 ];
	
	
	refresh();
	
}

/* add by panghe @2011-5-30*/

	function refresh(){
		updateURLHash();
		statistic();
	}

	function updateURLHash(){
		var baseUrl=window.location.href,match=baseUrl.match(/num=(\d+)/),newUrl;
		if(match&&match[1]){
			newUrl=baseUrl.replace(/num=(\d+)/,function(){
				return 'num='+nowid;
			});
		}else{
			newUrl=baseUrl+'#num='+nowid;
		}
		window.location.href=newUrl;
	}

	function statistic()
	{
		var iframe=document.getElementById('statistic');
			iframe.contentWindow.location.reload(true);
	}

/* add end */


function pausex() {
	if (paused) {
		document.getElementById("pause").src = "images/roller/pause.gif";
	}
	else {
		document.getElementById("pause").src = "images/roller/goon.gif";
	}
	paused = !paused;
}
		
function goon() {
	
	if (!paused) {
		if (optid != optid2) {
			optid = optid2;
		}
		else {
			nextx();
		}
	}
	
	setTimeout("goon()", 5000);
}