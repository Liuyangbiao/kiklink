package com.yebucuo.spring.aop;

import java.io.File;
import java.io.IOException;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

import com.kailian.glo.model.CmsAdminGroup;
import com.kailian.glo.model.CmsAdminuser;
import com.kailian.glo.model.CmsConfig;
import com.kailian.glo.model.CmsInputTable;
import com.kailian.glo.model.CmsRightTable;
import com.kailian.glo.model.CmsTemplate;
import com.kailian.glo.model.KlSellerProduct;
import com.kailian.glo.service.ICmsAdminuserManager;
import com.kailian.glo.service.ICmsConfigManager;
import com.yebucuo.lucene.LuceneIndex;
import com.yebucuo.sigleton.ConfigSingleton;
import com.yebucuo.sigleton.InputSingleton;
import com.yebucuo.sigleton.RightSingleton;
import com.yebucuo.spring.SpringContext;
import com.yebucuo.util.Md5;
import com.yebucuo.util.Utils;

/**
 * 切面
 * 
 */
public class CmsAspect {
	public static final String name_class_right = "CmsRightTable";
	public static final String name_class_input = "CmsInputTable";
	public static final String name_class_config = "CmsConfig";
	public static final String name_class_admingroup = "CmsAdminGroup";
	public static final String name_class_adminuser = "CmsAdminuser";
	public static final String name_class_template = "CmsTemplate";

	public static final String name_method_save = "save";
	public static final String name_method_update = "update";
	public static final String name_method_saveorupdate = "saveOrUpdate";

	public Logger logger = Logger.getLogger(this.getClass());

	public void deBefore(JoinPoint jp) {
		logger.warn("log Ending method!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!: "
				+ jp.getTarget().getClass().getName()
				+ "."
				+ jp.getSignature().getName());
		String classname = jp.getTarget().getClass().getName();
		String methodname = jp.getSignature().getName();

		// 管理员密码
		if (classname.indexOf(CmsAspect.name_class_adminuser) >= 0) {
			if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_update
							.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_saveorupdate
							.equalsIgnoreCase(methodname)) {
				Object[] obs = jp.getArgs();

				CmsAdminuser u = (CmsAdminuser) obs[0];
				//if (StringUtils.isNotEmpty(u.getPasswd()))
				//	u.setPasswd(Md5.toMd5(u.getPasswd()));
			}
		}
		
		logger.info("class is:" + classname + "  method is:" + methodname);
		if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
				|| CmsAspect.name_method_update
						.equalsIgnoreCase(methodname)
				|| CmsAspect.name_method_saveorupdate
						.equalsIgnoreCase(methodname)) {
		//产品表  地方
		if (classname.indexOf("KlSellerProduct") >= 0) {
			Object[] obs = jp.getArgs();
			KlSellerProduct p = (KlSellerProduct) obs[0];
			p.placeName();
		}
		}
	}

	public void doAfter(JoinPoint jp) {
		logger.warn("log Ending method!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!: "
				+ jp.getTarget().getClass().getName()
				+ "."
				+ jp.getSignature().getName());
		String classname = jp.getTarget().getClass().getName();
		String methodname = jp.getSignature().getName();

		// 权限表
		if (classname.indexOf(CmsAspect.name_class_right) >= 0) {
			if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_update
							.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_saveorupdate
							.equalsIgnoreCase(methodname)) {
				Object[] obs = jp.getArgs();

				CmsRightTable crt = (CmsRightTable) obs[0];
				RightSingleton.putRight(crt);
			}
		}
		// 表单表
		else if (classname.indexOf(CmsAspect.name_class_input) >= 0) {
			if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_update
							.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_saveorupdate
							.equalsIgnoreCase(methodname)) {
				Object[] obs = jp.getArgs();

				CmsInputTable input = (CmsInputTable) obs[0];
				InputSingleton.putInput(input);
			}
		}
		// 管理员组
		else if (classname.indexOf(CmsAspect.name_class_admingroup) >= 0) {
			if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_update
							.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_saveorupdate
							.equalsIgnoreCase(methodname)) {
				Object[] obs = jp.getArgs();

				CmsAdminGroup g = (CmsAdminGroup) obs[0];
				RightSingleton.putGroup(g);
			}
		}
		//管理员
		/*
		if (classname.indexOf(CmsAspect.name_class_adminuser) >= 0) {
			if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_update
					.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_saveorupdate
							.equalsIgnoreCase(methodname)) {
				ICmsAdminuserManager cmsAdminuserManager  = (ICmsAdminuserManager) SpringContext.getBean("cmsAdminuserManager");
				Object[] obs = jp.getArgs();
				CmsAdminuser u = (CmsAdminuser) obs[0];
				cmsAdminuserManager.updateGroupUserCount(u.getUserGroupId());
			}
		}
		*/
		// 配置表
		else if (classname.indexOf(CmsAspect.name_class_config) >= 0) {
			if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_update
							.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_saveorupdate
							.equalsIgnoreCase(methodname)) {
				Object[] obs = jp.getArgs();

				CmsConfig input = (CmsConfig) obs[0];
				ConfigSingleton.putConfig(input);
			}
		}
		// 模板内容 name_class_template
		else if (classname.indexOf(CmsAspect.name_class_template) >= 0) {
			if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_update
							.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_saveorupdate
							.equalsIgnoreCase(methodname)) {
				Object[] obs = jp.getArgs();

				CmsTemplate t = (CmsTemplate) obs[0];
				if (StringUtils.isNotEmpty(t.getPath())
						&& StringUtils.isNotEmpty(t.getContent())) {
					String path = CmsAspect.class.getResource("").toString();
					path = path.replaceAll(
							"WEB-INF/classes/com/yebucuo/spring/aop/", "");
					path = path.replaceAll("file:", "");
					path = path + "/templates/" + t.getPath();
					String[] ss = path.split("/");
					String pt = "/";
					for (int i = 0; i < ss.length; i++) {
						pt += ss[i] + "/";
						File f = new File(pt);
						if (f.exists() == false || f.isDirectory() == false) {
							f.mkdir();
						}
					}
					File file = new File(path);
					if (file.exists())
						file.delete();
					Utils.writeFile(path, t.getContent());

				}
			}
		} else {
			if (CmsAspect.name_method_save.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_update
							.equalsIgnoreCase(methodname)
					|| CmsAspect.name_method_saveorupdate
							.equalsIgnoreCase(methodname)) {

				// lucene索引
				CmsInputTable cit = (CmsInputTable) InputSingleton
						.getInputMap().get(classname + "-" + "table_name");
				if (cit == null || cit.getLuceneIndexType() > 0) {
					Object[] obs = jp.getArgs();
					try {
						LuceneIndex.indexObject(obs[0]);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
				
				
				
			}
		}
	}

	/*
	 * public Object doAround(ProceedingJoinPoint pjp) throws Throwable { long
	 * time = System.currentTimeMillis(); Object retVal = pjp.proceed(); time =
	 * System.currentTimeMillis() - time; logger.warn("process time: " + time +
	 * " ms"); return retVal; }
	 * 
	 * public void doBefore(JoinPoint jp) { logger.warn("log Begining method: "
	 * + jp.getTarget().getClass().getName() + "." +
	 * jp.getSignature().getName()); }
	 * 
	 * public void doThrowing(JoinPoint jp, Throwable ex) {
	 * logger.warn("method " + jp.getTarget().getClass().getName() + "." +
	 * jp.getSignature().getName() + " throw exception");
	 * logger.warn(ex.getMessage()); }
	 */

	private void sendEx(String ex) {
		// TODO 发送短信或邮件提醒
	}
}