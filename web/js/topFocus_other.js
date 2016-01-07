// JavaScript Document


var topFocusContainer = $('#topFocusContainer'), topFocus = $('#topFocus'), items = topFocus.children(), itemsArray = $.makeArray(items), top_leftbtn = $('#top_leftbtn'), top_rightbtn = $('#top_rightbtn'), maskL = $('#maskL'), maskR = $('#maskR'), getClientW = function(){
    return topFocusContainer.outerWidth();
}, itemW = items.width() | 840, clientW = topFocusContainer.outerWidth(), sideW = (clientW - itemW) / 2, count = items.length, getSideW = function(){
    return (getClientW() - itemW) / 2;
};
var posArray = [];

function esquireTopFocus(){

    initPos();
    adCheck();
    
    function initPos(){
    
        for (var i = 0; i < count; i++) {
            if (i == 0) {
                posArray[i] = -(itemW - sideW);
            }
            else {
                posArray[i] = posArray[i - 1] + itemW;
            }
            
        }
        
        maskL.css('width', getSideW());
        maskR.css('width', getSideW());
        
        for (var i = 0; i < count; i++) {
        
            $(itemsArray[i]).css({
                'left': posArray[i],
                'top': 0
            });
        }
        
        
    }
    
    $(window).bind('resize', function(e){
        clientW = topFocusContainer.outerWidth();
        sideW = (clientW - itemW) / 2;
        initPos();
    });
    
    function setPos(){
    
        for (var i = 0; i < count; i++) {
        
            $(itemsArray[i]).animate({
                'left': posArray[i]
            });
        }
    }
    
    
    
    top_rightbtn.bind('click', function(e){
    
        var removedElem = itemsArray.shift();
        itemsArray.push(removedElem);
        
        $(removedElem).css({
            'left': posArray[count - 1],
            'top': 0
        });
        
        setPos();
        
    });
    
    
    top_leftbtn.bind('click', function(e){
        var removedElem = itemsArray.pop();
        itemsArray.unshift(removedElem);
        $(removedElem).css({
            'left': posArray[0] - sideW,
            'top': 0
        });
        
        setPos();
        
    });
    
    function adCheck(){
    
        for (var i = 0, l = itemsArray.length; i < l; i++) {
            var itemElem = itemsArray[i];
            var ad = $(itemElem).children('div');
            if (ad.length != 0) {
                $(itemElem).children('a').css('display', 'none');
            }
            else {
                $(itemElem).children('a').css('display', 'inline');
            }
        }
    }
    
};

var topFocusInit = function(){

    itemW = items.width() | 840, clientW = topFocusContainer.outerWidth(), sideW = (clientW - itemW) / 2;
    
    initPos();
    
    function initPos(){
    
        for (var i = 0; i < count; i++) {
            if (i == 0) {
                posArray[i] = -(itemW - sideW);
            }
            else {
                posArray[i] = posArray[i - 1] + itemW;
            }
            
        }
        
        maskL.css('width', getSideW());
        maskR.css('width', getSideW());
        
        for (var i = 0; i < count; i++) {
        
            $(itemsArray[i]).css({
                'left': posArray[i],
                'top': 0
            });
        }
        
    }
}

esquireTopFocus();

setTimeout(function(){$('#topFocusContainer').css('display','block');$(window).scrollTop(400);},10);