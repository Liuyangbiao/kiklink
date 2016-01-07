package com.yebucuo.server;

import java.util.Timer;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.yebucuo.spring.SpringContext;

public class ServerStart implements ServletContextListener
{

	public void contextDestroyed(ServletContextEvent arg0)
	{
		// TODO Auto-generated method stub
		
	}
	public void contextInitialized(ServletContextEvent event)
	{
		ServletContext context = event.getServletContext();
		SpringContext.initialize(context);
		
	}
}
