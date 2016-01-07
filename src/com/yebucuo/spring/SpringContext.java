package com.yebucuo.spring;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;


public final class SpringContext
{

	private static BeanFactory springBeanFactory = null;

	public synchronized static boolean initialize(ServletContext servletContext)
	{
		ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		springBeanFactory = (BeanFactory) context;
		System.out.println("SpringContext initialized!");
		return true;
	}

	public static Object getBean(String beanName)
	{
		Object object = null;
		if (springBeanFactory == null)
		{
			throw new RuntimeException("no this bean:" + beanName);
		}
		else
		{
			object = springBeanFactory.getBean(beanName);
		}
		return object;
	}
	public static void setBeanFactory(BeanFactory beanFactory)
	{
		springBeanFactory = beanFactory;
	}
}
