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


public class CmsStSpecialtopicAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsStSpecialtopic/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsStSpecialtopic/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsStSpecialtopic/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsStSpecialtopic/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsStSpecialtopic/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsStSpecialtopic/list.do";
	
	private ICmsStSpecialtopicManager cmsStSpecialtopicManager;
	private ICmsStProductgroupManager cmsStProductgroupManager;
	private ICmsStProductinfoManager cmsStProductinfoManager;
	private IKlTopicCoachManager klTopicCoachManager;
	
	public ICmsStProductgroupManager getCmsStProductgroupManager() {
		return cmsStProductgroupManager;
	}

	public void setCmsStProductgroupManager(
			ICmsStProductgroupManager cmsStProductgroupManager) {
		this.cmsStProductgroupManager = cmsStProductgroupManager;
	}

	public ICmsStProductinfoManager getCmsStProductinfoManager() {
		return cmsStProductinfoManager;
	}

	public void setCmsStProductinfoManager(
			ICmsStProductinfoManager cmsStProductinfoManager) {
		this.cmsStProductinfoManager = cmsStProductinfoManager;
	}

	public ICmsStSpecialtopicManager getCmsStSpecialtopicManager() {
		return cmsStSpecialtopicManager;
	}

	public IKlTopicCoachManager getKlTopicCoachManager() {
		return klTopicCoachManager;
	}

	public void setKlTopicCoachManager(IKlTopicCoachManager klTopicCoachManager) {
		this.klTopicCoachManager = klTopicCoachManager;
	}




	private CmsStSpecialtopic cmsStSpecialtopic;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsStSpecialtopic = new CmsStSpecialtopic();
		} else {
			cmsStSpecialtopic = (CmsStSpecialtopic)cmsStSpecialtopicManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsStSpecialtopicManager(ICmsStSpecialtopicManager manager) {
		this.cmsStSpecialtopicManager = manager;
	}	
	
	public Object getModel() {
		return cmsStSpecialtopic;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsStSpecialtopicQuery query = newQuery(CmsStSpecialtopicQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsStSpecialtopicManager.findPage(query);
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
		CmsStSpecialtopicQuery query = newQuery(CmsStSpecialtopicQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsStSpecialtopicManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsStSpecialtopic.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsStSpecialtopic.getModifyuser()));
		this.getRequest().setAttribute("v", this.cmsStSpecialtopic);
		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
		
		
		
		
		
		
//		cmsStSpecialtopic.setCreateTime(new Date());
//		cmsStSpecialtopic.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsStSpecialtopic.setModifyuser(theuserid);
		}
		cmsStSpecialtopic.setCreatetimelong(System.currentTimeMillis());
		cmsStSpecialtopic.setModifytimelong(System.currentTimeMillis());
		cmsStSpecialtopic.setStatus(0);
		
		cmsStSpecialtopicManager.save(cmsStSpecialtopic);
		
		
		
		CmsStProductgroup g = new CmsStProductgroup();
		g.setGroupname("相关推荐");
		g.setRank(-1000);
		g.setGrouptype(-1000);
		g.setTopicid(this.cmsStSpecialtopic.getId());
		this.cmsStProductgroupManager.save(g);
		
		
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsStSpecialtopic);
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
			cmsStSpecialtopic.setModifyuser(theuserid);
		}
		cmsStSpecialtopic.setModifytimelong(System.currentTimeMillis());
		
		
		cmsStSpecialtopicManager.update(this.cmsStSpecialtopic);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsStSpecialtopic);
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
						cmsStSpecialtopic = cmsStSpecialtopicManager.getById(Long.parseLong(id));
						if (cmsStSpecialtopic != null) {
							//cmsStSpecialtopic.setStatus(-1);
							//cmsStSpecialtopicManager.update(cmsStSpecialtopic);
							cmsStSpecialtopicManager.removeById(cmsStSpecialtopic.getId());
						}
					}
				}
				//cmsStSpecialtopicManager.removeById(Long.parseLong(id));
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
		
		if (this.cmsStSpecialtopic == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "资料不存在");
	
		int oldstatus = this.cmsStSpecialtopic.getStatus();
		
		this.cmsStSpecialtopic.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.cmsStSpecialtopicManager.update(cmsStSpecialtopic);
		
		

		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "操作成功");
	}

	
	
	
	public String topic() {
		Map map = new HashMap();
		
		if (this.cmsStSpecialtopic == null)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "专题不存在");
		
		CmsStProductgroupQuery q1 = new CmsStProductgroupQuery();
		q1.setTopicid(this.id);
		q1.setSortColumns("rank desc");
		q1.setGrouptype(-1000);
		q1.setPageSize(1000);
		Page page = this.cmsStProductgroupManager.findPage(q1);
		for (int i = 0; i < page.getResult().size(); i ++) {
			CmsStProductgroup g = (CmsStProductgroup) page.getResult().get(i);
			List list = null;
			if(this.cmsStSpecialtopic.getTopictype() != null && this.cmsStSpecialtopic.getTopictype().intValue() == 4){
				KlTopicCoachQuery q2 = new KlTopicCoachQuery();
				q2.setExt1(g.getId()+"");
				
				q2.setSortColumns("extInt1 desc");
				q2.setPageSize(1000);
				list = this.klTopicCoachManager.findPage(q2).getResult();
			} else {
				
				CmsStProductinfoQuery q2 = new CmsStProductinfoQuery();
				q2.setGroupid(g.getId());
				
				q2.setSortColumns("rank desc");
				q2.setPageSize(1000);
				list = this.cmsStProductinfoManager.findPage(q2).getResult();
			}
			g.setInfoList(list);
			
			page.getResult().set(i, g);
		}
		
		map.put("topic", this.cmsStSpecialtopic);
		map.put("list", page.getResult());
		
		
		//专题2
		if (this.cmsStSpecialtopic.getTopictype() != null && this.cmsStSpecialtopic.getTopictype().intValue() == 2)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page2/topic/topic2.jsp", 1, "ok");
		//专题3
		if (this.cmsStSpecialtopic.getTopictype() != null && this.cmsStSpecialtopic.getTopictype().intValue() == 3)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page2/topic/topic3.jsp", 1, "ok");
		//专题4
		if (this.cmsStSpecialtopic.getTopictype() != null && this.cmsStSpecialtopic.getTopictype().intValue() == 4 ) {
			if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "mob")))
				return Utils.returnServlet(getRequest(), getResponse(), map, "/mobile/topic/topic1.jsp", 1, "ok");

			return Utils.returnServlet(getRequest(), getResponse(), map, "/page2/topic/topic4.jsp", 1, "ok");
			
		}
		//手机专题
//			if (this.cmsStSpecialtopic.getTopictype() != null && this.cmsStSpecialtopic.getTopictype().intValue() == 5)
//				return Utils.returnServlet(getRequest(), getResponse(), map, "/mobile/topic/topic1.jsp", 1, "ok");
		//专题1
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page2/topic/topic1.jsp", 1, "ok");
	}
	
	
	
	
}


