function trans_number(src, length) {
		var t1 = src + "";
		if	((src + "").length < length) {
			for (var i = 0; i < length - (src + "").length; i ++) {
				t1 = "0" + t1;
			}
		}
		//alert(t1);
		return t1;
	}


function gettime() {
	var a = new Date();
	var y = a.getYear() + "-";
	var m = a.getMonth() + "-";
	var d = a.getDay() + "-";
	var h = a.getHours() + "-";
	var x = a.getMinutes() + "-";
	var s = a.getSeconds() + "-";
	var ms = a.getMilliseconds() + "-";
	var str = (y + m + d + h + x + s + ms);
	return str;
}

function jumptourl(url) {
	window.location.href = url;
}

String.prototype.endWith=function(str){
   if(str==null||str==""||this.length==0||str.length>this.length)
    return false;
   if(this.substring(this.length-str.length)==str)
   return true;
   else
   return false;
   return true;
} 

String.prototype.replaceAll=function(str1, str2){
	str1 = "";
	if (isNull(str2)) return this;

	var str = this;
	while (true)
	{
		var i = str.indexOf(str1);
		if (i < 0) return str;
		str = str.substring(0, i) + str2 + str.substring(i + str1.length, str.length);
	}
}

function endwith(str, son) {
 	if (isNull(str) || isNull(son)) return false;
	var t = str.indexOf(son);
	if (t < 0) return false;
	if (t + son.length == str.length) return true;
	return false;
}

function isNull(value) {
	return value == "" || value == null || value == "undefined" || value == NaN || value == "null";
}
function isNotNull(value) {
	return isNull(value) == false;
}
function getattr(xml, ele, name) {
	var eles = xml.getElementsByTagName(ele);
	if (eles.length <= 0) {
		return null;
	}
	return eles[0].getAttribute(name);
}
function geteleattr(ele, name) {
	return ele.getAttribute(name);
}
function getvalue(xml, ele) {
	var eles = xml.getElementsByTagName(ele);
	if (eles.length <= 0) {
		return null;
	}
	if (eles[0].childNodes.length <= 0) {
		return "";
	}
	return eles[0].firstChild.data;
}
function Hashtable() {
	this._hash = new Object();
	this.add = function (key, value) {
		if (typeof (key) != "undefined") {
			if (this.contains(key) == false) {
				this._hash[key] = typeof (value) == "undefined" ? null : value;
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	};
	this.remove = function (key) {
		delete this._hash[key];
	};
	this.count = function () {
		var i = 0;
		for (var k in this._hash) {
			i++;
		}
		return i;
	};
	this.items = function (key) {
		return this._hash[key] == "undefined" ? "" : this._hash[key];
	};
	this.contains = function (key) {
		return typeof (this._hash[key]) != "undefined";
	};
	this.clear = function () {
		for (var k in this._hash) {
			delete this._hash[k];
		}
	};
}
function ge(id) {
	return document.getElementById(id);
}
function gv(id) {
	var o = ge(id);
	if (o == null) {
		return "";
	}
	return o.value;
}
function gi(id) {
	var o = ge(id);
	if (o == null) {
		return "";
	}
	return o.innerHTML;
}
function si(id, v) {
	var o = gi(id);
	if (o != null && o != undefined) {
		o.value = v;
	} else {
		alert("null?!");
	}
}
function seti(id, inner) {
	var o = ge(id);
	if (o == null || o == undefined) return;
	o.innerHTML = inner;
}

function scl(id, cl) {
	var o = ge(id);
	if (o != null && o != undefined) {
		o.className = cl;
	}
}
function show(id) {
	var o = ge(id);
	if (o != null) {
		o.style.display = "block";
	}
}
function hide(id) {
	var o = ge(id);
	if (o != null) {
		o.style.display = "none";
	}
}
function setSelectValue(id, value) {
	var o = ge(id);
	if (o == null) {
		return;
	}
	var objSelect = o;
	for (var i = 0; i < objSelect.options.length; i++) {
		if (objSelect.options[i].value == value) {
			objSelect.selectedIndex = i;
			return;
		}
	}
}



//
function getSelectionText() {
	if (window.getSelection) {
		return window.getSelection().toString();
	} else {
		if (document.selection && document.selection.createRange) {
			return document.selection.createRange().text;
		}
	}
	return "";
}
function replaceAll(src1, ol, ne) {
	var src = src1;
	if (src == null) {
		return;
	}
	while (true) {
		var t = src.indexOf(ol);
		if (t < 0) {
			return src;
		}
		src = src.replace(ol, ne);
	}
	return src;
}
function getFileName(name) {
	var i = name.lastIndexOf("\\");
	return name.substring(i + 1, name.length);
}
var keyStr = "ABCDEFGHIJKLMNOP" + "QRSTUVWXYZabcdef" + "ghijklmnopqrstuv" + "wxyz0123456789+/" + "=";
function encode64(input) {
	if (isNull(input)) return "";
	if (input == null || input == undefined || input == "") {
		return "";
	}
	input = escape(input);
	var output = "";
	var chr1, chr2, chr3 = "";
	var enc1, enc2, enc3, enc4 = "";
	var i = 0;
	do {
		chr1 = input.charCodeAt(i++);
		chr2 = input.charCodeAt(i++);
		chr3 = input.charCodeAt(i++);
		enc1 = chr1 >> 2;
		enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
		enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
		enc4 = chr3 & 63;
		if (isNaN(chr2)) {
			enc3 = enc4 = 64;
		} else {
			if (isNaN(chr3)) {
				enc4 = 64;
			}
		}
		output = output + keyStr.charAt(enc1) + keyStr.charAt(enc2) + keyStr.charAt(enc3) + keyStr.charAt(enc4);
		chr1 = chr2 = chr3 = "";
		enc1 = enc2 = enc3 = enc4 = "";
	} while (i < input.length);
	return "b64" + output;
}
function decode64(input) {
	if (isNull(input)) return "";
	if (input.indexOf("b64") != 0) {
		return input;
	}
	input = input.substring(3, input.length);
	var output = "";
	var chr1, chr2, chr3 = "";
	var enc1, enc2, enc3, enc4 = "";
	var i = 0;



      // remove all characters that are not A-Z, a-z, 0-9, +, /, or =
	var base64test = /[^A-Za-z0-9\+\/\=]/g;
	if (base64test.exec(input)) {

       //  alert("There were invalid base64 characters in the input text.n" +

       //        "Valid base64 characters are A-Z, a-z, 0-9, '+', '/', and '='n" +

       //        "Expect errors in decoding.");
	}
	input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
	do {
		enc1 = keyStr.indexOf(input.charAt(i++));
		enc2 = keyStr.indexOf(input.charAt(i++));
		enc3 = keyStr.indexOf(input.charAt(i++));
		enc4 = keyStr.indexOf(input.charAt(i++));
		chr1 = (enc1 << 2) | (enc2 >> 4);
		chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
		chr3 = ((enc3 & 3) << 6) | enc4;
		output = output + String.fromCharCode(chr1);
		if (enc3 != 64) {
			output = output + String.fromCharCode(chr2);
		}
		if (enc4 != 64) {
			output = output + String.fromCharCode(chr3);
		}
		chr1 = chr2 = chr3 = "";
		enc1 = enc2 = enc3 = enc4 = "";
	} while (i < input.length);
	return unescape(output);
}

   //验证email地址
function isEmail(strEmail) {
	if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1) {
		return true;
	} else {
		return false;
	}
}


//cookie操作
function writecookie(name, value)
{
    document.cookie=name + "=" + value + ";";
}
function readcookie(name) 
{
    var mycookie = document.cookie;
    var start1 = mycookie.indexOf(name + "=");
    if (start1== -1)
        return null;
    else
    {
        start=mycookie.indexOf("=",start1) + 1;
        var end = mycookie.indexOf(";",start);
        if (end==-1)
        {
            end=mycookie.length;
            //return unescape(mycookie.substring(start,end));
        }
        return unescape(mycookie.substring(start,end));
    }
}


function mainposition() {
	var mainwidth = parseInt(ge("main_div").style.width);
	var scrwidth = parseInt(window.screen.width);
	var left = (scrwidth - 1000) / 2;
	//alert(scrwidth + "   " + mainwidth);
	ge("main_div").style.marginLeft = left + "px";
}





