var keyStr = "ABCDEFGHIJKLMNOP" +  
             "QRSTUVWXYZabcdef" +  
             "ghijklmnopqrstuv" +  
             "wxyz0123456789+/" +  
             "=";  
  
function encode64(input) {  
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
      } else if (isNaN(chr3)) {  
         enc4 = 64;  
      }  
  
      output = output +   
         keyStr.charAt(enc1) +   
         keyStr.charAt(enc2) +   
         keyStr.charAt(enc3) +   
         keyStr.charAt(enc4);  
      chr1 = chr2 = chr3 = "";  
      enc1 = enc2 = enc3 = enc4 = "";  
   } while (i < input.length);  
  
   return output;  
}  
  
function decode64(input) {  
   var output = "";  
   var chr1, chr2, chr3 = "";  
   var enc1, enc2, enc3, enc4 = "";  
   var i = 0;  
  
   // remove all characters that are not A-Z, a-z, 0-9, +, /, or =  
   var base64test = /[^A-Za-z0-9\+\/\=]/g;  
   if (base64test.exec(input)) {  
      alert("There were invalid base64 characters in the input text.\n" +  
            "Valid base64 characters are A-Z, a-z, 0-9, '+', '/', and '='\n" +  
            "Expect errors in decoding.");  
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


function setCookie(c_name, value, expiremin){
 　　　　var exdate=new Date();
 　　　　exdate.setDate(exdate.getMinutes() + expiremin);
 　　　　document.cookie=c_name+ "=" + escape(value) + ((expiremin==null) ? "" : ";expires="+exdate.toGMTString());
}

function getCookie(c_name){
　　　　if (document.cookie.length>0){　　//先查询cookie是否为空，为空就return ""
　　　　　　c_start=document.cookie.indexOf(c_name + "=")　　//通过String对象的indexOf()来检查这个cookie是否存在，不存在就为 -1　　
　　　　　　if (c_start!=-1){ 
　　　　　　　　c_start=c_start + c_name.length+1　　//最后这个+1其实就是表示"="号啦，这样就获取到了cookie值的开始位置
　　　　　　　　c_end=document.cookie.indexOf(";",c_start)　　//其实我刚看见indexOf()第二个参数的时候猛然有点晕，后来想起来表示指定的开始索引的位置...这句是为了得到值的结束位置。因为需要考虑是否是最后一项，所以通过";"号是否存在来判断
　　　　　　　　if (c_end==-1) c_end=document.cookie.length　　
　　　　　　　　return unescape(document.cookie.substring(c_start,c_end))　　//通过substring()得到了值。想了解unescape()得先知道escape()是做什么的，都是很重要的基础，想了解的可以搜索下，在文章结尾处也会进行讲解cookie编码细节
　　　　　　} 
　　　　}
　　　　return ""
　　}　

function getReferrer() {
    var referrer = '';
    
    try {
        referrer = window.top.document.referrer;
    } catch(e) {
        if(window.parent) {
            try {
                referrer = window.parent.document.referrer;
            } catch(e2) {
                referrer = '';
            }
        }
    }
    if(referrer === '') {
        referrer = document.referrer;
    }
    return referrer;
};

function get_os() {  
      var sUserAgent =navigator.userAgent;  
      var isWin = (navigator.platform =="Win32") || (navigator.platform == "Windows");  
      var isMac = (navigator.platform =="Mac68K") || (navigator.platform == "MacPPC") ||(navigator.platform == "Macintosh") || (navigator.platform =="MacIntel");
      if (isMac) return "Mac";  
      var isUnix = (navigator.platform =="X11") && !isWin && !isMac;  
      if (isUnix) return "Unix";  
      var isLinux =(String(navigator.platform).indexOf("Linux") > -1);  
      if (isLinux) return"Linux";  
      if (isWin) {  
             var isWin2K =sUserAgent.indexOf("Windows NT 5.0") > -1 ||sUserAgent.indexOf("Windows 2000") > -1;  
             if (isWin2K) return"Win2000";  
             var isWinXP =sUserAgent.indexOf("Windows NT 5.1") > -1 ||sUserAgent.indexOf("Windows XP") > -1;  
             if (isWinXP) return"WinXP";  
             var isWin2003 =sUserAgent.indexOf("Windows NT 5.2") > -1 ||sUserAgent.indexOf("Windows 2003") > -1;  
             if (isWin2003) return"Win2003";
             var isWinVista=sUserAgent.indexOf("Windows NT 6.0") > -1 ||sUserAgent.indexOf("Windows Vista") > -1;  
             if (isWinVista) return"WinVista";
             var isWin7 =sUserAgent.indexOf("Windows NT 6.1") > -1 || sUserAgent.indexOf("Windows7") > -1;  
             if (isWin7) return"Win7";
             var isWin7 =sUserAgent.indexOf("Windows NT 7.1") > -1 || sUserAgent.indexOf("Windows8") > -1;  
             if (isWin7) return"Win8";
      }  
      return "other";  
}  
 
//得到浏览器 包括：windows(IE6、IE7、IE8、淘宝浏览器、QQ浏览器、firefox、chrome、opera、safari)
function get_browser()  
{  
      var Sys = {};
      var ua =navigator.userAgent.toLowerCase();
      var s;
      (s = ua.match(/qqbrowser\/([\d.]+)/)) ?Sys.qq = s[1] :
      (s = ua.match(/msie ([\d.]+)/)) ? Sys.ie= s[1] :
      (s = ua.match(/firefox\/([\d.]+)/)) ?Sys.firefox = s[1] :
      (s = ua.match(/taobrowser\/([\d.]+)/)) ?Sys.tao = s[1] :
      (s = ua.match(/chrome\/([\d.]+)/)) ?Sys.chrome = s[1] :
      (s = ua.match(/opera.([\d.]+)/)) ?Sys.opera = s[1] :
      (s =ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;
      //以下进行测试
      if (Sys.ie) {
             return 'IE' + Sys.ie;
      }
      if (Sys.firefox){
             return 'Firefox';
      }
      if (Sys.qq){
             return 'QQ';
      }
      if (Sys.tao){
             return 'Tao';
      }
      if (Sys.chrome){
             return 'Chrome';
      }
      if (Sys.opera){
             return 'Opera';
      }
      if (Sys.safari){
             return 'Safari';
      }
}  

function hasFlashVersion(rv) {
var pv = flashVersion(), v = rv.split(".");
   v[0] = parseInt(v[0], 10);
   v[1] = parseInt(v[1], 10);
   v[2] = parseInt(v[2], 10);
return (pv[0] > v[0] || (pv[0] == v[0] && pv[1] > v[1]) || (pv[0] == v[0] && pv[1] == v[1] && pv[2] >= v[2])) ? true : false;
}

function flashVersion(){
var version = [0,0,0], win = window, nav = navigator;
if (typeof nav.plugins != "undefined" && typeof nav.plugins["Shockwave Flash"] == "object") {
   d = nav.plugins["Shockwave Flash"].description;
   if (d) {
    d = d.replace(/^.*\s+(\S+\s+\S+$)/, "$1");
    version[0] = parseInt(d.replace(/^(.*)\..*$/, "$1"), 10);
    version[1] = parseInt(d.replace(/^.*\.(.*)\s.*$/, "$1"), 10);
    version[2] = /r/.test(d) ? parseInt(d.replace(/^.*r(.*)$/, "$1"), 10) : 0;
   }
} else if (typeof win.ActiveXObject != "undefined") {
   var a = null, fp6Crash = false;
   try {
    a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");
   }
   catch(e) {
    try { 
     a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");
     version = [6,0,21];
     a.AllowScriptAccess = "always"; // Introduced in fp6.0.47
    }
    catch(e) {
     if (version[0] == 6) {
      fp6Crash = true;
     }
    }
    if (!fp6Crash) {
     try {
      a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
     }
     catch(e) {}
    }
   }
   if (!fp6Crash && a) { // a will return null when ActiveX is disabled
    try {
     d = a.GetVariable("$version"); // Will crash fp6.0.21/23/29
     if (d) {
      d = d.split(" ")[1].split(",");
      version = [parseInt(d[0], 10), parseInt(d[1], 10), parseInt(d[2], 10)];
     }
    }
    catch(e) {}
   }
}
return version;
}

function getRand() {
	var rand = Math.floor(Math.random() * ( 1000000 + 1));
	var rand2 =Math.floor(Math.random() * ( 1000000 + 1));
	var dstr = new Date().toGMTString() + "" + rand;
	return dstr;
}

function getStaticsData(addition) {
	// 操作系统	alert(get_os());
	// 浏览器 alert(get_browser());
	// 屏幕宽度 alert(window.screen.availWidth);
	//屏幕高度 alert(window.screen.availHeight);
	//屏幕颜色 alert(screen.colorDepth);
	//flash版本 alert(flashVersion());
	//
	//cookie
	var os =get_os();
	var browser = get_browser();
	var width = window.screen.availWidth;
	var height = window.screen.availHeight;
	var color = screen.colorDepth;
	var flashVersion1 = flashVersion();
	
	
	setCookie("tcookie", "tcookie", 60*24*3000);
	var tcookie = getCookie("tcookie");
	var supportcookie = (tcookie == "" ? 0 : 1);
	var visitType = getCookie("visitType");
	if (visitType == "")
		visitType = "0";
	var longcookie = getCookie("longcookie");
	if (longcookie == "" ) {
		visitType = "1";
		longcookie = getRand();
		setCookie("longcookie", longcookie, 60*24*3000);
	}
	else {
		setCookie("longcookie", longcookie, 60*24*3000);
	}
	
	var sessioncookie = getCookie("sessioncookie");
	if (sessioncookie == "" ) {
		sessioncookie = getRand();
		setCookie("sessioncookie", sessioncookie, 30);
	}
	else {
		setCookie("sessioncookie", sessioncookie, 30);
	}
	setCookie("visitType", visitType + "", 30);
	
	var referer = encode64(getReferrer());
	
	var url1 = "addition=" + addition + "&longSession=" + longcookie + "&visitSession=" + sessioncookie 
				+ "&referer=" + referer + "&os=" + os + "&browser=" + browser
				+ "&screenWidth=" + width + "&screenHeight=" + height + "&screenColor=" + color
				+ "&flashVersion=" + flashVersion1 + "&cookieSupport=" + supportcookie
				+ "&visitType=" + visitType + "&url=" + encode64(window.location.href);
	url1 = "http://www.kiklink.com/statics?" + url1;
	//alert(url1);
	//alert(window.location.href);
	//alert(encode64(window.location.href));
	
	$.ajax({
            type: 'GET',
            url: url1
        });
	
}













