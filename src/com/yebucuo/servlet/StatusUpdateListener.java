package com.yebucuo.servlet;  
  
import javax.servlet.ServletContextEvent;  
import javax.servlet.ServletContextListener;  
  
/** 
 * 监听器的内容 
 */  
public class StatusUpdateListener implements ServletContextListener {  
    private static final long serialVersionUID = 1L;  
  
    public void ContextListener() {  
    }  
  
    private java.util.Timer timer = null;  
  
    public void contextInitialized(ServletContextEvent event) {  
          
        /** 
         * 设置一个定时器 
         */  
        timer = new java.util.Timer(true);  
          
        event.getServletContext().log("定时器已启动");  
  
        /** 
         * 定时器到指定的时间时,执行某个操作(如某个类,或方法) 
         */  
        //后边最后一个参数代表监视器的监视周期,现在为一小时  
        timer.schedule(new UpdateStatusTask(event.getServletContext()), 0, 60 * 60 * 1000);  
  
        event.getServletContext().log("已经添加任务调度表");  
    }  
  
    public void contextDestroyed(ServletContextEvent event) {  
        timer.cancel();  
        System.out.println("定时器销毁");  
        event.getServletContext().log("定时器销毁");  
    }  
  
}  