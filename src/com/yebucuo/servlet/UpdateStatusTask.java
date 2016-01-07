package com.yebucuo.servlet;  
  
import java.util.Calendar;  
import java.util.List;
import java.util.TimerTask;  
  






import javax.servlet.ServletContext;  

import com.kailian.glo.model.KlShoppingShoppingcartproduct;
import com.kailian.glo.service.ICmsUserInfoManager;
import com.kailian.glo.service.IKlShoppingShoppingcartproductManager;
import com.kailian.glo.vo.query.KlShoppingShoppingcartproductQuery;
import com.yebucuo.spring.SpringContext;
import com.yebucuo.util.Utils;
  
/** 
 * 继承 定时器任务类 
 *  
 */  
public class UpdateStatusTask extends TimerTask {  
  
    public UpdateStatusTask() {  
        super();  
    }  
  
    /** 这个代表3点钟的时候执行任务 */  
    private static final int C_SCHEDULE_HOUR = 3;  
  
    private static boolean isRunning = false;  
  
    private ServletContext context = null;  
  
    public UpdateStatusTask(ServletContext context) {  
        this.context = context;  
    }  
  
    public void run() {  
        Calendar cal = Calendar.getInstance();  
        if (!isRunning) {  
            if (C_SCHEDULE_HOUR == cal.get(Calendar.HOUR_OF_DAY)) {  
                isRunning = true;  
                context.log("开始执行指定任务");  
  
                
                /** 
                 * 此处写执行任务代码 
                 */  
                //7天内不确认  自动确认
                IKlShoppingShoppingcartproductManager manager  = (IKlShoppingShoppingcartproductManager) SpringContext.getBean("klShoppingShoppingcartproductManager");
                while (true) {
                	KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
                	q.setStatus(Utils.STATUS_COACHTIME_WAITCONFIRMCLASSED);
                	q.setModifytimelongend(System.currentTimeMillis() - 7 * 24 * 3600 * 1000);
                	List list = manager.queryTop(q);
                	if (list == null || list.isEmpty())
                		break;
                	
                	for (int i = 0; i < list.size(); i ++) {
                		KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) list.get(i);
                		q.setStatus(Utils.STATUS_COACHTIME_CLASSED);
                		manager.update(p);
                	}
                }
                
                // new YouCode().changeState();  
  
                isRunning = false;  
                context.log("指定任务执行结束");  
            }  
        } else {  
            context.log("上一次任务执行还未结束");  
        }  
    }  
  
}  