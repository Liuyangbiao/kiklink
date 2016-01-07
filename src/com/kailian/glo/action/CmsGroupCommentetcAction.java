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


public class CmsGroupCommentetcAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsGroupCommentetc/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsGroupCommentetc/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsGroupCommentetc/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsGroupCommentetc/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsGroupCommentetc/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsGroupCommentetc/list.do";
	
	private ICmsGroupCommentetcManager cmsGroupCommentetcManager;
	
	private CmsGroupCommentetc cmsGroupCommentetc;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsGroupCommentetc = new CmsGroupCommentetc();
		} else {
			cmsGroupCommentetc = (CmsGroupCommentetc)cmsGroupCommentetcManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsGroupCommentetcManager(ICmsGroupCommentetcManager manager) {
		this.cmsGroupCommentetcManager = manager;
	}	
	
	public Object getModel() {
		return cmsGroupCommentetc;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsGroupCommentetcQuery query = newQuery(CmsGroupCommentetcQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsGroupCommentetcManager.findPage(query);
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
		CmsGroupCommentetcQuery query = newQuery(CmsGroupCommentetcQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsGroupCommentetcManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsGroupCommentetc.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsGroupCommentetc.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsGroupCommentetc.setCreateTime(new Date());
//		cmsGroupCommentetc.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsGroupCommentetc.setModifyuser(theuserid);
		}
		cmsGroupCommentetc.setCreatetimelong(System.currentTimeMillis());
		cmsGroupCommentetc.setModifytimelong(System.currentTimeMillis());
		cmsGroupCommentetc.setStatus(0);
		
		cmsGroupCommentetcManager.save(cmsGroupCommentetc);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsGroupCommentetc);
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
			cmsGroupCommentetc.setModifyuser(theuserid);
		}
		cmsGroupCommentetc.setModifytimelong(System.currentTimeMillis());
		
		
		cmsGroupCommentetcManager.update(this.cmsGroupCommentetc);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsGroupCommentetc);
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
						cmsGroupCommentetc = cmsGroupCommentetcManager.getById(Long.parseLong(id));
						if (cmsGroupCommentetc != null) {
							//cmsGroupCommentetc.setStatus(-1);
							//cmsGroupCommentetcManager.update(cmsGroupCommentetc);
							cmsGroupCommentetcManager.removeById(cmsGroupCommentetc.getId());
						}
					}
				}
				//cmsGroupCommentetcManager.removeById(Long.parseLong(id));
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

}


