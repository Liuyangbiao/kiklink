/*

 */

package com.kailian.glo.action;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import cn.org.rapid_framework.beanutils.BeanUtils;
import cn.org.rapid_framework.page.Page;
import cn.org.rapid_framework.web.scope.Flash;

import com.yebucuo.common.util.Json;
import com.yebucuo.util.Md5;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.bouncycastle.jce.provider.JCEMac.MD5;

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

/**
 * @author  wangdapeng
 * @version 1.0
 * @since 1.0
 */


public class CmsAdminuserAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsAdminuser/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsAdminuser/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsAdminuser/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsAdminuser/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsAdminuser/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsAdminuser/list.do";
	
	private ICmsAdminuserManager cmsAdminuserManager;
	
	private CmsAdminuser cmsAdminuser;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsAdminuser = new CmsAdminuser();
		} else {
			cmsAdminuser = (CmsAdminuser)cmsAdminuserManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsAdminuserManager(ICmsAdminuserManager manager) {
		this.cmsAdminuserManager = manager;
	}	
	
	public Object getModel() {
		return cmsAdminuser;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsAdminuserQuery query = newQuery(CmsAdminuserQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsAdminuserManager.findPage(query);
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
		CmsAdminuserQuery query = newQuery(CmsAdminuserQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsAdminuserManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsAdminuser.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsAdminuser.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsAdminuser.setCreateTime(new Date());
//		cmsAdminuser.setDeleted("0");
		
		Map map = new HashMap();
		int re = 1;
		
		if (StringUtils.isEmpty(this.cmsAdminuser.getUsername()) || StringUtils.isEmpty(this.cmsAdminuser.getPasswd())) {
			re = -1;
			map.put("word", "用户名、密码不能为空");
			this.getRequest().setAttribute("map", map);
			return CREATE_JSP;
		}
		
		CmsAdminuserQuery q = new CmsAdminuserQuery();
		q.setUsername(this.cmsAdminuser.getUsername());
		Page page = this.cmsAdminuserManager.findPage(q);
		if (page.getTotalCount() > 0) {
			re = -1;
			map.put("word", "用户名已经被占用");
			this.getRequest().setAttribute("map", map);
			return CREATE_JSP;
		}
		
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsAdminuser.setModifyuser(theuserid);
		}
		cmsAdminuser.setCreatetimelong(System.currentTimeMillis());
		cmsAdminuser.setModifytimelong(System.currentTimeMillis());
		cmsAdminuser.setStatus(0);
		
		this.cmsAdminuser.setPasswd(Md5.toMd5(this.cmsAdminuser.getPasswd()));
		
		cmsAdminuserManager.save(cmsAdminuser);
		if (this.cmsAdminuser.getUserGroupId() != null)
			this.cmsAdminuserManager.updateGroupUserCount(this.cmsAdminuser.getUserGroupId());
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			
			map.put("obj", cmsAdminuser);
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
			cmsAdminuser.setModifyuser(theuserid);
		}
		cmsAdminuser.setModifytimelong(System.currentTimeMillis());
		
		if (StringUtils.isNotEmpty(this.cmsAdminuser.getPasswd()) && this.cmsAdminuser.getPasswd().length() < 30)
			this.cmsAdminuser.setPasswd(Md5.toMd5(this.cmsAdminuser.getPasswd()));
		cmsAdminuserManager.update(this.cmsAdminuser);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsAdminuser);
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
						cmsAdminuser = cmsAdminuserManager.getById(Long.parseLong(id));
						if (cmsAdminuser != null) {
							//cmsAdminuser.setStatus(-1);
							//cmsAdminuserManager.update(cmsAdminuser);
							cmsAdminuserManager.removeById(cmsAdminuser.getId());
						}
					}
				}
				//cmsAdminuserManager.removeById(Long.parseLong(id));
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
	
	
	
	public String login() {
		Map map = new HashMap();
		int re = 1;
		
		String loginname = Utils.getParam(getRequest(), "loginname");
		String passwd = Utils.getParam(getRequest(), "passwd");
		
		if (StringUtils.isEmpty(loginname) || StringUtils.isEmpty(passwd)) {
			map.put("word", "用户名／密码错误");
			re = -1;
		}
		else {
			CmsAdminuserQuery query = newQuery(CmsAdminuserQuery.class,DEFAULT_SORT_COLUMNS);
			query.setUsername(loginname);
			query.setPasswd(passwd);
			
			Logger logger = Logger.getLogger(this.getClass());
			logger.warn("passwd:" + passwd);
			
			Page page = this.cmsAdminuserManager.findPage(query);
			if (page.getResult().size() <= 0) {
				map.put("word", "用户名／密码错误");
				re = -1;
			}
			else {
	
				map.put("adminuser", page.getResult().get(0));
				this.getRequest().setAttribute("adminuser", page.getResult().get(0));
				this.getRequest().getSession().setAttribute("adminuser", page.getResult().get(0));
			}
		}
		
		map.put("re", re);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			return writeAjaxResponse(Json.toJson(map));
		}
		else {
			this.getRequest().setAttribute("map", map);
			if (re >= 0)
				return "/admin/main.jsp";
			else 
				return "/admin/login.jsp";
		}
	}
	
	
	public String logout() {
		this.getRequest().getSession().setAttribute("adminuser", null);
		
		return "/admin/login.jsp";
	}

}


