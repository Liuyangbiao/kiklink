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


public class CmsStRehuopaiAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsStRehuopai/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsStRehuopai/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsStRehuopai/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsStRehuopai/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsStRehuopai/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsStRehuopai/list.do";
	
	private ICmsStRehuopaiManager cmsStRehuopaiManager;
	private ICmsStProductgroupManager cmsStProductgroupManager;
	private ICmsStProductinfoManager cmsStProductinfoManager;
	private ICmsStRhpotherdetailManager cmsStRhpotherdetailManager;
	private ICmsStRhppartnerManager cmsStRhppartnerManager;
	private ICmsGroupTopicManager cmsGroupTopicManager;

	public ICmsGroupTopicManager getCmsGroupTopicManager() {
		return cmsGroupTopicManager;
	}

	public void setCmsGroupTopicManager(ICmsGroupTopicManager cmsGroupTopicManager) {
		this.cmsGroupTopicManager = cmsGroupTopicManager;
	}

	public ICmsStRhpotherdetailManager getCmsStRhpotherdetailManager() {
		return cmsStRhpotherdetailManager;
	}

	public void setCmsStRhpotherdetailManager(
			ICmsStRhpotherdetailManager cmsStRhpotherdetailManager) {
		this.cmsStRhpotherdetailManager = cmsStRhpotherdetailManager;
	}

	public ICmsStRhppartnerManager getCmsStRhppartnerManager() {
		return cmsStRhppartnerManager;
	}

	public void setCmsStRhppartnerManager(
			ICmsStRhppartnerManager cmsStRhppartnerManager) {
		this.cmsStRhppartnerManager = cmsStRhppartnerManager;
	}

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
	private CmsStRehuopai cmsStRehuopai;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsStRehuopai = new CmsStRehuopai();
		} else {
			cmsStRehuopai = (CmsStRehuopai)cmsStRehuopaiManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsStRehuopaiManager(ICmsStRehuopaiManager manager) {
		this.cmsStRehuopaiManager = manager;
	}	
	
	public Object getModel() {
		return cmsStRehuopai;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsStRehuopaiQuery query = newQuery(CmsStRehuopaiQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsStRehuopaiManager.findPage(query);
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
		CmsStRehuopaiQuery query = newQuery(CmsStRehuopaiQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsStRehuopaiManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsStRehuopai.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsStRehuopai.getModifyuser()));
		this.getRequest().setAttribute("v", this.cmsStRehuopai);
		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsStRehuopai.setCreateTime(new Date());
//		cmsStRehuopai.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsStRehuopai.setModifyuser(theuserid);
		}
		cmsStRehuopai.setCreatetimelong(System.currentTimeMillis());
		cmsStRehuopai.setModifytimelong(System.currentTimeMillis());
		cmsStRehuopai.setStatus(0);
		
		cmsStRehuopaiManager.save(cmsStRehuopai);
		
		CmsStProductgroup g = new CmsStProductgroup();
		g.setTopicid(this.cmsStRehuopai.getId());
		g.setGrouptype(1000);
		g.setRank(-1000);
		g.setGroupname("还有其他好玩的");
		this.cmsStProductgroupManager.save(g);
		this.cmsStRehuopai.setExtInt2(g.getId().intValue());
		
//		CmsStProductgroup g = new CmsStProductgroup();
//		g.setTopicid(this.cmsStRehuopai.getId());
//		g.setGrouptype(1000);
//		g.setId(null);
//		g.setRank(-500);
//		g.setGroupname("其他详情");
//		this.cmsStProductgroupManager.save(g);
//		this.cmsStRehuopai.setExtInt2(g.getId().intValue());
		
//		g.setId(null);
//		g.setRank(-300);
//		g.setGroupname("合作伙伴");
//		this.cmsStProductgroupManager.save(g);
//		this.cmsStRehuopai.setExtInt3(g.getId().intValue());
		
		
		this.cmsStRehuopaiManager.update(this.cmsStRehuopai);
		
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsStRehuopai);
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
			cmsStRehuopai.setModifyuser(theuserid);
		}
		cmsStRehuopai.setModifytimelong(System.currentTimeMillis());
		
		
		cmsStRehuopaiManager.update(this.cmsStRehuopai);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsStRehuopai);
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
						cmsStRehuopai = cmsStRehuopaiManager.getById(Long.parseLong(id));
						if (cmsStRehuopai != null) {
							//cmsStRehuopai.setStatus(-1);
							//cmsStRehuopaiManager.update(cmsStRehuopai);
							cmsStRehuopaiManager.removeById(cmsStRehuopai.getId());
						}
					}
				}
				//cmsStRehuopaiManager.removeById(Long.parseLong(id));
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
		
		if (this.cmsStRehuopai == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "资料不存在");
	
		int oldstatus = this.cmsStRehuopai.getStatus();
		
		this.cmsStRehuopai.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.cmsStRehuopaiManager.update(cmsStRehuopai);
		
		

		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "操作成功");
	}

	
	
	
	/*
	 * 显示
	 */
//	public String rehuopai() {
//		Map map = new HashMap();
//		if (this.cmsStRehuopai == null )
//			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "");
//	
//		map.put("rhp", this.cmsStRehuopai);
//		
//		CmsStProductinfoQuery q2 = new CmsStProductinfoQuery();
//		q2.setPageSize(999999);
//		q2.setGroupid(new Long(this.cmsStRehuopai.getExtInt1()));
//		map.put("huoban", this.cmsStProductinfoManager.findPage(q2).getResult());
//		
//		q2.setGroupid(new Long(this.cmsStRehuopai.getExtInt2()));
//		map.put("qita", this.cmsStProductinfoManager.findPage(q2).getResult());
//		
//		q2.setGroupid(new Long(this.cmsStRehuopai.getExtInt3()));
//		map.put("xiangguan", this.cmsStProductinfoManager.findPage(q2).getResult());
//		
//		
//		
//		
//		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/rhp/rhp1.jsp", 1, "ok");
//		
//	
//	}
	
	
	public String rehuopai() {
		Map map = new HashMap();
		
		map.put("r", this.cmsStRehuopai);
		
		//合作伙伴
		CmsStRhppartnerQuery q1 = new CmsStRhppartnerQuery();
		q1.setPid(this.id);
		q1.setPageSize(999999);
		map.put("parts", this.cmsStRhppartnerManager.findPage(q1).getResult());

		//其他好玩
		CmsStRhpotherdetailQuery q2 = new CmsStRhpotherdetailQuery();
		q2.setPid(this.id);
		q2.setPageSize(999999);
		map.put("others", this.cmsStRhpotherdetailManager.findPage(q2).getResult());
		
		//相关推荐
		CmsStProductinfoQuery q3 = new CmsStProductinfoQuery();
		q3.setGroupid(new Long(this.cmsStRehuopai.getExtInt2()));
		q3.setPageSize(999999);
		map.put("tuijian", this.cmsStProductinfoManager.findPage(q3).getResult());

	
		//回顾
		CmsGroupTopicQuery q4 = new CmsGroupTopicQuery();
		q4.setPageSize(9999);
		q4.setGroupid(new Long(23));
		q4.setSortColumns("id desc");
		map.put("huigus", this.cmsGroupTopicManager.findPage(q4).getResult());
		
		
		if ("mob".equalsIgnoreCase(Utils.getParam(getRequest(), "mob")))
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/rhp/rhp1_a.jsp", 1, "ok");
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/rhp/rhp1.jsp", 1, "ok");
	}
	
	public String map() {
		Map map = new HashMap();
		map.put("r", this.cmsStRehuopai);
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/rhp/map.jsp", 1, "ok");
	}
	
	
}


