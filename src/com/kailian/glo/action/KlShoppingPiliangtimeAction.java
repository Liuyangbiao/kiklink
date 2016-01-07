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


public class KlShoppingPiliangtimeAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/KlShoppingPiliangtime/query.jsp";
	protected static final String LIST_JSP= "/kailian/KlShoppingPiliangtime/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlShoppingPiliangtime/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlShoppingPiliangtime/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlShoppingPiliangtime/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlShoppingPiliangtime/list.do";
	
	private IKlShoppingPiliangtimeManager klShoppingPiliangtimeManager;
	private IKlSellerProductManager klSellerProductManager ;
	
	private KlShoppingPiliangtime klShoppingPiliangtime;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public IKlSellerProductManager getKlSellerProductManager() {
		return klSellerProductManager;
	}

	public void setKlSellerProductManager(
			IKlSellerProductManager klSellerProductManager) {
		this.klSellerProductManager = klSellerProductManager;
	}

	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klShoppingPiliangtime = new KlShoppingPiliangtime();
		} else {
			klShoppingPiliangtime = (KlShoppingPiliangtime)klShoppingPiliangtimeManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlShoppingPiliangtimeManager(IKlShoppingPiliangtimeManager manager) {
		this.klShoppingPiliangtimeManager = manager;
	}	
	
	public Object getModel() {
		return klShoppingPiliangtime;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		KlShoppingPiliangtimeQuery query = newQuery(KlShoppingPiliangtimeQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingPiliangtimeManager.findPage(query);
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
		KlShoppingPiliangtimeQuery query = newQuery(KlShoppingPiliangtimeQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingPiliangtimeManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		
		KlSellerProduct pro = this.klSellerProductManager.getById(Utils.getLongParam(getRequest(), "ext1"));
		if (pro != null) {
			pro.setDescription(null);
			map.put("product", pro);
		}
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//klShoppingPiliangtime.setCreateUser(yebucuoKgAdminuserManager2.getById(klShoppingPiliangtime.getModifyuser()));
		this.getRequest().setAttribute("v", this.klShoppingPiliangtime);
		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		klShoppingPiliangtime.setCreateTime(new Date());
//		klShoppingPiliangtime.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingPiliangtime.setModifyuser(theuserid);
		}
		klShoppingPiliangtime.setCreatetimelong(System.currentTimeMillis());
		klShoppingPiliangtime.setModifytimelong(System.currentTimeMillis());
		klShoppingPiliangtime.setStatus(0);
		
		klShoppingPiliangtimeManager.save(klShoppingPiliangtime);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingPiliangtime);
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
			klShoppingPiliangtime.setModifyuser(theuserid);
		}
		klShoppingPiliangtime.setModifytimelong(System.currentTimeMillis());
		
		
		klShoppingPiliangtimeManager.update(this.klShoppingPiliangtime);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingPiliangtime);
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
						klShoppingPiliangtime = klShoppingPiliangtimeManager.getById(Long.parseLong(id));
						if (klShoppingPiliangtime != null) {
							//klShoppingPiliangtime.setStatus(-1);
							//klShoppingPiliangtimeManager.update(klShoppingPiliangtime);
							klShoppingPiliangtimeManager.removeById(klShoppingPiliangtime.getId());
						}
					}
				}
				//klShoppingPiliangtimeManager.removeById(Long.parseLong(id));
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
		
		if (this.klShoppingPiliangtime == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "资料不存在");
	
		int oldstatus = this.klShoppingPiliangtime.getStatus();
		
		this.klShoppingPiliangtime.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.klShoppingPiliangtimeManager.update(klShoppingPiliangtime);
		
		

		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "操作成功");
	}

	
	public String piliang() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(getRequest())
				.getAttribute("sessionshop");
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		
		
		
		
		long preproductid = Utils.getLongParam(getRequest(), "preproductid");
		KlSellerProduct pro = this.klSellerProductManager.getById(Utils.getLongParam(getRequest(), "ext1"));
		this.klShoppingPiliangtime.setExt2(pro.getName());
		
		String datefroms = Utils.getParam(getRequest(), "datefroms");
		String datetos = Utils.getParam(getRequest(), "datetos");
		if (StringUtils.isNotEmpty(datefroms)) {
			int datefrom = Integer.parseInt(datefroms.replaceAll("/", ""));
			this.klShoppingPiliangtime.setDatefrom(datefrom);
		}
		if (StringUtils.isNotEmpty(datetos)) {
			int dateto = Integer.parseInt(datetos.replaceAll("/", ""));
			this.klShoppingPiliangtime.setDateto(dateto);
		}
		
		String[] days = this.getRequest().getParameterValues("weekdays");
		if (days != null) {
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < days.length; i ++) {
				if (sb.length() > 0)
					sb.append(",");
				sb.append(days[i]);
			}
			this.klShoppingPiliangtime.setWeekdays(sb.toString());
		}
		
		this.klShoppingPiliangtime.setShopid(shop.getId());
		this.klShoppingPiliangtime.setUserid(user.getId());
		this.klShoppingPiliangtimeManager.save(klShoppingPiliangtime);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/KlShoppingPiliangtime/piliangs.do?preproductid=" + preproductid, 1, "ok");
		
	}
	
	public String piliangs() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		long preproductid = Utils.getLongParam(getRequest(), "preproductid");
		
		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(getRequest())
				.getAttribute("sessionshop");
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		
		long delid = Utils.getLongParam(getRequest(), "delid");
		if (delid > 0)
		{
			this.klShoppingPiliangtimeManager.removeById(delid);
		}
		
		KlSellerProductQuery pq = new KlSellerProductQuery();
		if (preproductid > 0)
			pq.setExt1(preproductid + "");
		
		pq.setShopId(shop.getId());
		pq.setPageSize(999999);
		pq.setStatus(1);
		List products = this.klSellerProductManager.queryTop(pq);
		map.put("products", products);
		
		KlShoppingPiliangtimeQuery query = new KlShoppingPiliangtimeQuery();
		if (preproductid > 0)
			query.setExt1(preproductid + "");
		query.setShopid(shop.getId());
		Page page = this.klShoppingPiliangtimeManager.findPage(query);
		map.put("page", page);
		
		if (preproductid > 0)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/time/piliang2.jsp", 1, "ok");
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/time/piliang.jsp", 1, "ok");
	}
	
	
	
}


