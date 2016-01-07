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
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;
import org.apache.commons.lang.StringUtils;

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


public class CmsTest1Action extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsTest1/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsTest1/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsTest1/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsTest1/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsTest1/show.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsTest1/list.do";
	
	private ICmsTest1Manager cmsTest1Manager;
	
	private CmsTest1 cmsTest1;
	java.lang.Long id = null;
	private String[] items;
	private String param;
	/*
	private IYebucuoKgAdminuserManager yebucuoKgAdminuserManager2;
	
	public void setYebucuoKgAdminuserManager2(
			IYebucuoKgAdminuserManager yebucuoKgAdminuserManager2) {
		this.yebucuoKgAdminuserManager2 = yebucuoKgAdminuserManager2;
	}
	*/
	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsTest1 = new CmsTest1();
		} else {
			cmsTest1 = (CmsTest1)cmsTest1Manager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsTest1Manager(ICmsTest1Manager manager) {
		this.cmsTest1Manager = manager;
	}	
	
	public Object getModel() {
		return cmsTest1;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsTest1Query query = newQuery(CmsTest1Query.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsTest1Manager.findPage(query);
		this.getRequest().setAttribute("pg", page);
		return LIST_JSP;
	}
	
	public String listAjax(){
		CmsTest1Query query = newQuery(CmsTest1Query.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsTest1Manager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsTest1.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsTest1.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsTest1.setCreateTime(new Date());
//		cmsTest1.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsTest1.setModifyuser(theuserid);
		}
		cmsTest1.setCreatetimelong(System.currentTimeMillis());
		cmsTest1.setModifytimelong(System.currentTimeMillis());
		cmsTest1.setStatus(0);
		
		cmsTest1Manager.save(cmsTest1);
		return LIST_ACTION;
	}
	
	/**进入更新页面*/
	public String edit() {
		return EDIT_JSP;
	}
	
	/**保存更新对象*/
	public String update() {
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsTest1.setModifyuser(theuserid);
		}
		cmsTest1.setModifytimelong(System.currentTimeMillis());
		
		
		cmsTest1Manager.update(this.cmsTest1);
		return LIST_ACTION;
	}
	
	/**删除对象*/
	public String delete() {
		if(items!=null)
			for(String ids:items){
				String[] idArray = ids.split(",");
				for(String id:idArray) {
					if (StringUtils.isNotEmpty(id) && StringUtils.isNumeric(id)) {
						cmsTest1 = cmsTest1Manager.getById(Long.parseLong(id));
						if (cmsTest1 != null) {
							//cmsTest1.setStatus(-1);
							//cmsTest1Manager.update(cmsTest1);
							cmsTest1Manager.removeById(cmsTest1.getId());
						}
					}
				}
				//cmsTest1Manager.removeById(Long.parseLong(id));
			}
		return LIST_ACTION;
	}

}


