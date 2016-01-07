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


public class CmsCommonPointsAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsCommonPoints/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsCommonPoints/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsCommonPoints/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsCommonPoints/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsCommonPoints/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsCommonPoints/list.do";
	
	private ICmsCommonPointsManager cmsCommonPointsManager;
	
	private CmsCommonPoints cmsCommonPoints;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsCommonPoints = new CmsCommonPoints();
		} else {
			cmsCommonPoints = (CmsCommonPoints)cmsCommonPointsManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsCommonPointsManager(ICmsCommonPointsManager manager) {
		this.cmsCommonPointsManager = manager;
	}	
	
	public Object getModel() {
		return cmsCommonPoints;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsCommonPointsQuery query = newQuery(CmsCommonPointsQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsCommonPointsManager.findPage(query);
		
		if (query.getUserid() > 0) {
		String sql = "select sum(point) as sump from cms_common_points where userid=" + query.getUserid();
		Map re = this.cmsCommonPointsManager.selectSql(sql);
		//map.put("sumpoint", re.get("sump"));
			this.getRequest().setAttribute("sumpoint", re);
		}
		
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
		CmsCommonPointsQuery query = newQuery(CmsCommonPointsQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsCommonPointsManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsCommonPoints.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsCommonPoints.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsCommonPoints.setCreateTime(new Date());
//		cmsCommonPoints.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsCommonPoints.setModifyuser(theuserid);
		}
		cmsCommonPoints.setCreatetimelong(System.currentTimeMillis());
		cmsCommonPoints.setModifytimelong(System.currentTimeMillis());
		cmsCommonPoints.setStatus(0);
		
		cmsCommonPointsManager.save(cmsCommonPoints);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsCommonPoints);
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
			cmsCommonPoints.setModifyuser(theuserid);
		}
		cmsCommonPoints.setModifytimelong(System.currentTimeMillis());
		
		
		cmsCommonPointsManager.update(this.cmsCommonPoints);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsCommonPoints);
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
						cmsCommonPoints = cmsCommonPointsManager.getById(Long.parseLong(id));
						if (cmsCommonPoints != null) {
							//cmsCommonPoints.setStatus(-1);
							//cmsCommonPointsManager.update(cmsCommonPoints);
							cmsCommonPointsManager.removeById(cmsCommonPoints.getId());
						}
					}
				}
				//cmsCommonPointsManager.removeById(Long.parseLong(id));
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

	/*
	 * 用户积分
	 */
	public String points() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");

		CmsCommonPointsQuery q = new CmsCommonPointsQuery();
		int pageno = Utils.getIntParam(getRequest(), "pageno");
		if (pageno > 0)
			q.setPageNumber(pageno);
		q.setUserid(user.getId());
		q.setSortColumns("id desc");
		Page page = this.cmsCommonPointsManager.findPage(q);
		map.put("points", page);
		
		
		String sql = "select sum(point) as sump from cms_common_points where userid=" + user.getId();
		Map re = this.cmsCommonPointsManager.selectSql(sql);
		map.put("sumpoint", re.get("sump"));
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/point/points.jsp", 1, "ok");
	}
}


