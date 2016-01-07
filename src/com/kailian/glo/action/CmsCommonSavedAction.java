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
import com.yebucuo.util.PointUtils;
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


public class CmsCommonSavedAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsCommonSaved/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsCommonSaved/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsCommonSaved/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsCommonSaved/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsCommonSaved/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsCommonSaved/list.do";
	
	private ICmsCommonSavedManager cmsCommonSavedManager;
	private IKlSellerShopManager klSellerShopManager;
	private IKlSellerProductManager klSellerProductManager;

	public IKlSellerProductManager getKlSellerProductManager() {
		return klSellerProductManager;
	}

	public void setKlSellerProductManager(
			IKlSellerProductManager klSellerProductManager) {
		this.klSellerProductManager = klSellerProductManager;
	}

	public IKlSellerShopManager getKlSellerShopManager() {
		return klSellerShopManager;
	}

	public void setKlSellerShopManager(IKlSellerShopManager klSellerShopManager) {
		this.klSellerShopManager = klSellerShopManager;
	}

	private CmsCommonSaved cmsCommonSaved;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsCommonSaved = new CmsCommonSaved();
		} else {
			cmsCommonSaved = (CmsCommonSaved)cmsCommonSavedManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsCommonSavedManager(ICmsCommonSavedManager manager) {
		this.cmsCommonSavedManager = manager;
	}	
	
	public Object getModel() {
		return cmsCommonSaved;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsCommonSavedQuery query = newQuery(CmsCommonSavedQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsCommonSavedManager.findPage(query);
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
		CmsCommonSavedQuery query = newQuery(CmsCommonSavedQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsCommonSavedManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsCommonSaved.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsCommonSaved.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsCommonSaved.setCreateTime(new Date());
//		cmsCommonSaved.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsCommonSaved.setModifyuser(theuserid);
		}
		cmsCommonSaved.setCreatetimelong(System.currentTimeMillis());
		cmsCommonSaved.setModifytimelong(System.currentTimeMillis());
		cmsCommonSaved.setStatus(0);
		
		cmsCommonSavedManager.save(cmsCommonSaved);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsCommonSaved);
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
			cmsCommonSaved.setModifyuser(theuserid);
		}
		cmsCommonSaved.setModifytimelong(System.currentTimeMillis());
		
		
		cmsCommonSavedManager.update(this.cmsCommonSaved);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsCommonSaved);
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
						cmsCommonSaved = cmsCommonSavedManager.getById(Long.parseLong(id));
						if (cmsCommonSaved != null) {
							//cmsCommonSaved.setStatus(-1);
							//cmsCommonSavedManager.update(cmsCommonSaved);
							cmsCommonSavedManager.removeById(cmsCommonSaved.getId());
						}
					}
				}
				//cmsCommonSavedManager.removeById(Long.parseLong(id));
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
	 * 我的收藏
	 */
	public String mysave() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("lefttitle", "我的收藏");
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, (String)map.get("word"));
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");

		
		for (int i = 0; i < 3; i ++) {
			int type = Utils.TYPE_TARGET_SHOP;
			if (i != 0)
				type = Utils.TYPE_TARGET_PRODUCT;
			
			CmsCommonSavedQuery q = new CmsCommonSavedQuery();
			q.setTargetType(type);
			q.setUserid(user.getId());
			
			if (Utils.getIntParam(getRequest(), "now") == i)
				q.setPageNumber(Utils.getIntParam(getRequest(), "pageno"));
			
			Page p = this.cmsCommonSavedManager.findPage(q);
			map.put("page" + i, p);
		}
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/save/mysave.jsp", 1, "ok");
	}
	
	public String mysavetype() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("lefttitle", "我的收藏");
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, (String)map.get("word"));
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		if (user == null)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您没有登录");
		
		CmsCommonSavedQuery q = new CmsCommonSavedQuery();
		q.setTargetType(Utils.getIntParam(getRequest(), "type"));
		q.setUserid(user.getId());
		long targetId = Utils.getLongParam(getRequest(), "targetId");
		if (targetId > 0)
			q.setTargetId(targetId);
		
		q.setPageNumber(Utils.getPageno(getRequest()));
		
		Page p = this.cmsCommonSavedManager.findPage(q);
		map.put("page", p);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/save/mysave.jsp", 1, "ok");
	}
	
	/*
	 * 添加收藏
	 */
	public String addSave() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("lefttitle", "我的收藏");
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, (String)map.get("word"));
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		
		
		CmsCommonSavedQuery q = new CmsCommonSavedQuery();
		q.setUserid(user.getId());
		q.setTargetId(Utils.getLongParam(getRequest(), "targetId"));
		q.setTargetType(Utils.getIntParam(getRequest(), "type"));
		List l = this.cmsCommonSavedManager.queryTop(q);
		if (l != null && l.size() > 0)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "请勿重复收藏");
		
		CmsCommonSaved s = new CmsCommonSaved();
		s.setUserid(user.getId());
		s.setUsername(user.getUsername());
		s.setUserphoto(user.getPhoto());
		s.setCreatetimelong(System.currentTimeMillis());
		
		s.setTargetId(Utils.getLongParam(getRequest(), "targetId"));
		s.setTargetType(Utils.getIntParam(getRequest(), "type"));
		if (s.getTargetType() == Utils.TYPE_TARGET_SHOP) {
			KlSellerShop shop = this.klSellerShopManager.getById(s.getTargetId());
			s.setTargetName(shop.getShopName());
			s.setTargetPhoto(shop.getLogo());
			PointUtils.setpoint(getRequest(), PointUtils.REASON_SAVESHOP);
			
			map.put("save", s);
		}
		else if (s.getTargetType() == Utils.TYPE_TARGET_PRODUCT) {
			KlSellerProduct p = this.klSellerProductManager.getById(s.getTargetId());
			s.setTargetName(p.getName());
			s.setTargetPhoto(p.getPhoto());
			Map mapx = new HashMap();
			map.put("price", p.getPrice());
			map.put("subname", p.getSubname());
			s.setAddition(Utils.toJson(mapx));
			PointUtils.setpoint(getRequest(), PointUtils.REASON_SAVEPRODUCT);
			
			map.put("save", s);
		}
		
		this.cmsCommonSavedManager.save(s);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "ok");
	}
	
	
	//删除收藏
	public String deleteSave() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("lefttitle", "删除收藏");
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, (String)map.get("word"));
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		if (this.cmsCommonSaved == null || this.cmsCommonSaved.getUserid() == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "收藏不存在");
		}
		if (this.cmsCommonSaved.getUserid().longValue() != user.getId().longValue()) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您没有操作权限删除该记录");
		}
		this.cmsCommonSavedManager.removeById(this.cmsCommonSaved.getId());
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "ok");
	}

}


