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


public class CmsSurveyAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsSurvey/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsSurvey/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsSurvey/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsSurvey/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsSurvey/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsSurvey/list.do";
	
	private ICmsSurveyManager cmsSurveyManager;
	
	private CmsSurvey cmsSurvey;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsSurvey = new CmsSurvey();
		} else {
			cmsSurvey = (CmsSurvey)cmsSurveyManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsSurveyManager(ICmsSurveyManager manager) {
		this.cmsSurveyManager = manager;
	}	
	
	public Object getModel() {
		return cmsSurvey;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsSurveyQuery query = newQuery(CmsSurveyQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsSurveyManager.findPage(query);
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
		CmsSurveyQuery query = newQuery(CmsSurveyQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsSurveyManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsSurvey.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsSurvey.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsSurvey.setCreateTime(new Date());
//		cmsSurvey.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsSurvey.setModifyuser(theuserid);
		}
		cmsSurvey.setCreatetimelong(System.currentTimeMillis());
		cmsSurvey.setModifytimelong(System.currentTimeMillis());
		cmsSurvey.setStatus(0);
		
		cmsSurveyManager.save(cmsSurvey);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsSurvey);
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
			cmsSurvey.setModifyuser(theuserid);
		}
		cmsSurvey.setModifytimelong(System.currentTimeMillis());
		
		
		cmsSurveyManager.update(this.cmsSurvey);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsSurvey);
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
						cmsSurvey = cmsSurveyManager.getById(Long.parseLong(id));
						if (cmsSurvey != null) {
							//cmsSurvey.setStatus(-1);
							//cmsSurveyManager.update(cmsSurvey);
							cmsSurveyManager.removeById(cmsSurvey.getId());
						}
					}
				}
				//cmsSurveyManager.removeById(Long.parseLong(id));
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


