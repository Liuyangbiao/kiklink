package com.yebucuo.servlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.org.rapid_framework.page.Page;

import com.kailian.glo.model.CmsInputTable;
import com.kailian.glo.model.CmsIpdata;
import com.kailian.glo.model.CmsRightTable;
import com.kailian.glo.service.ICmsInputTableManager;
import com.kailian.glo.service.ICmsIpdataManager;
import com.kailian.glo.service.ICmsRightTableManager;
import com.kailian.glo.service.ICtPhotoManager;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.yebucuo.sigleton.ConfigSingleton;
import com.yebucuo.sigleton.InputSingleton;
import com.yebucuo.sigleton.RightSingleton;
import com.yebucuo.spring.*;

public class SomeServlet extends HttpServlet {

	private ICmsRightTableManager cmsRightTableManager;
	private ICmsInputTableManager cmsInputTableManager;

	public void destroy() {

	}

	// public void doGet(HttpServletRequest request, HttpServletResponse
	// response)
	// throws ServletException, IOException {
	public void init() throws ServletException {
		cmsRightTableManager = (ICmsRightTableManager) SpringContext
				.getBean("cmsRightTableManager");
		cmsInputTableManager = (ICmsInputTableManager) SpringContext
				.getBean("cmsInputTableManager");

		// 获取当前类路径
		String path = SomeServlet.class.getClassLoader().getResource("")
				.getPath();
		File dir = new File(path + "com/kailian/glo/action/");
		File[] fs = dir.listFiles();
		
		List classes = new ArrayList();
		List classNames = new ArrayList();
		//Map map = new HashMap();
		for (int i = 0; i < fs.length; i++) {
			List mthds = new ArrayList();
			
			String className = fs[i].getName();
			className = className.replaceAll(".class", "");
			String pkg = "com.kailian.glo.action." + className;

			Class clazz;
			try {
				clazz = Class.forName(pkg);

				// 所有方法的权限
				Method[] methods = clazz.getDeclaredMethods();
				for (Method method : methods) {
					if (method.getReturnType() == String.class) {
						String methodName = method.getName();

						CmsRightTable vl = (CmsRightTable) RightSingleton
								.getRightMap()
								.get(className + "-" + methodName);
						if (vl == null) {
							CmsRightTable right = new CmsRightTable();
							right.setClassName(className);
							right.setMethodName(methodName);
							right.setMethodComment(className + "   "
									+ methodName);
							right.setShowInList(1);
							right.setLogInDatabase(1);
							right.setVisitRightLevel(0);
							
							
							vl = right;
							if ("list".equalsIgnoreCase(vl.getMethodName())) {
								vl.setMethodComment("列表");
							}
							if ("save".equalsIgnoreCase(vl.getMethodName())) {
								vl.setMethodComment("新增");
							}
							if ("delete".equalsIgnoreCase(vl.getMethodName())) {
								vl.setMethodComment("删除");
							}
							if ("create".equalsIgnoreCase(vl.getMethodName())) {
								vl.setMethodComment("创建");
							}
							if ("update".equalsIgnoreCase(vl.getMethodName())) {
								vl.setMethodComment("更新");
							}
							if ("listAjax".equalsIgnoreCase(vl.getMethodName())) {
								vl.setMethodComment("aJax列表");
							}
							if ("show".equalsIgnoreCase(vl.getMethodName())) {
								vl.setMethodComment("查看");
							}
							if ("edit".equalsIgnoreCase(vl.getMethodName())) {
								vl.setMethodComment("编辑");
							}

							this.cmsRightTableManager.save(right);

							RightSingleton.getRightMap().put(
									right.getClassName() + "-"
											+ right.getMethodName(), right);
							RightSingleton.getRightMap().put(
									right.getId(), right);
							
						}

						
						mthds.add(className + "-" + vl.getMethodName());
						
						

					}
				}

			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			classes.add(mthds);
			classNames.add(className);
			//map.put(className, mthds);
		}
		
		RightSingleton.rightList = classes;
		RightSingleton.classNames = classNames;
		
		

		dir = new File(path + "com/kailian/glo/model/");
		fs = dir.listFiles();
		for (int i = 0; i < fs.length; i++) {
			if (fs[i].isDirectory())
				continue;

			String className = fs[i].getName();
			className = className.replaceAll(".class", "");
			String pkg = "com.kailian.glo.model." + className;

			Class clazz;
			try {
				clazz = Class.forName(pkg);

				// 所有变量的类型
				Field[] fields = clazz.getDeclaredFields();
				for (Field field : fields) {
					String name = field.getName();
					if (name.indexOf("ALIAS") >= 0
							|| name.indexOf("serialVersionUID") >= 0)

						continue;

					CmsInputTable vl = (CmsInputTable) InputSingleton
							.getInputMap().get(className + "-" + name);
					if (vl == null) {
						vl = new CmsInputTable();
						vl.setClassName(className);
						vl.setClassComment(className);
						vl.setInputName(name);
						vl.setInputComment(name);
						vl.setInputEnName(name);
						vl.setInputCnName(name);
						vl.setInputType(-1);
						
						if ("status".equalsIgnoreCase(vl.getInputName())) {
							vl.setInputCnName("状态");
						}
						if ("addition".equalsIgnoreCase(vl.getInputName())) {
							vl.setInputCnName("备注");
						}
						if ("createtimelong".equalsIgnoreCase(vl.getInputName())) {
							vl.setInputCnName("创建时间");
						}
						if ("modifytimelong".equalsIgnoreCase(vl.getInputName())) {
							vl.setInputCnName("修改时间");
						}
						if ("createuser".equalsIgnoreCase(vl.getInputName())) {
							vl.setInputCnName("创建者");
						}
						if ("modifyuser".equalsIgnoreCase(vl.getInputName())) {
							vl.setInputCnName("修改者");
						}

						this.cmsInputTableManager.save(vl);
						InputSingleton.getInputMap()
								.put(vl.getClassName() + "-"
										+ vl.getInputName(), vl);
					}
				}

				// 链接、标名配置
				String str = "list_iframe,list_blank,table_name";
				String[] ss = str.split(",");
				for (String name : ss) {
					CmsInputTable vl = (CmsInputTable) InputSingleton
							.getInputMap().get(className + "-" + name);
					if (vl == null) {
						vl = new CmsInputTable();
						vl.setClassName(className);
						vl.setClassComment(className);
						vl.setInputName(name);
						vl.setInputComment(name);
						vl.setInputEnName(name);
						vl.setInputCnName(name);
						vl.setInputType(-1);
						
						
						
						
						if ("list_iframe".equalsIgnoreCase(vl.getInputName())) {
							vl.setInputCnName("iframe打开列表");
						}
						if ("list_blank".equalsIgnoreCase(vl.getInputName())) {
							vl.setInputCnName("新页面打开列表");
						}
//						if ("table_name".equalsIgnoreCase(vl.getInputName())) {
//							vl.setInputCnName("类（表）名");
//						}
						

						this.cmsInputTableManager.save(vl);
						InputSingleton.getInputMap()
								.put(vl.getClassName() + "-"
										+ vl.getInputName(), vl);
					}

					

				}

			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		// 配置
		ConfigSingleton.getConfigMap();
		
		
		//ip地址库
		/*
		Logger logger = Logger.getLogger(this.getClass());
		ICmsIpdataManager cmsIpdataManager = (ICmsIpdataManager) SpringContext
				.getBean("cmsIpdataManager");
		File file = new File("/Users/Dapeng/Desktop/IP_DATA.txt");
		BufferedReader reader = null;
		try {
			System.out.println("以行为单位读取文件内容，一次读一行");
			//reader = new BufferedReader(new FileReader(file));
			reader=new BufferedReader(new InputStreamReader(new FileInputStream(file),"UTF-8"));
			String tempString = null;
			int line = 1;
			// 一次读一行，读入null时文件结束
			while ((tempString = reader.readLine()) != null) {
				// 把当前行号显示出来
				System.out.println("line " + line + ": " + tempString);
				logger.warn(tempString);
				
				String[] ss = tempString.split("\\s+");
				CmsIpdata ip = new CmsIpdata();
				ip.setIpfrom(ss[0]);
				ip.setIpto(ss[1]);
				ip.setArea(ss[2]);
				ip.setOperatior(ss[3]);
				String[] s = ss[0].split("\\.");
				long num = Long.parseLong(s[3]) + Long.parseLong(s[2])*256 + Long.parseLong(s[1])*256*256 + Long.parseLong(s[0]) * 256*256*256;
				ip.setNumFrom(num);
				s = ss[1].split("\\.");
				num = Long.parseLong(s[3]) + Long.parseLong(s[2])*256 + Long.parseLong(s[1])*256*256 + Long.parseLong(s[0]) * 256*256*256;
				ip.setNumTo(num);
				
				cmsIpdataManager.save(ip);
				
				line++;
			}
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e1) {
				}
			}
		}
		*/
		
		
		
		

	}

}