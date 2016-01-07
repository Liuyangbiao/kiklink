function GetObj(tag){
	return document.getElementById(tag);

}

var scrollLength=0;

//MAG COVER
var spd4 = 5 ;
var spst = 2500;
var MyMar1;
var myMar2;
var tdd1 = GetObj("mq1");
//var tdd2 = GetObj("mq2");
var demo = GetObj("mmque");
var turned = false;
var scrdir = 'left';
//tdd2.innerHTML=tdd1.innerHTML;
/*
function Marqueeturn(){
  if(turned && demo.scrollLeft%tdd1.offsetWidth<5){ 
    if(scrdir=='right')demo.scrollLeft=tdd1.offsetWidth;
	if(scrdir=='left')demo.scrollLeft=0;
    turned = false;
  }

if(scrdir=='left'){
  if(tdd1.offsetWidth-demo.scrollLeft<=0){
    demo.scrollLeft-=tdd1.offsetWidth;
  }
  else{
    demo.scrollLeft+=1;
  }
}
if(scrdir=='right'){
  if(demo.scrollLeft<=0){
    demo.scrollLeft+=tdd2.offsetWidth;
  }
  else{
    demo.scrollLeft-=1;
  }
}

  if(demo.scrollLeft%135==0 ){
    clearInterval(MyMar);
    myMar2 = setTimeout("MyMar=setInterval(Marqueeturn,spd4)",spst);
  }
}
MyMar=setInterval(Marqueeturn,spd4)
demo.onmouseover=function() { clearInterval(MyMar); clearTimeout(myMar2); }
demo.onmouseout=function() { MyMar=setInterval(Marqueeturn,spd4);}

function turnDir(para){
	if(scrdir != para) turned = true; // 转向
	scrdir = para;
	clearInterval(MyMar); 
	clearTimeout(myMar2);
	MyMar=setInterval(Marqueeturn,spd4);
}
*/
function dostartScroll(dir){
	
	   var argsNum = dostartScroll.arguments.length;
	   
	
		var leftIndex = parseInt(scrollContainerObj.style.left); 
		var scrollLayerWith = parseInt(scrollLayerObj.clientWidth||scrollLayerObj.offsetWidth);
		var scrollContainerWith = parseInt(realContainerObj.clientWidth||realContainerObj.offsetWidth);	
		
		
		if(dir=="1"){
			if(leftIndex>=0){
				scrollContainerObj.style.left = "0px";
				if("undefined"!=typeof(scrollLeftImg)&&null!=scrollLeftImg){
					
					scrollLeftImg.src=scrollLeftImgEndSrc;
				}
				
				
			//	document.getElementById("leftid").src = "images/m_142.gif";
				stopScroll(1);
				return;
			}			
		}else{
			if(leftIndex-scrollLayerWith<=-scrollContainerWith){
				
				scrollContainerObj.style.left = scrollLayerWith-scrollContainerWith+"px";
				if("undefined"!=typeof(scrollRightImg)&&null!=scrollRightImg){
					scrollRightImg.src=scrollRightImgEndSrc;
				}
			//	document.getElementById("rightid").src = "images/m_14.gif";
				stopScroll(-1);
				return;
			}			
		}		
		
		if(argsNum>1){
			var maxLeft = dostartScroll.arguments[1];
			if(argsNum==2){
				
			
				if(leftIndex + maxLeft*dir-scrollLayerWith<=-scrollContainerWith){
					
					scrollContainerObj.style.left = scrollLayerWith-scrollContainerWith+"px";
				}else if(leftIndex>0){
					scrollContainerObj.style.left = "0px";
				}else{
					scrollContainerObj.style.left = leftIndex + maxLeft*dir +"px";
				}
				
			}else if(argsNum==3){
				
				
					
					if(scrollLength>=maxLeft-10){
						
						stopScroll(dir);
						return;
					}else{
					
						scrollContainerObj.style.left = leftIndex + 10*dir +"px";
						scrollLength+=10;
					
					}
				
			}
			
			
		}else{
		
			scrollContainerObj.style.left = leftIndex + 10*dir +"px";
			scrollLength+=10;
		
		}
		
		//alert(scrollContainerObj.style.left);
		if(dir=="1"){
			
			if("undefined"!=typeof(scrollRightImg)&&null!=scrollRightImg){
				scrollRightImg.src=scrollRightImgNormalSrc;
			}
			
		}else{
			if("undefined"!=typeof(scrollLeftImg)&&null!=scrollLeftImg){
				scrollLeftImg.src=scrollLeftImgNormalSrc;
			}
		}
		
	}
	
function compScroll(dir){
  	    leftIndex = Math.abs(parseInt(scrollContainerObj.style.left));	
	    if(leftIndex%pspWidth > 5 && leftIndex < (pspWidth*length-20-parseInt(scrollLayerObj.style.width)) ){
			dostartScroll(dir);
			setTimeout("compScroll("+dir+")",10);
	    }
}
function startScroll(dir){
	scrollLength=0;
		
		 var argsNum = startScroll.arguments.length;
		
		var maxLeft = startScroll.arguments[1];
		if(argsNum>1){
			if(null == startScrollTimer){
				startScrollTimer = setInterval("dostartScroll("+dir+","+maxLeft+","+1+")",1);
			}
		}else{
			if(null == startScrollTimer){
				startScrollTimer = setInterval("dostartScroll("+dir+")",1);
			}
		
		}
		
		
		
}
	
function stopScroll(dir){
	
	//compScroll(dir);
	if(null != startScrollTimer){
		clearInterval(startScrollTimer);
		startScrollTimer = null;
	} 
}