/*

 */

package com.kailian.glo.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import cn.org.rapid_framework.beanutils.BeanUtils;
import cn.org.rapid_framework.page.Page;
import cn.org.rapid_framework.web.scope.Flash;

import com.yebucuo.common.util.Json;
import com.yebucuo.sigleton.CountSingleton;
import com.yebucuo.util.ImageUtils;
import com.yebucuo.util.Md5;
import com.yebucuo.util.MessageUtils;
import com.yebucuo.util.PointUtils;
import com.yebucuo.util.SmsUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.kailian.glo.vo.query.CtUserProvinceQuery;
import com.kailian.glo.vo.query.KlSellerShopQuery;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.yebucuo.common.base.*;
import com.yebucuo.common.util.*;

import cn.org.rapid_framework.util.*;
import cn.org.rapid_framework.web.util.*;
import cn.org.rapid_framework.page.*;
import cn.org.rapid_framework.page.impl.*;

import com.kailian.glo.model.*;
import com.kailian.glo.dao.*;
import com.kailian.glo.service.*;
import com.kailian.glo.vo.query.*;
import com.yebucuo.util.Utils;
import com.yebucuo.util.mail.MailUtil;

/**
 * @author  wangdapeng
 * @version 1.0
 * @since 1.0
 */


public class CmsUserInfoAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsUserInfo/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsUserInfo/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsUserInfo/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsUserInfo/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsUserInfo/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsUserInfo/list.do";
	
	private ICmsUserInfoManager cmsUserInfoManager;
	private ICmsCommonCommentManager cmsCommonCommentManager;
	private IKlSellerShopManager klSellerShopManager;
	private ICtUserProvinceManager ctUserProvinceManager;
	private ICtUserCityManager ctUserCityManager;
	private ICtUserQuManager ctUserQuManager;
	
	public ICtUserCityManager getCtUserCityManager() {
		return ctUserCityManager;
	}

	public void setCtUserCityManager(ICtUserCityManager ctUserCityManager) {
		this.ctUserCityManager = ctUserCityManager;
	}

	public ICtUserQuManager getCtUserQuManager() {
		return ctUserQuManager;
	}

	public void setCtUserQuManager(ICtUserQuManager ctUserQuManager) {
		this.ctUserQuManager = ctUserQuManager;
	}

	public ICtUserProvinceManager getCtUserProvinceManager() {
		return ctUserProvinceManager;
	}

	public void setCtUserProvinceManager(
			ICtUserProvinceManager ctUserProvinceManager) {
		this.ctUserProvinceManager = ctUserProvinceManager;
	}

	public IKlSellerShopManager getKlSellerShopManager() {
		return klSellerShopManager;
	}

	public void setKlSellerShopManager(IKlSellerShopManager klSellerShopManager) {
		this.klSellerShopManager = klSellerShopManager;
	}

	public ICmsCommonCommentManager getCmsCommonCommentManager() {
		return cmsCommonCommentManager;
	}

	public void setCmsCommonCommentManager(
			ICmsCommonCommentManager cmsCommonCommentManager) {
		this.cmsCommonCommentManager = cmsCommonCommentManager;
	}


	private Logger logger = Logger.getLogger(this.getClass());
	
	private CmsUserInfo cmsUserInfo;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsUserInfo = new CmsUserInfo();
		} else {
			cmsUserInfo = (CmsUserInfo)cmsUserInfoManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsUserInfoManager(ICmsUserInfoManager manager) {
		this.cmsUserInfoManager = manager;
	}	
	
	public Object getModel() {
		return cmsUserInfo;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsUserInfoQuery query = newQuery(CmsUserInfoQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsUserInfoManager.findPage(query);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("pg", page);
			return writeAjaxResponse(Json.toJson(map));
		}
		else {
			this.getRequest().setAttribute("pg", page);
			return LIST_JSP;
		}
	}
	
	public String listAjax(){
		CmsUserInfoQuery query = newQuery(CmsUserInfoQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsUserInfoManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsUserInfo.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsUserInfo.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsUserInfo.setCreateTime(new Date());
//		cmsUserInfo.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsUserInfo.setModifyuser(theuserid);
		}
		cmsUserInfo.setCreatetimelong(System.currentTimeMillis());
		cmsUserInfo.setModifytimelong(System.currentTimeMillis());
		cmsUserInfo.setStatus(0);
		
		cmsUserInfoManager.save(cmsUserInfo);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsUserInfo);
			return writeAjaxResponse(Json.toJson(map));
		}
		else {
			return OK_JSP;
		}
	}
	
	/**进入更新页面*/
	public String edit() {
		return EDIT_JSP;
	}
	
	/**保存更新对象*/
	public String update() {
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsUserInfo.setModifyuser(theuserid);
		}
		cmsUserInfo.setModifytimelong(System.currentTimeMillis());
		
		
		cmsUserInfoManager.update(this.cmsUserInfo);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsUserInfo);
			return writeAjaxResponse(Json.toJson(map));
		}
		else {
			return OK_JSP;
		}
	}
	
	/**删除对象*/
	public String delete() {
		if(items!=null)
			for(String ids:items){
				String[] idArray = ids.split(",");
				for(String id:idArray) {
					if (StringUtils.isNotEmpty(id) && StringUtils.isNumeric(id)) {
						cmsUserInfo = cmsUserInfoManager.getById(Long.parseLong(id));
						if (cmsUserInfo != null) {
							//cmsUserInfo.setStatus(-1);
							//cmsUserInfoManager.update(cmsUserInfo);
							cmsUserInfoManager.removeById(cmsUserInfo.getId());
						}
					}
				}
				//cmsUserInfoManager.removeById(Long.parseLong(id));
			}
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("re", 1);
			return writeAjaxResponse(Json.toJson(map));
		}
		else {
			return LIST_ACTION;
		}
	}
	
	
	
	//////////////////////////
	public String logout() {
		Map map = new HashMap();
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		if (user != null) {
			this.getRequest().setAttribute("third", user.getThirdType());
		}
		
		if (user != null && user.getLastlogintime() != null) {
			user = this.cmsUserInfoManager.getById(user.getId());
			if (user != null) {
			user.setLastlogintime(user.getLastlogintime() + 1);
			user.setAddition(null);
			this.cmsUserInfoManager.update(user);
			}
		}
		
		Utils.getSessionByRequest(getRequest()).removeAttribute("user");
		Utils.getSessionByRequest(getRequest()).removeAttribute("sessionshop");
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/prelogin.jsp", 1, "ok");
	}
	
	/*
	 * 手机验证码
	 */
	public String mobileValidnum() {
		Map map = Utils.checkParamerts(getRequest(), "mobile");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return writeAjaxResponse(Json.toJson(map));
		}
		
		//String validnum = System.currentTimeMillis()% 1000000 + "";
		//Utils.getSessionByRequest(getRequest()).setAttribute("validnum"+Utils.getParam(getRequest(), "mobile"), validnum);
		//发送验证码
		
		SmsUtils.sendValidate(getRequest(), Utils.getParam(getRequest(), "mobile"));
		
		map.put("re", 1);
		map.put("word", "ok");
		return writeAjaxResponse(Json.toJson(map));
	}
	
//	邮箱验证码
	public String emailValidnum() {
		Map map = Utils.checkParamerts(getRequest(), "email");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return writeAjaxResponse(Json.toJson(map));
		}
		
		//String validnum = System.currentTimeMillis()% 1000000 + "";
		//Utils.getSessionByRequest(getRequest()).setAttribute("validnum"+Utils.getParam(getRequest(), "mobile"), validnum);
		//发送验证码
		
		SmsUtils.sendValidate(getRequest(), Utils.getParam(getRequest(), "email"));
		
		map.put("re", 1);
		map.put("word", "ok");
		return writeAjaxResponse(Json.toJson(map));
	}
	
	
	/*
	 * 邮箱验证
	 */
	public String checkEmail() {
		Map map = Utils.checkParamerts(getRequest(), "id,check");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("thirdType", "email");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/preregist.jsp"); 
		}
		
		if (this.cmsUserInfo == null || this.cmsUserInfo.getStatus() != 0) {
			map.put("re", -1);
			map.put("thirdType", "email");
			map.put("word", "用户不存在或者已经通过了邮箱验证");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/preregist.jsp");
		}
		
		this.cmsUserInfo.setStatus(1);
		this.cmsUserInfoManager.update(this.cmsUserInfo);
		map.put("user", this.cmsUserInfo);
		map.put("re", 1);
		map.put("word", "邮箱验证成功");
		
		PointUtils.setpoint(getRequest(), PointUtils.REASON_VERIFYMOBILEEMAIL);
		
		Utils.getSessionByRequest(getRequest()).setAttribute("user", this.cmsUserInfo);
		//this.getRequest().setAttribute("sessionurl", this.getSessionUrl(null));
		this.getRequest().setAttribute("sessionurl", this.getSessionUrl(null));
		
		return Utils.returnServlet(getRequest(),getResponse(),  map, getSessionUrl("/page/user/regok.jsp"));
	}
	
	
	/**
	 * 第三方登录
	 */
	public String third() {
		String thirdType = Utils.getParam(getRequest(), "thirdType");
		String openid = Utils.getParam(getRequest(), "openid");
		String username = Utils.getParam(getRequest(), "username");
		String token = Utils.getParam(getRequest(), "token");
		int sex = Utils.getIntParam(getRequest(), "sex");
		
		if ("weibo".equalsIgnoreCase(thirdType) == false && "qq".equalsIgnoreCase(thirdType) == false)
			return Utils.returnServlet(getRequest(), getResponse(), new HashMap(), "/page/info.jsp", -1, "登录类型错误");
		
		CmsUserInfoQuery q = new CmsUserInfoQuery();
		q.setThirdType(thirdType);
		q.setOpenid(openid);
		q.setPageSize(1);
		List list = this.cmsUserInfoManager.queryTop(q);
		if (list == null || list.isEmpty()) {
			this.cmsUserInfo.setCreatetimelong(System.currentTimeMillis());
			this.cmsUserInfoManager.save(cmsUserInfo);
		}
		else {
			this.cmsUserInfo = (CmsUserInfo) list.get(0);
			
			if (this.cmsUserInfo.getStatus() != null && this.cmsUserInfo.getStatus() <= 0) {
				return Utils.returnServlet(getRequest(), getResponse(), new HashMap(), "/page/info.jsp", -1, "用户未激活或被屏蔽");
			}
			
//			if (StringUtils.isNotEmpty(username) && username.equalsIgnoreCase(this.cmsUserInfo.getUsername()) == false)
//			{
//				this.cmsUserInfo.setUsername(username);
//				this.cmsUserInfoManager.update(cmsUserInfo);
//			}
		}
		
		
		this.cmsUserInfo.setLastlogintime(System.currentTimeMillis());
		this.cmsUserInfo.setAddition(Md5.toMd5(this.cmsUserInfo.getId() + " " + this.cmsUserInfo.getLastlogintime()));
		this.cmsUserInfoManager.update(cmsUserInfo);
		
		Map map = new HashMap();
		Utils.getSessionByRequest(getRequest()).setAttribute("user", this.cmsUserInfo);
		this.cmsUserInfo.setPasswd(null);
		map.put("user", this.cmsUserInfo);
		
		return Utils.returnServlet(getRequest(), getResponse(),map, "/page/info.jsp", 1, "ok");
	}
	
	/**
	 * 绑定手机号
	 */
	public String bindmobile() {
		Map map = Utils.checkParamerts(getRequest(), "sessionuser,mobile");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			//map.put("word", "您没有登录");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		user = this.cmsUserInfoManager.getById(user.getId());
		if ("qq".equalsIgnoreCase(user.getThirdType()) || "weibo".equalsIgnoreCase(user.getThirdType())) {
			user.setMobile(Utils.getParam(getRequest(), "mobile"));
			this.cmsUserInfoManager.update(user);
			Utils.getSessionByRequest(getRequest()).setAttribute("user", user);
			
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "ok");
		}
		else {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "此方法只适用于第三方登录用户");
		}
		
		
		
		 
	}
	
	
	/**
	 * 注册之前
	 * @return
	 */
	public String preregist() {
		return Utils.returnServlet(getRequest(), getResponse(), new HashMap(), "/page/user/preregist.jsp", 1, "ok");
	}
	public String preregist2() {
		return Utils.returnServlet(getRequest(), getResponse(), new HashMap(), "/page/user/preregist2.jsp", 1, "ok");
	}
	
	
	/*
	 * 用户注册
	 */
	public String regist() {
		String thirdType = Utils.getParam(getRequest(), "thirdType");
		Map map = null;
		if ("mobile".equalsIgnoreCase(thirdType)) {
			map = Utils.checkParamerts(getRequest(), "mobile,passwd,repasswd,mobilevalidnum");
			if (map.isEmpty() == false ) {
				map.put("re", -1);
				return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/preregist.jsp"); 
			}
			
			CmsUserInfoQuery q = new CmsUserInfoQuery();
			q.setMobile(this.cmsUserInfo.getMobile());
			Page p = this.cmsUserInfoManager.findPage(q);
			if (p.getResult().isEmpty() == false) {
				map.put("re", -1);
				map.put("word", "手机号已经被注册");
				return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/preregist.jsp"); 
			}
			
			
//			String validnum = Utils.getParam(getRequest(), "mobilevalidnum");
//			String sessionv = (String)Utils.getSessionByRequest(getRequest()).getAttribute("validnum"+Utils.getParam(getRequest(), "mobile"));
//			if (validnum.equalsIgnoreCase(sessionv) == false) {
//				map.put("re", -1);
//				return Utils.returnServlet(getRequest(),getResponse(), map, "/user/reg.jsp"); 
//			}
			
			this.cmsUserInfo.setStatus(1);
			this.cmsUserInfo.setLastlogintime(System.currentTimeMillis());
			this.cmsUserInfo.setCreatetimelong(System.currentTimeMillis());
			this.cmsUserInfo.setAddition(Md5.toMd5(this.cmsUserInfo.getId() + " " + this.cmsUserInfo.getLastlogintime()));
			this.cmsUserInfoManager.save(this.cmsUserInfo);
			Utils.getSessionByRequest(getRequest()).setAttribute("user", this.cmsUserInfo);
			this.cmsUserInfo.setPasswd(null);
			map.put("user", this.cmsUserInfo);
			map.put("re", 1);
			map.put("word", "注册成功");
			
			MessageUtils.sendSystemMessage(this.cmsUserInfo.getId(), "恭喜您已经成为开练网会员。");
			CountSingleton.addCount(this.cmsUserInfo.getId(), "user", "message", 1);
			PointUtils.setpoint(getRequest(), PointUtils.REASON_REGIST);
			
			this.getRequest().setAttribute("sessionurl", this.getSessionUrl(null));
			
			return Utils.returnServlet(getRequest(),getResponse(), map, getSessionUrl("/page/user/regok.jsp"));
		}
		else if ("email".equalsIgnoreCase(thirdType)) {
			map = Utils.checkParamerts(getRequest(), "email,passwd,repasswd");
			if (map.isEmpty() == false ) {
				map.put("re", -1);
				return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/preregist2.jsp"); 
			}
			
			
			CmsUserInfoQuery q = new CmsUserInfoQuery();
			q.setEmail(this.cmsUserInfo.getEmail());
			Page p = this.cmsUserInfoManager.findPage(q);
			if (p.getResult().isEmpty() == false) {
				map.put("re", -1);
				map.put("word", "邮箱已经被注册");
				map.put("err_email", "邮箱已经被注册");
				return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/preregist2.jsp"); 
			}
			
			
			
			this.cmsUserInfo.setStatus(0);
			this.cmsUserInfo.setLastlogintime(System.currentTimeMillis());
			this.cmsUserInfo.setCreatetimelong(System.currentTimeMillis());
			this.cmsUserInfo.setAddition(Md5.toMd5(this.cmsUserInfo.getId() + " " + this.cmsUserInfo.getLastlogintime()));
			this.cmsUserInfoManager.save(this.cmsUserInfo);
			this.cmsUserInfo.setPasswd(null);
			map.put("user", this.cmsUserInfo);
			map.put("re", 1);
			map.put("word", "注册成功,请去邮箱查收。");
			
			MessageUtils.sendSystemMessage(this.cmsUserInfo.getId(), "恭喜您已经成为开练网会员。");
			CountSingleton.addCount(this.cmsUserInfo.getId(), "user", "message", 1);
			PointUtils.setpoint(getRequest(), PointUtils.REASON_REGIST);
			
			//发邮件
			String cont = "感谢您加入开练网，以下是您的邮箱验证链接，请点击确认：XXXXXXXXXX，如非本人操作，请勿点击。";
			String base = this.getRequest().getRequestURL().toString().split("regist.do")[0] + "checkEmail.do";
			String url =  this.cmsUserInfo.getId() + "kailianwang";
			url = base + "" + "?id=" + this.cmsUserInfo.getId() + "&check=" + Md5.toMd5(url);
			cont = cont.replaceAll("XXXXXXXXXX", "<a href='" + url + "'>" + url + "</a>");
			
			try {
				MailUtil.sendEmail(Utils.getParam(getRequest(), "email"), "注册验证地址", cont);
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//this.getRequest().setAttribute("sessionurl", this.getSessionUrl(null));
			//Utils.getSessionByRequest(getRequest()).setAttribute("user", this.cmsUserInfo);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/emailregok.jsp");
			
		}
		else {
			map = new HashMap();
			map.put("re", -1);
			map.put("word", "注册形式错误");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/preregist.jsp"); 
		}
	}
	
	/*
	 * 获取session中保留的url
	 */
	private String getSessionUrl(String url) {
		
		String su = (String) Utils.getSessionByRequest(getRequest()).getAttribute("sessionurl");
		this.getRequest().setAttribute("sessionurl", su);
		//if (su == null)
		//	return url;
		
		//Utils.getSessionByRequest(getRequest()).removeAttribute("sessionurl");
		//return su;
		return url;
	}
	
	
	
	/*
	 * 找回密码
	 */
	public String preLookPassword() {
		
		return Utils.returnServlet(getRequest(), getResponse(), new HashMap(), "/page/user/prepasswd.jsp", 1, "ok");
		
	}
	
	/*
	 * 找回密码  输入邮箱
	 */
	public String lookforPassword() {
		Map map = Utils.checkParamerts(getRequest(), "email,validnum");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prepasswd.jsp"); 
		}
		
		CmsUserInfoQuery q = new CmsUserInfoQuery();
		q.setEmail(this.cmsUserInfo.getEmail());
		Page p = this.cmsUserInfoManager.findPage(q);
		if (p.getResult().isEmpty() ) {
			map.put("re", -1);
			map.put("word", "用户不存在");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prepasswd.jsp"); 
		}
		
		this.cmsUserInfo = (CmsUserInfo) p.getResult().get(0);
		this.cmsUserInfo.setAddition(System.currentTimeMillis() + "");
		this.cmsUserInfoManager.update(this.cmsUserInfo);
		
		/*
		 * 发邮件
		 */
		String base = this.getRequest().getRequestURL().toString().split("lookforPassword.do")[0] + "lookforPasswordput.do";
		String url = base + "" + "?id=" + this.cmsUserInfo.getId() + "&lookforpassword=" + this.cmsUserInfo.getAddition();
		try {
			MailUtil.sendEmail(Utils.getParam(getRequest(), "email"), "请点击如下链接找回密码", "<a href='" + url + "'>" + url + "</a>");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		map.put("re", 1);
		map.put("word", "请查收邮件");
		return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prepasswd2.jsp"); 
	}
	
	/*
	 * 找回密码  输入新密码
	 */
	public String lookforPasswordput() {
		Map map = Utils.checkParamerts(getRequest(), "id,lookforpassword");
		
			map.put("re", 1);
			map.put("word", "请输入新密码");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prepasswd3.jsp"); 
	}
	
	/*
	 * 找回密码  输入新密码之后
	 */
	public String lookforPassword2() {
		Map map = Utils.checkParamerts(getRequest(), "id,passwd,repasswd,lookforpassword");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prepasswd2.jsp"); 
		}
		
		if (this.cmsUserInfo == null || StringUtils.isEmpty(Utils.getParam(getRequest(), "lookforpassword"))) {
			map.put("re", -1);
			map.put("word", "用户不存在");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prepasswd2.jsp"); 
		}
		
		//this.cmsUserInfo = this.cmsUserInfoManager.getById(Utils.getLongParam(getRequest(), "id"));
		String tmp = Utils.getParam(this.getRequest(), "lookforpassword");
		if (tmp.equalsIgnoreCase(this.cmsUserInfo.getAddition()) == false || System.currentTimeMillis()- Long.parseLong(tmp) > 1000*600 ) {
			map.put("re", -1);
			map.put("word", "验证参数已过期 ");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prepasswd2.jsp"); 
		}
		
		this.cmsUserInfo.setAddition(null);
		this.cmsUserInfo.setPasswd(Utils.getParam(getRequest(), "passwd"));
		this.cmsUserInfoManager.update(this.cmsUserInfo);
		return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prepasswd2.jsp", 1, "密码已修改");
	}

	
	/*
	 * 登录以前
	 */
	public String prelogin() {
		
		return Utils.returnServlet(getRequest(), getResponse(), new HashMap(), "/page/user/prelogin.jsp", 1, "ok");
		
	}
	
	
	/*
	 * 登录
	 */
	public String login() {
		Logger log = Logger.getLogger(getClass());
		Map map = Utils.checkParamerts(getRequest(), "moboremail,passwd,validnum");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prelogin.jsp"); 
		}
		
		CmsUserInfoQuery q = new CmsUserInfoQuery();
		q.setMoboremail(Utils.getParam(this.getRequest(), "moboremail"));
		Page p = this.cmsUserInfoManager.findPage(q);
		if (p.getResult().isEmpty() ) {
			map.put("re", -1);
			map.put("word", "用户不存在");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prelogin.jsp"); 
		}
		
		this.cmsUserInfo = (CmsUserInfo) p.getResult().get(0);
		if (this.cmsUserInfo.getPasswd().equalsIgnoreCase(Utils.getParam(getRequest(), "passwd")) == false) {
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prelogin.jsp", -1, "密码错误");
		}
		if (this.cmsUserInfo.getStatus() == null || this.cmsUserInfo.getStatus() <= 0) {
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prelogin.jsp", -1, "用户尚未激活或者被屏蔽");
		}
		
		
		KlSellerShopQuery qx = new KlSellerShopQuery();
		qx.setUserid(this.cmsUserInfo.getId());
		qx.setPageSize(1);
		//qx.setStatus(1);
		List list = this.klSellerShopManager.findPage(qx).getResult();
		
		if (list.isEmpty() == false) {
			log.info("fffffffffffffff yes" + this.cmsUserInfo.getId() );
			Utils.getSessionByRequest(getRequest()).setAttribute("sessionshop", list.get(0));
		}
		else {
			log.info("fffffffffffffff no!" + this.cmsUserInfo.getId());
			Utils.getSessionByRequest(getRequest()).removeAttribute("sessionshop");
		}
		
		
		CmsUserInfo user = (CmsUserInfo) p.getResult().get(0);
		
		map.put("user", user);
		map.put("lefttitle", "用户登录");
		
		if (user.getLastlogintime() != null) {
			Date last = new Date(user.getLastlogintime());
			int lastint = last.getYear() * 10000 + last.getMonth() * 100 + last.getDate();
			Date now = new Date();
			int nowint = now.getYear() * 10000 + now.getMonth() * 100 + now.getDate();
			if (nowint > lastint)
				PointUtils.setpoint(getRequest(), PointUtils.REASON_LOGIN);
		}
		else {
			PointUtils.setpoint(getRequest(), PointUtils.REASON_LOGIN);
		}
		user.setLastlogintime(System.currentTimeMillis());
		this.cmsUserInfo.setAddition(Md5.toMd5(this.cmsUserInfo.getId() + " " + this.cmsUserInfo.getLastlogintime()));
		this.cmsUserInfoManager.update(user);
		Utils.getSessionByRequest(getRequest()).setAttribute("user", this.cmsUserInfo);
		user.setPasswd(null);
		
		
//		String logurl = Utils.getParam(getRequest(), "logurl");
//		if (StringUtils.isNotEmpty(logurl)) {
//			this.getRequest().setAttribute("sessionurl", logurl);
//		}
		
		return Utils.returnServlet(getRequest(),getResponse(), map, getSessionUrl("/page/info.jsp"), 1, "登录成功");
		
	}
	
	
	/*
	 * 更新个人资料
	 */
	public String preprofile() {
		Map map = new HashMap();
		
		CtUserProvinceQuery pq = new CtUserProvinceQuery();
		pq.setPageSize(111111);
		pq.setSortColumns("img2 desc");
		Page page = this.ctUserProvinceManager.findPage(pq);
		map.put("provinces", page.getResult());
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		if (user == null)
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prelogin.jsp"); 
		user = this.cmsUserInfoManager.getById(user.getId());
		
		if (user == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/prelogin.jsp", -1, "您没有登录");
		map.put("user", user);
		
		//return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/preprofile.jsp", 1, "ok");
		//return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, Utils.getParam(getRequest(), "username"));
		return Utils.returnServlet(getRequest(),getResponse(), map, getSessionUrl("/page/user/preprofile.jsp"), 1, "");
	}
	
	public String updateProfile() {

		Map map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			
			map.put("word", "您没有登录.");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prelogin.jsp"); 
		}
		
		CtUserProvinceQuery pq = new CtUserProvinceQuery();
		pq.setPageSize(111111);
		pq.setSortColumns("img2 desc");
		Page page = this.ctUserProvinceManager.findPage(pq);
		
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		if (user == null ) {
			return Utils.returnServlet(getRequest(),getResponse(), map, "/user/login.jsp", -1, "请登录");
		}
		user = this.cmsUserInfoManager.getById(user.getId());
		
		
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "email")) &&
				Utils.getParam(getRequest(), "email").equalsIgnoreCase(user.getEmail()) == false) {
			//修改了邮箱
			CmsUserInfoQuery uq = new CmsUserInfoQuery();
			uq.setEmail(Utils.getParam(getRequest(), "email"));
			Page pp = this.cmsUserInfoManager.findPage(uq);
			if (pp.getTotalCount() > 0) {
//				CtUserProvinceQuery pq = new CtUserProvinceQuery();
//				pq.setPageSize(111111);
//				pq.setSortColumns("img2 desc");
//				Page page = this.ctUserProvinceManager.findPage(pq);
//				map.put("provinces", page.getResult());
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/preprofile.jsp", -1, "邮箱已经被使用");
			}
			
			map = Utils.checkParamerts(this.getRequest(), "email,emailvalidnum");
			if (map.isEmpty() == false ) {
				map.put("provinces", page.getResult());
				map.put("user", user);
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/preprofile.jsp", -1, "邮箱验证码错误");
			}
			
			this.cmsUserInfo.setEmail(Utils.getParam(getRequest(), "email"));
		}
		
		
		if (this.cmsUserInfo.getMobile() != null && !this.cmsUserInfo.getMobile().equalsIgnoreCase(user.getMobile())) {
			CmsUserInfoQuery uq = new CmsUserInfoQuery();
			uq.setMobile(Utils.getParam(getRequest(), "mobile"));
			Page pp = this.cmsUserInfoManager.findPage(uq);
			if (pp.getTotalCount() > 0) {
//				CtUserProvinceQuery pq = new CtUserProvinceQuery();
//				pq.setPageSize(111111);
//				pq.setSortColumns("img2 desc");
//				Page page = this.ctUserProvinceManager.findPage(pq);
//				map.put("provinces", page.getResult());
				map.put("provinces", page.getResult());
				map.put("user", user);
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/preprofile.jsp", -1, "手机号已经被使用" );
			}
			
			
			map = Utils.checkParamerts(getRequest(), "mobile");
			if (map.isEmpty() == false ) {
				map.put("re", -1);
//				CtUserProvinceQuery pq = new CtUserProvinceQuery();
//				pq.setPageSize(111111);
//				pq.setSortColumns("img2 desc");
//				Page page = this.ctUserProvinceManager.findPage(pq);
//				map.put("provinces", page.getResult());
				map.put("provinces", page.getResult());
				map.put("user", user);
				return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/preprofile.jsp"); 
			}
			
			map = Utils.checkParamerts(this.getRequest(), "mobile,mobilevalidnum");
			if (map.isEmpty() == false ) {
				map.put("provinces", page.getResult());
				map.put("user", user);
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/preprofile.jsp", -1, "手机验证码错误。");
			}
			
			this.cmsUserInfo.setMobile(Utils.getParam(getRequest(), "mobile"));
		}
		
		
		if (this.cmsUserInfo.getPhoto() != null && !this.cmsUserInfo.getPhoto().equalsIgnoreCase(user.getPhoto())) {
			String savePath = Utils.getSessionByRequest(getRequest()).getServletContext().getRealPath("/") + "";
			String format = ImageUtils.getFormat(this.cmsUserInfo.getPhoto());
			ImageUtils.zoomAndScale(savePath + this.cmsUserInfo.getPhoto(), savePath + "/attached/avt/" + user.getId() + "." + "jpg" , 100 , 100);
			Logger logger = Logger.getLogger(getClass());
			logger.info("xxxxxx----xxxxx:" + savePath + "/attached/avt/" + user.getId() + "." + format);
		}
		else {
		
		}
		
		
		/*
		this.cmsUserInfo = this.cmsUserInfoManager.getById(user.getId());
		this.cmsUserInfo.setEmail(Utils.getParam(getRequest(), "email"));
		this.cmsUserInfo.setRealName(Utils.getParam(getRequest(), "realName"));
		this.cmsUserInfo.setMobile(Utils.getParam(getRequest(), "mobile"));
		
		this.cmsUserInfo.setUsername(Utils.getParam(getRequest(), "username"));
		this.cmsUserInfo.setPhone(Utils.getParam(getRequest(), "phone"));
		this.cmsUserInfo.setAddress(Utils.getParam(getRequest(), "address"));
		this.cmsUserInfo.setPostCode(Utils.getParam(getRequest(), "postCode"));
		*/
		
		CtUserProvince pro = this.ctUserProvinceManager.getById(this.cmsUserInfo.getProvinceid());
		if (pro != null)
			this.cmsUserInfo.setProvince(pro.getName());
		CtUserCity city = this.ctUserCityManager.getById(this.cmsUserInfo.getCityid());
		if (city != null)
			this.cmsUserInfo.setCity(city.getName());
		CtUserQu qu = this.ctUserQuManager.getById(this.cmsUserInfo.getQuid());
		if (qu != null)
			this.cmsUserInfo.setQu(qu.getName());
		
		
		this.cmsUserInfoManager.update(this.cmsUserInfo);
		Utils.getSessionByRequest(getRequest()).setAttribute("user", this.cmsUserInfo);
		map.put("lefttitle", "修改资料");
		
		map.put("provinces", page.getResult());
		map.put("user", user);
		
		//return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, Utils.getParam(getRequest(), "username"));

		return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp", -2, "修改成功");
	}
	
	
	/*
	 * 手机号修改密码
	 */
	public String mobpasswd() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "mobile,mobilevalidnum,passwd");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
		}
		
		CmsUserInfoQuery q = new CmsUserInfoQuery();
		q.setMoboremail(Utils.getParam(this.getRequest(), "mobile"));
		List list = this.cmsUserInfoManager.queryTop(q);
		if (list == null || list.isEmpty())
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "用户不存在");
		
		CmsUserInfo user = (CmsUserInfo) list.get(0);
		user.setPasswd(Utils.getParam(getRequest(), "passwd"));
		this.cmsUserInfoManager.update(user);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "ok");
	}
	
	/*
	 * 修改密码
	 */
	public String premodpwd() {
		Map map = new HashMap();
		/*
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/modpwd.jsp"); 
		}
		
		map.put("user", Utils.getSessionByRequest(getRequest()).getAttribute("user"));
		*/
		return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/modpwd.jsp", 1, "");
		
	}
	
	public String modpwd() {
		Map map = null;
			map = Utils.checkParamerts(getRequest(), "mobile,passwd,repasswd,mobilevalidnum");
			if (map.isEmpty() == false ) {
				map.put("re", -1);
				return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/modpwd.jsp"); 
			}
			
			if (StringUtils.isEmpty(Utils.getParam(getRequest(), "mobile"))) {
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/modpwd.jsp", -1, "手机号或者邮箱不能为空");
			}
			
//			CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
//			if (Utils.getParam(getRequest(), "mobile").equalsIgnoreCase(user.getMobile()) == false	 ) {
//				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/user/modpwd.jsp", -1, "手机号输入错误");
//			}
			
			
			
			CmsUserInfoQuery q = new CmsUserInfoQuery();
			q.setMoboremail(Utils.getParam(getRequest(), "mobile"));
			logger.warn("mobile is:" + q.getMobile());
			
			Page p = this.cmsUserInfoManager.findPage(q);
			if (p.getResult().isEmpty() ) {
				map.put("re", -1);
				map.put("word", "用户不存在");
				return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/modpwd.jsp"); 
			}
			
			this.cmsUserInfo = (CmsUserInfo) p.getResult().get(0);
//			if (this.cmsUserInfo.getPasswd().equalsIgnoreCase(Utils.getParam(getRequest(), "oldpassword")) == false) {
//				return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/modpwd.jsp", -1, "旧密码错误");
//			}
			
			this.cmsUserInfo.setPasswd(Utils.getParam(getRequest(), "passwd"));
			this.cmsUserInfoManager.update(cmsUserInfo);
			map.put("lefttitle", "修改密码");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp", -2, "修改密码成功");
	}
	
	
	public String block() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/user/login.jsp"); 
		}
		
		if (this.cmsUserInfo != null) 
		{
			this.cmsUserInfo.setStatus(Utils.getIntParam(getRequest(), "status"));
			this.cmsUserInfoManager.update(this.cmsUserInfo);
		}
		
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/user/login.jsp", 1, "ok");
	}
	
	
	
	//用户显示首页
	public String showIndex() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "id");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/user/login.jsp"); 
		}  
		
		CmsCommonCommentQuery q = new CmsCommonCommentQuery();
		q.setPageNumber(Utils.getPageno(getRequest()));
		q.setUserid(id);
		//类型
		Page page = this.cmsCommonCommentManager.findPage(q);
		map.put("comments", page);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/user/showindex.jsp", 1, "ok");
		
	}
	
	
	
	public String smses() {
		String cont = Utils.getParam(getRequest(), "content");
		if (cont != null){
			
		}
//			try {
//				cont = new String(cont.getBytes("iso8859-1"), "utf-8");
//				
//			} catch (UnsupportedEncodingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
	
		String mobiles = Utils.getParam(getRequest(), "mobiles");
		String[] ms = mobiles.split("\n");
		
		Logger log = Logger.getLogger(getClass());
		log.warn("mobiles:" + mobiles + "    content:" + cont);
		
		for (int i = 0; i < ms.length; i ++) {
			String m = ms[i];
			 m = m.trim().replaceAll(" ", "");
			SmsUtils.sendSms(new String(m),cont );
		}
		
		return Utils.returnServlet(getRequest(), getResponse(), new HashMap(), "/admin/duanxins.jsp", 1, "发送完成");
	}
	
}












