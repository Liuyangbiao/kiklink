/*

 */

package com.kailian.glo.action;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import com.kailian.glo.vo.query.CmsBiaodanDetailQuery;
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


public class CmsArticleAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsArticle/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsArticle/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsArticle/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsArticle/edit.jsp";
	protected static final String SHOW_JSP = "/article/show2.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsArticle/list.do";
	
	private ICmsArticleManager cmsArticleManager;
	private ICmsBiaodanDetailManager cmsBiaodanDetailManager;
	private ICmsActivityManager cmsActivityManager;
	private ICmsActivityUserManager cmsActivityUserManager;


	public ICmsActivityUserManager getCmsActivityUserManager() {
		return cmsActivityUserManager;
	}

	public void setCmsActivityUserManager(
			ICmsActivityUserManager cmsActivityUserManager) {
		this.cmsActivityUserManager = cmsActivityUserManager;
	}

	public ICmsActivityManager getCmsActivityManager() {
		return cmsActivityManager;
	}

	public void setCmsActivityManager(ICmsActivityManager cmsActivityManager) {
		this.cmsActivityManager = cmsActivityManager;
	}

	public ICmsBiaodanDetailManager getCmsBiaodanDetailManager() {
		return cmsBiaodanDetailManager;
	}

	public void setCmsBiaodanDetailManager(
			ICmsBiaodanDetailManager cmsBiaodanDetailManager) {
		this.cmsBiaodanDetailManager = cmsBiaodanDetailManager;
	}

	private CmsArticle cmsArticle;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsArticle = new CmsArticle();
		} else {
			cmsArticle = (CmsArticle)cmsArticleManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsArticleManager(ICmsArticleManager manager) {
		this.cmsArticleManager = manager;
	}	
	
	public Object getModel() {
		return cmsArticle;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsArticleQuery query = newQuery(CmsArticleQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsArticleManager.findPage(query);
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
		CmsArticleQuery query = newQuery(CmsArticleQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsArticleManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsArticle.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsArticle.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsArticle.setCreateTime(new Date());
//		cmsArticle.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsArticle.setModifyuser(theuserid);
		}
		cmsArticle.setCreatetimelong(System.currentTimeMillis());
		cmsArticle.setModifytimelong(System.currentTimeMillis());
		cmsArticle.setStatus(0);
		
		cmsArticleManager.save(cmsArticle);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsArticle);
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
			cmsArticle.setModifyuser(theuserid);
		}
		cmsArticle.setModifytimelong(System.currentTimeMillis());
		
		
		cmsArticleManager.update(this.cmsArticle);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsArticle);
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
						cmsArticle = cmsArticleManager.getById(Long.parseLong(id));
						if (cmsArticle != null) {
							//cmsArticle.setStatus(-1);
							//cmsArticleManager.update(cmsArticle);
							cmsArticleManager.removeById(cmsArticle.getId());
						}
					}
				}
				//cmsArticleManager.removeById(Long.parseLong(id));
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
	
	
	////////////////////////////////////////////////////////////////////////////
	/*
	 * 准备新建文章
	 */
	public String preArticle() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prelogin.jsp"); 
		}
		
		if (this.cmsArticle != null) {
			map.put("article", this.cmsArticle);
			this.getRequest().setAttribute("article", this.cmsArticle);
		}
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/article/preshop.jsp", 1, "ok");
	}
	
	
	/*
	 * 新建文章或者修改文章
	 */
	public String saveArticle() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,channelId,title,content");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/article/article.jsp"); 
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		
		this.cmsArticle.setCreateuser(user.getId());
		this.cmsArticle.setCreatetimelong(System.currentTimeMillis());
		this.cmsArticleManager.saveOrUpdate(this.cmsArticle);
		
		
		CmsActivityQuery caq = new CmsActivityQuery();
		caq.setTargetId(this.cmsArticle.getId());
		caq.setTargetType(Utils.TYPE_ACTIVITY_COACH);
		Page p = this.cmsActivityManager.findPage(caq);
		if (p.getTotalCount() <= 0) {
			CmsActivity a = new CmsActivity();
			a.setTargetId(this.cmsArticle.getId());
			a.setTargetType(Utils.TYPE_ACTIVITY_COACH);
			
			this.cmsActivityManager.save(a);
			
			this.cmsArticle.setAddition(a.getId() + "");
			this.cmsArticleManager.update(this.cmsArticle);
		}
		
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/CmsArticle/myArticles.do", 1, "ok");
	}

	
	/*
	 * 我的文章
	 */
	public String myArticles() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/user/prelogin.jsp"); 
		}
		
		String[] delids = this.getRequest().getParameterValues("delids");
		if (delids != null && delids.length > 0) {
			
			for (int i = 0; i < delids.length; i ++) {
				this.cmsArticleManager.removeById(Long.parseLong(delids[i]));
			}
		}
		long delid = Utils.getLongParam(getRequest(), "delid");
		if (delid > 0) 
			this.cmsArticleManager.removeById(delid);
		
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		
		CmsArticleQuery aq = new CmsArticleQuery();
		String title = Utils.getParam(getRequest(), "title");
		String startd = Utils.getParam(getRequest(), "startd");
		String endd = Utils.getParam(getRequest(), "endd");
		if (StringUtils.isNotEmpty(title))
			aq.setTitile(title);

		if (StringUtils.isNotEmpty(startd) && startd.split("-").length > 2) {
			aq.setCreatetimelongstart(Utils.timetohaomiao(startd, "yyyy-MM-dd"));
			if (aq.getCreatetimelongstart() < 0)
				aq.setCreatetimelongstart(null);
		}
		if (StringUtils.isNotEmpty(endd) && endd.split("-").length > 2) {
			aq.setCreatetimelongend(Utils.timetohaomiao(endd, "yyyy-MM-dd"));
			if (aq.getCreatetimelongend() < 0)
				aq.setCreatetimelongend(null);
		}
		
		aq.setCreateuser(user.getId());
		Page page = this.cmsArticleManager.findPage(aq);
		map.put("page", page);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/article/myarticles.jsp", 1, "ok");
	}
	
	
	/*
	 * 文章精选
	 */
	public String jingxuan() {
		Map map = new HashMap();
		CmsArticleQuery aq = new CmsArticleQuery();
		aq.setPageNumber(Utils.getPageno(getRequest()));
		Page page = this.cmsArticleManager.findPage(aq);
		map.put("page", page);
		
		
		//焦点图
				CmsBiaodanDetailQuery q = new CmsBiaodanDetailQuery();
				q.setInputListId(new Long(14));
				q.setPageSize(100);
				q.setSortColumns("rank desc");
				List focus = this.cmsBiaodanDetailManager.queryTop(q);
				map.put("focus", focus);
		
		//推荐阅读
				q.setInputListId(new Long(15));
				q.setPageSize(100);
				q.setSortColumns("rank desc");
				List suggest = this.cmsBiaodanDetailManager.queryTop(q);
				map.put("suggest", suggest);
				
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/article/jingxuan.jsp", 1, "ok");
	}
	
	/*
	 * 删除文章
	 */
	public String delArticle() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/user/login.jsp"); 
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		this.cmsArticle = this.cmsArticleManager.getById(Utils.getLongParam(getRequest(), "id"));
		if (this.cmsArticle == null || user.getId().longValue() != this.cmsArticle.getCreateuser().longValue()) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/article/article.jsp", -1, "没有权限" + user.getId() + "," + this.cmsArticle.getCreateuser());
		}
		
		this.cmsArticleManager.removeById(this.cmsArticle.getId());
		return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/CmsArticle/myArticles.do", 1, "ok");
	}
	
	
	
	/*
	 * 频道文章
	 */
	public String channel() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "channelid");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/article/channel.jsp"); 
		}
		
		CmsArticleQuery aq = new CmsArticleQuery();
		aq.setChannelId(Utils.getLongParam(getRequest(), "channelid"));
		Page page = this.cmsArticleManager.findPage(aq);
		map.put("page", page);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/article/channel.jsp", 1, "ok"); 
	}
	
	/*
	 * 榜单
	 */
	public String bangdan() {
		Map map = new HashMap();
		
		for (long i = 3; i <= 5; i ++) {
			CmsArticleQuery aq = new CmsArticleQuery();
			aq.setChannelId(i);
			Page p = this.cmsArticleManager.findPage(aq);
			this.getRequest().setAttribute("list" + i, p.getResult());
		}
	
		CmsBiaodanDetailQuery bdq = new CmsBiaodanDetailQuery();
		bdq.setInputListId(new Long(3));
		Page p = this.cmsBiaodanDetailManager.findPage(bdq);
		this.getRequest().setAttribute("tuijian", p.getResult());
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/article/bangdan.jsp", 1, "ok");
	}
	
	
	
	/*
	 * 加入活动
	 */
	public String join() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(),getResponse(), map, "/user/login.jsp"); 
		}
		
		this.cmsArticle = this.cmsArticleManager.getById(Utils.getLongParam(getRequest(), "id"));
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		if (this.cmsArticle == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/user/login.jsp", -1, "参数错误");
		}
		
		CmsActivityUserQuery uq = new CmsActivityUserQuery();
		uq.setActivityid(Long.parseLong(this.cmsArticle.getAddition()));
		uq.setUserid(user.getId());
		Page p = this.cmsActivityUserManager.findPage(uq);
		if (p.getTotalCount() > 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/user/login.jsp", -1, "您已经报名过了");
		}
		else {
			CmsActivityUser au = new CmsActivityUser();
			au.setActivityid(Long.parseLong(this.cmsArticle.getAddition()));
			au.setUserid(user.getId());
			au.setUsername(user.getUsername());
			this.cmsActivityUserManager.save(au);
		}
		
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/user/login.jsp", 1, "加入成功");
	}
	
	
}













