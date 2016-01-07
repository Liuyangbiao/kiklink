
function openWindow(url){
	
	
	
	var win=window.open(url,'_blank',"directories=yes,location=yes,menubar=yes,resizable=yes,scrollbars=yes,left=0,top=0,width=" + eval(window.screen.availWidth) + ",height=" + eval(window.screen.availHeight) + ",status=yes,toolbar=yes",false);
	win.opener=window;
}


function sendFavorite(base, url,uid, postid, to){
	var path = location.href;
	if(uid == undefined || uid==null){
		openWindow(base+'glo/WpUsers/userLogin.do?terminalId=1&refer='+path);
		return ;
	}
	
	$.ajax({
		   type: "POST",
		   url: url,
		   data: 'uid='+uid+'&articleId='+postid+'&to='+to,
		   async:true,
		   success: function(s) {
			   alert(s);
	  		}
		}); 
	
}

var Hashtable = function() {
    this.items = new Array();
    this.itemsCount = 0;
    this.add = function(key, value) {
    	
        if (!this.containsKey(key)) {
            this.items[key] = value;
            this.itemsCount++;
        }
        else
            throw "key '" +key+ "' allready exists.";
    };
    this.get = function(key) {
        if (this.containsKey(key))
            return this.items[key];
        else
            return null;
    };

    this.remove = function(key) {
        if (this.containsKey(key)) {
            delete this.items[key];
            this.itemsCount--;
        }
        else
            throw "key '"   +key+   "' does not exists."
    };
    this.containsKey = function(key) {
        return typeof (this.items[key]) != "undefined";
    };
    this.containsValue = function containsValue(value) {
        for (var item in this.items) {
            if (this.items[item] == value)
                return true;
        }
        return false;
    };
    this.contains = function(keyOrValue) {
        return this.containsKey(keyOrValue) || this.containsValue(keyOrValue);
    };
    this.clear = function() {
        this.items = new Array();
        itemsCount = 0;
    };
    this.size = function() {
        return this.itemsCount;
    };
    this.isEmpty = function() {
        return this.size() == 0;
    };
}