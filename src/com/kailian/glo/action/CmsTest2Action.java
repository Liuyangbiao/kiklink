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


public class CmsTest2Action extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsTest2/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsTest2/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsTest2/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsTest2/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsTest2/show.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsTest2/list.do";
	
	private ICmsTest2Manager cmsTest2Manager;
	
	private CmsTest2 cmsTest2;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsTest2 = new CmsTest2();
		} else {
			cmsTest2 = (CmsTest2)cmsTest2Manager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsTest2Manager(ICmsTest2Manager manager) {
		this.cmsTest2Manager = manager;
	}	
	
	public Object getModel() {
		return cmsTest2;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsTest2Query query = newQuery(CmsTest2Query.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsTest2Manager.findPage(query);
		this.getRequest().setAttribute("pg", page);
		return LIST_JSP;
	}
	
	public String listAjax(){
		CmsTest2Query query = newQuery(CmsTest2Query.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsTest2Manager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsTest2.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsTest2.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsTest2.setCreateTime(new Date());
//		cmsTest2.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsTest2.setModifyuser(theuserid);
		}
		cmsTest2.setCreatetimelong(System.currentTimeMillis());
		cmsTest2.setModifytimelong(System.currentTimeMillis());
		cmsTest2.setStatus(0);
		
		cmsTest2Manager.save(cmsTest2);
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
			cmsTest2.setModifyuser(theuserid);
		}
		cmsTest2.setModifytimelong(System.currentTimeMillis());
		
		
		cmsTest2Manager.update(this.cmsTest2);
		return LIST_ACTION;
	}
	
	/**删除对象*/
	public String delete() {
		if(items!=null)
			for(String ids:items){
				String[] idArray = ids.split(",");
				for(String id:idArray) {
					if (StringUtils.isNotEmpty(id) && StringUtils.isNumeric(id)) {
						cmsTest2 = cmsTest2Manager.getById(Long.parseLong(id));
						if (cmsTest2 != null) {
							//cmsTest2.setStatus(-1);
							//cmsTest2Manager.update(cmsTest2);
							cmsTest2Manager.removeById(cmsTest2.getId());
						}
					}
				}
				//cmsTest2Manager.removeById(Long.parseLong(id));
			}
		return LIST_ACTION;
	}

}


