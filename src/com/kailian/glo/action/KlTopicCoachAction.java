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
import com.yebucuo.util.MessageUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.kailian.glo.vo.query.CmsStRhppeopleQuery;
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


public class KlTopicCoachAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/KlTopicCoach/query.jsp";
	protected static final String LIST_JSP= "/kailian/KlTopicCoach/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlTopicCoach/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlTopicCoach/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlTopicCoach/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	protected static final String MOBILE_INFO_JSP = "/mobile/topic/coach.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlTopicCoach/list.do";
	
	private IKlTopicCoachManager klTopicCoachManager;
	private ICmsStRhppeopleManager cmsStRhppeopleManager;
	
	public ICmsStRhppeopleManager getCmsStRhppeopleManager() {
		return cmsStRhppeopleManager;
	}

	public void setCmsStRhppeopleManager(
			ICmsStRhppeopleManager cmsStRhppeopleManager) {
		this.cmsStRhppeopleManager = cmsStRhppeopleManager;
	}

	public IKlTopicCoachManager getKlTopicCoachManager() {
		return klTopicCoachManager;
	}

	private KlTopicCoach klTopicCoach;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klTopicCoach = new KlTopicCoach();
		} else {
			klTopicCoach = (KlTopicCoach)klTopicCoachManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlTopicCoachManager(IKlTopicCoachManager manager) {
		this.klTopicCoachManager = manager;
	}	
	
	public Object getModel() {
		return klTopicCoach;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		KlTopicCoachQuery query = newQuery(KlTopicCoachQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klTopicCoachManager.findPage(query);
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
		KlTopicCoachQuery query = newQuery(KlTopicCoachQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klTopicCoachManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//klTopicCoach.setCreateUser(yebucuoKgAdminuserManager2.getById(klTopicCoach.getModifyuser()));
		this.getRequest().setAttribute("v", this.klTopicCoach);
		
		return SHOW_JSP;
	}
	
	public String mobileShow(){
		if (this.klTopicCoach == null)
			return Utils.returnServlet(getRequest(), getResponse(), null, "/page2/coach/info.jsp", -1, "教练不存在");
	
	
		CmsStRhppeopleQuery q = new CmsStRhppeopleQuery();
		q.setPid(new Long(0));
		q.setExt4(this.klTopicCoach.getId() + "");
		int count = this.cmsStRhppeopleManager.findPage(q).getTotalCount();

		Map map = new HashMap();
		map.put("loginuser", Utils.getSessionByRequest(getRequest()).getAttribute("user"));
		map.put("c" , this.klTopicCoach	);
		
		if (this.klTopicCoach.getCount() == null || count >= this.klTopicCoach.getCount().intValue()) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/mobile/topic/coach.jsp", -1, "该教练报名人数已满,不妨看看其他教练哦");
		}
		
		return Utils.returnServlet(getRequest(), getResponse(), map, MOBILE_INFO_JSP, 1, "ok");
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		klTopicCoach.setCreateTime(new Date());
//		klTopicCoach.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klTopicCoach.setModifyuser(theuserid);
		}
		klTopicCoach.setCreatetimelong(System.currentTimeMillis());
		klTopicCoach.setModifytimelong(System.currentTimeMillis());
		klTopicCoach.setStatus(0);
		
		klTopicCoachManager.save(klTopicCoach);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klTopicCoach);
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
			klTopicCoach.setModifyuser(theuserid);
		}
		klTopicCoach.setModifytimelong(System.currentTimeMillis());
		
		
		klTopicCoachManager.update(this.klTopicCoach);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klTopicCoach);
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
						klTopicCoach = klTopicCoachManager.getById(Long.parseLong(id));
						if (klTopicCoach != null) {
							//klTopicCoach.setStatus(-1);
							//klTopicCoachManager.update(klTopicCoach);
							klTopicCoachManager.removeById(klTopicCoach.getId());
						}
					}
				}
				//klTopicCoachManager.removeById(Long.parseLong(id));
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
	
	/** 修改状态 */
	public String updateStatus() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false ) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您没有权限");
		}
		
		if (this.klTopicCoach == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "资料不存在");
	
		int oldstatus = this.klTopicCoach.getStatus();
		
		this.klTopicCoach.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.klTopicCoachManager.update(klTopicCoach);
		
		

		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "操作成功");
	}
	
	//显示一个教练信息
	public String showcoach() {
		if (this.klTopicCoach == null)
			return Utils.returnServlet(getRequest(), getResponse(), null, "/page2/coach/info.jsp", -1, "教练不存在");
	
	
		CmsStRhppeopleQuery q = new CmsStRhppeopleQuery();
		q.setPid(new Long(0));
		q.setExt4(this.klTopicCoach.getId() + "");
		int count = this.cmsStRhppeopleManager.findPage(q).getTotalCount();

		Map map = new HashMap();
		map.put("loginuser", Utils.getSessionByRequest(getRequest()).getAttribute("user"));
		map.put("c" , this.klTopicCoach	);
		
		if (this.klTopicCoach.getCount() == null || count >= this.klTopicCoach.getCount().intValue()) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page2/topic/coach.jsp", -1, "该教练报名人数已满,不妨看看其他教练哦");
		}
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page2/topic/coach.jsp", 1, "ok");
	}

}


