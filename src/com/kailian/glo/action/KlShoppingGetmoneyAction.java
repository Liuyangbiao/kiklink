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
import com.kailian.glo.vo.query.KlShoppingGetmoneyQuery;
import com.kailian.glo.vo.query.KlShoppingShoppingcartproductQuery;
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


public class KlShoppingGetmoneyAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/KlShoppingGetmoney/query.jsp";
	protected static final String LIST_JSP= "/kailian/KlShoppingGetmoney/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlShoppingGetmoney/create2.jsp";
	protected static final String EDIT_JSP = "/kailian/KlShoppingGetmoney/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlShoppingGetmoney/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlShoppingGetmoney/list.do";
	
	private IKlShoppingGetmoneyManager klShoppingGetmoneyManager;
	private IKlSellerShopManager klSellerShopManager;
	private IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager;


	public IKlShoppingShoppingcartproductManager getKlShoppingShoppingcartproductManager() {
		return klShoppingShoppingcartproductManager;
	}

	public void setKlShoppingShoppingcartproductManager(
			IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager) {
		this.klShoppingShoppingcartproductManager = klShoppingShoppingcartproductManager;
	}

	public IKlSellerShopManager getKlSellerShopManager() {
		return klSellerShopManager;
	}

	public void setKlSellerShopManager(IKlSellerShopManager klSellerShopManager) {
		this.klSellerShopManager = klSellerShopManager;
	}
	private KlShoppingGetmoney klShoppingGetmoney;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klShoppingGetmoney = new KlShoppingGetmoney();
		} else {
			klShoppingGetmoney = (KlShoppingGetmoney)klShoppingGetmoneyManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlShoppingGetmoneyManager(IKlShoppingGetmoneyManager manager) {
		this.klShoppingGetmoneyManager = manager;
	}	
	
	public Object getModel() {
		return klShoppingGetmoney;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		KlShoppingGetmoneyQuery query = newQuery(KlShoppingGetmoneyQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingGetmoneyManager.findPage(query);
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
		KlShoppingGetmoneyQuery query = newQuery(KlShoppingGetmoneyQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingGetmoneyManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//klShoppingGetmoney.setCreateUser(yebucuoKgAdminuserManager2.getById(klShoppingGetmoney.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		klShoppingGetmoney.setCreateTime(new Date());
//		klShoppingGetmoney.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingGetmoney.setModifyuser(theuserid);
		}
		klShoppingGetmoney.setCreatetimelong(System.currentTimeMillis());
		klShoppingGetmoney.setModifytimelong(System.currentTimeMillis());
		klShoppingGetmoney.setStatus(0);
		int status = Utils.getIntParam(getRequest(), "status");
		if (status > 0)
			this.klShoppingGetmoney.setStatus(status);
		
		klShoppingGetmoneyManager.save(klShoppingGetmoney);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingGetmoney);
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
			klShoppingGetmoney.setModifyuser(theuserid);
		}
		klShoppingGetmoney.setModifytimelong(System.currentTimeMillis());
		
		
		klShoppingGetmoneyManager.update(this.klShoppingGetmoney);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingGetmoney);
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
						klShoppingGetmoney = klShoppingGetmoneyManager.getById(Long.parseLong(id));
						if (klShoppingGetmoney != null) {
							//klShoppingGetmoney.setStatus(-1);
							//klShoppingGetmoneyManager.update(klShoppingGetmoney);
							klShoppingGetmoneyManager.removeById(klShoppingGetmoney.getId());
						}
					}
				}
				//klShoppingGetmoneyManager.removeById(Long.parseLong(id));
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
	 * 申请提现
	 */
	public String premoney() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
		}
		
		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop); 
		
		
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();

		query.setShopid(shop.getId());
		//所有收入  以后需要调整
		//query.setStatusgt(0);
		//query.setStatus(null);
		query.setOrderStatus(Utils.STATUS_ORDER_PAYED);
		query.setExtInt4(Utils.STATUS_COACHTIME_CLASSED);
		float allincome = this.klShoppingShoppingcartproductManager.queryIncome(query);
		map.put("allincome", allincome);
		
		//已获取收入
		query.setStatus(Utils.STATUS_ORDER_SHOPGOTMONEY);
		query.setStatusgt(null);
		
		
		float gotincome = this.klShoppingShoppingcartproductManager.queryIncome(query);
		map.put("gotincome", gotincome);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/money/premoney.jsp", 1, "ok");
	}
	
	
	public String requestmoney() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop,mobilevalidnum");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop); 
		
		
		
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();

		query.setShopid(shop.getId());
		//所有收入  以后需要调整
		//query.setStatusgt(0);
		//query.setStatus(null);
		query.setOrderStatus(Utils.STATUS_ORDER_PAYED);
		float allincome = this.klShoppingShoppingcartproductManager.queryIncome(query);
		map.put("allincome", allincome);
		
		//已获取收入
		query.setStatus(Utils.STATUS_ORDER_SHOPGOTMONEY);
		query.setStatusgt(null);
		
		
		float gotincome = this.klShoppingShoppingcartproductManager.queryIncome(query);
		map.put("gotincome", gotincome);
		
		
		
		KlShoppingGetmoney g = new KlShoppingGetmoney();
		g.setUserid(user.getId());
		g.setUsername(g.getUsername());
		g.setShopid(shop.getId());
		g.setShopname(shop.getCompanyName());
		g.setMoney(allincome - gotincome);
		g.setExt1(Utils.getParam(getRequest(), "mobile"));
		g.setStatus(0);
		g.setCreatetimelong(System.currentTimeMillis());
		g.setPaytimelong(new Long(-1));
		
		this.klShoppingGetmoneyManager.save(g);
		
		this.klShoppingGetmoneyManager.updatePayStatus(shop.getId(), Utils.STATUS_ORDER_SHOPWAITINGMONEY);
		
		map.put("lefttitle", "申请提现");
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "请等待");
	}
}









