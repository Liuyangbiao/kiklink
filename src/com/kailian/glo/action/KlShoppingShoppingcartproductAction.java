/*

 */

package com.kailian.glo.action;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
import com.yebucuo.sigleton.CountSingleton;
import com.yebucuo.util.ImportUtils;
import com.yebucuo.util.JSTLDateUtils;
import com.yebucuo.util.MessageUtils;
import com.yebucuo.util.SmsUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.alipay.util.AlipayNotify;
import com.ibatis.sqlmap.engine.type.SimpleDateFormatter;
import com.kailian.glo.vo.query.CmsCommonSavedQuery;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.kailian.glo.vo.query.KlSellerProductQuery;
import com.kailian.glo.vo.query.KlSellerShopQuery;
import com.kailian.glo.vo.query.KlShoppingOrderQuery;
import com.kailian.glo.vo.query.KlShoppingShoppingcartproductQuery;
import com.kailian.glo.vo.query.KlShoppingTrainningsummaryQuery;
import com.kailian.glo.vo.query.KlTrainningRecordQuery;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;
import java.util.logging.SimpleFormatter;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

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
import com.yebucuo.util.mail.MailUtil;

/**
 * @author wangdapeng
 * @version 1.0
 * @since 1.0
 */

public class KlShoppingShoppingcartproductAction extends BaseStruts2Action
		implements Preparable, ModelDriven {
	// 默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null;

	// forward paths
	protected static final String QUERY_JSP = "/kailian/KlShoppingShoppingcartproduct/query.jsp";
	protected static final String LIST_JSP = "/kailian/KlShoppingShoppingcartproduct/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlShoppingShoppingcartproduct/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlShoppingShoppingcartproduct/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlShoppingShoppingcartproduct/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	// redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlShoppingShoppingcartproduct/list.do";

	private IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager;
	private IKlShoppingOrderManager klShoppingOrderManager;
	private IKlSellerProductManager klSellerProductManager;
	private IKlSellerCardManager klSellerCardManager;
	private IKlSellerShopManager klSellerShopManager;
	private IKlShoppingGetmoneyManager klShoppingGetmoneyManager;
	private IKlShoppingCardManager klShoppingCardManager;
	private IKlShoppingTrainningsummaryManager klShoppingTrainningsummaryManager;
	private ICmsCommonSavedManager cmsCommonSavedManager;
	private IKlTrainningRecordManager klTrainningRecordManager;
	private ICmsCommonPointsManager cmsCommonPointsManager;
	private ICmsGroupManager cmsGroupManager;
	private ICmsGroupTopicManager cmsGroupTopicManager;
	private IKlShoppingCarthistoryManager klShoppingCarthistoryManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	private ICmsStRhppeopleManager cmsStRhppeopleManager; 
	private IKlTopicCoachManager klTopicCoachManager;

	public IKlTopicCoachManager getKlTopicCoachManager() {
		return klTopicCoachManager;
	}

	public void setKlTopicCoachManager(IKlTopicCoachManager klTopicCoachManager) {
		this.klTopicCoachManager = klTopicCoachManager;
	}

	public ICmsStRhppeopleManager getCmsStRhppeopleManager() {
		return cmsStRhppeopleManager;
	}

	public void setCmsStRhppeopleManager(
			ICmsStRhppeopleManager cmsStRhppeopleManager) {
		this.cmsStRhppeopleManager = cmsStRhppeopleManager;
	}

	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public IKlSellerCardManager getKlSellerCardManager() {
		return klSellerCardManager;
	}

	public void setKlSellerCardManager(IKlSellerCardManager klSellerCardManager) {
		this.klSellerCardManager = klSellerCardManager;
	}

	public IKlShoppingCardManager getKlShoppingCardManager() {
		return klShoppingCardManager;
	}

	public void setKlShoppingCardManager(
			IKlShoppingCardManager klShoppingCardManager) {
		this.klShoppingCardManager = klShoppingCardManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}

	public IKlShoppingCarthistoryManager getKlShoppingCarthistoryManager() {
		return klShoppingCarthistoryManager;
	}

	public void setKlShoppingCarthistoryManager(
			IKlShoppingCarthistoryManager klShoppingCarthistoryManager) {
		this.klShoppingCarthistoryManager = klShoppingCarthistoryManager;
	}

	public ICmsGroupManager getCmsGroupManager() {
		return cmsGroupManager;
	}

	public void setCmsGroupManager(ICmsGroupManager cmsGroupManager) {
		this.cmsGroupManager = cmsGroupManager;
	}

	public ICmsGroupTopicManager getCmsGroupTopicManager() {
		return cmsGroupTopicManager;
	}

	public void setCmsGroupTopicManager(
			ICmsGroupTopicManager cmsGroupTopicManager) {
		this.cmsGroupTopicManager = cmsGroupTopicManager;
	}

	public ICmsCommonPointsManager getCmsCommonPointsManager() {
		return cmsCommonPointsManager;
	}

	public void setCmsCommonPointsManager(
			ICmsCommonPointsManager cmsCommonPointsManager) {
		this.cmsCommonPointsManager = cmsCommonPointsManager;
	}

	public void setKlTrainningRecordManager(IKlTrainningRecordManager manager) {
		this.klTrainningRecordManager = manager;
	}

	public ICmsCommonSavedManager getCmsCommonSavedManager() {
		return cmsCommonSavedManager;
	}

	public void setCmsCommonSavedManager(
			ICmsCommonSavedManager cmsCommonSavedManager) {
		this.cmsCommonSavedManager = cmsCommonSavedManager;
	}

	public IKlShoppingTrainningsummaryManager getKlShoppingTrainningsummaryManager() {
		return klShoppingTrainningsummaryManager;
	}

	public void setKlShoppingTrainningsummaryManager(
			IKlShoppingTrainningsummaryManager klShoppingTrainningsummaryManager) {
		this.klShoppingTrainningsummaryManager = klShoppingTrainningsummaryManager;
	}

	public IKlShoppingGetmoneyManager getKlShoppingGetmoneyManager() {

		return klShoppingGetmoneyManager;
	}

	public void setKlShoppingGetmoneyManager(
			IKlShoppingGetmoneyManager klShoppingGetmoneyManager) {
		this.klShoppingGetmoneyManager = klShoppingGetmoneyManager;
	}

	public IKlSellerShopManager getKlSellerShopManager() {
		return klSellerShopManager;
	}

	public void setKlSellerShopManager(IKlSellerShopManager klSellerShopManager) {
		this.klSellerShopManager = klSellerShopManager;
	}

	public IKlSellerProductManager getKlSellerProductManager() {
		return klSellerProductManager;
	}

	public void setKlSellerProductManager(
			IKlSellerProductManager klSellerProductManager) {
		this.klSellerProductManager = klSellerProductManager;
	}

	public IKlShoppingOrderManager getKlShoppingOrderManager() {
		return klShoppingOrderManager;
	}

	public void setKlShoppingOrderManager(
			IKlShoppingOrderManager klShoppingOrderManager) {
		this.klShoppingOrderManager = klShoppingOrderManager;
	}

	private KlShoppingShoppingcartproduct klShoppingShoppingcartproduct;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	public void setParam(String param) {
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klShoppingShoppingcartproduct = new KlShoppingShoppingcartproduct();
		} else {
			klShoppingShoppingcartproduct = (KlShoppingShoppingcartproduct) klShoppingShoppingcartproductManager
					.getById(id);
		}
	}

	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlShoppingShoppingcartproductManager(
			IKlShoppingShoppingcartproductManager manager) {
		this.klShoppingShoppingcartproductManager = manager;
	}

	public Object getModel() {
		return klShoppingShoppingcartproduct;
	}

	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}

	/*
	 * 系统自动执行 超过48小时没有确认预约
	 */
	public String auto() {
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
		query.setStatus(Utils.STATUS_ORDER_PAYED);
		query.setExtInt4(Utils.STATUS_COACHTIME_WAITINGCONFIRM);
		query.setModifytimelongstart(System.currentTimeMillis() - 3600 * 24 * 2);
		query.setPageSize(10000);
		List list = this.klShoppingShoppingcartproductManager.queryTop(query);

		// 自动确认
		for (int i = 0; i < list.size(); i++) {
			KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) list
					.get(i);
			p.setExtInt4(Utils.STATUS_COACHTIME_CONFIRMD);
			p.setModifytimelong(System.currentTimeMillis());
			this.klShoppingShoppingcartproductManager.update(p);

			String s = "您预约的课 程"
					// + p.getProductName()
					+ "已被确认,预约码"
					+ p.getExtInt5()
					+ ",时间"
					+ JSTLDateUtils.coachTime(p.getExtInt3(), p.getExtInt1(),
							p.getExtInt2());
			CmsUserInfo u = this.cmsUserInfoManager.getById(p.getUserid());
			if (u != null) {
				MessageUtils.sendSystemMessage(u.getId(), s);
				CountSingleton.addCount(u.getId(), "user", "message", 1);

				if (StringUtils.isNotEmpty(u.getMobile()))
					SmsUtils.sendSms(u.getMobile(), s);
				if (StringUtils.isNotEmpty(u.getEmail()))
					try {
						MailUtil.sendEmail(u.getEmail(), "开练网预约成功信", s);
					} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
		}

		return writeAjaxResponse("ok");
	}

	/** 执行搜索 */
	public String list() {
		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);

		if (Utils.getLongParam(getRequest(), "shopid") > 0) {
			KlShoppingShoppingcartproductQuery mq = new KlShoppingShoppingcartproductQuery();
			mq.setShopid(Utils.getLongParam(this.getRequest(), "shopid"));
			// 所有收入 以后需要调整
			// query.setStatusgt(0);
			// query.setStatus(null);
			mq.setOrderStatus(Utils.STATUS_ORDER_PAYED);
			mq.setExtInt4(Utils.STATUS_COACHTIME_CLASSED);
			float allincome = this.klShoppingShoppingcartproductManager
					.queryIncome(mq);
			this.getRequest().setAttribute("allincome", allincome);

			// 已获取收入
			/*
			 * mq.setStatus(Utils.STATUS_ORDER_SHOPGOTMONEY);
			 * mq.setStatusgt(null);
			 * 
			 * float gotincome = this.klShoppingShoppingcartproductManager
			 * .queryIncome(mq); this.getRequest().setAttribute("gotincome",
			 * gotincome);
			 */
		}

		
		//query.setExtInt4(Utils.STATUS_COACHTIME_WAITINGCONFIRM);
		Page page = klShoppingShoppingcartproductManager.findPage(query);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("pg", page);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			this.getRequest().setAttribute("pg", page);
			return LIST_JSP;
		}
	}

	public String listAjax() {
		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingShoppingcartproductManager.findPage(query);
		for (int i = 0; i < page.getResult().size(); i++) {
			KlShoppingShoppingcartproduct pp = (KlShoppingShoppingcartproduct) page
					.getResult().get(i);
			pp.setAddition(null);
			page.getResult().set(i, pp);
		}
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		map.put("page", page);

		return writeAjaxResponse(Json.toJson(map));
	}

	/** 查看对象 */
	public String show() {
		// klShoppingShoppingcartproduct.setCreateUser(yebucuoKgAdminuserManager2.getById(klShoppingShoppingcartproduct.getModifyuser()));

		return SHOW_JSP;
	}

	/** 进入新增页面 */
	public String create() {
		return CREATE_JSP;
	}

	/** 保存新增对象 */
	public String save() {
		// klShoppingShoppingcartproduct.setCreateTime(new Date());
		// klShoppingShoppingcartproduct.setDeleted("0");

		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingShoppingcartproduct.setModifyuser(theuserid);
		}
		klShoppingShoppingcartproduct.setCreatetimelong(System
				.currentTimeMillis());
		klShoppingShoppingcartproduct.setModifytimelong(System
				.currentTimeMillis());
		klShoppingShoppingcartproduct.setStatus(0);

		klShoppingShoppingcartproductManager
				.save(klShoppingShoppingcartproduct);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingShoppingcartproduct);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return OK_JSP;
		}
	}

	/** 进入更新页面 */
	public String edit() {
		return EDIT_JSP;
	}

	/** 保存更新对象 */
	public String update() {
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingShoppingcartproduct.setModifyuser(theuserid);
		}
		klShoppingShoppingcartproduct.setModifytimelong(System
				.currentTimeMillis());

		klShoppingShoppingcartproductManager
				.update(this.klShoppingShoppingcartproduct);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingShoppingcartproduct);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return OK_JSP;
		}
	}

	/** 删除对象 */
	public String delete() {
		if (items != null)
			for (String ids : items) {
				String[] idArray = ids.split(",");
				for (String id : idArray) {
					if (StringUtils.isNotEmpty(id) && StringUtils.isNumeric(id)) {
						klShoppingShoppingcartproduct = klShoppingShoppingcartproductManager
								.getById(Long.parseLong(id));
						if (klShoppingShoppingcartproduct != null) {
							// klShoppingShoppingcartproduct.setStatus(-1);
							// klShoppingShoppingcartproductManager.update(klShoppingShoppingcartproduct);
							klShoppingShoppingcartproductManager
									.removeById(klShoppingShoppingcartproduct
											.getId());
						}
					}
				}
				// klShoppingShoppingcartproductManager.removeById(Long.parseLong(id));
			}

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("re", 1);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return LIST_ACTION;
		}
	}

	// /////////////////////////////////////////////
	// 以下后台操作
	// 更改状态
	public String updateStatus() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您没有权限");
		}

		if (this.klShoppingShoppingcartproduct == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "资料不存在");

		int oldstatus = this.klShoppingShoppingcartproduct.getStatus();

		this.klShoppingShoppingcartproduct.setStatus(Utils.getIntParam(
				getRequest(), "status"));
		this.klShoppingShoppingcartproductManager
				.update(klShoppingShoppingcartproduct);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "操作成功");
	}

	public String closebyshop() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		if (this.klShoppingShoppingcartproduct == null
				|| this.klShoppingShoppingcartproduct.getStatus() < Utils.STATUS_ORDER_PAYED) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "暂时无法关闭该订单");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		if (this.klShoppingShoppingcartproduct.getShopid().longValue() != shop
				.getId().longValue()) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您无权关闭该订单");
		}

		this.klShoppingShoppingcartproduct
				.setStatus(Utils.STATUS_ORDER_SHOPCLOSEPENDING);
		this.klShoppingShoppingcartproductManager
				.update(this.klShoppingShoppingcartproduct);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"!/kailian/KlShoppingShoppingcartproduct/orders.do", 1, "ok");
	}

	/**
	 * 订单列表 商家
	 * */
	public String orders() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
		query.setStatus(Utils.STATUS_ORDER_PAYED);

		String startd = Utils.getParam(getRequest(), "startd");
		String endd = Utils.getParam(getRequest(), "endd");

		if (StringUtils.isNotEmpty(startd) && startd.split("-").length > 2) {
			query.setCreatetimelongstart(Utils.timetohaomiao(startd,
					"yyyy-MM-dd"));
			if (query.getCreatetimelongstart() < 0)
				query.setCreatetimelongstart(null);
		}
		if (StringUtils.isNotEmpty(endd) && endd.split("-").length > 2) {
			query.setCreatetimelongend(Utils.timetohaomiao(endd, "yyyy-MM-dd"));
			if (query.getCreatetimelongend() < 0)
				query.setCreatetimelongend(null);
		}
		int classType = Utils.getIntParam(getRequest(), "classType");
		if (classType > 0) {
			query.setClassType(classType);
		}
		String ext1 = Utils.getParam(getRequest(), "ext1");
		if (StringUtils.isNotEmpty(ext1) && !"客户".equalsIgnoreCase(ext1))
			query.setExt1(ext1);

		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		else
			query.setSortColumns("id desc");
		query.setOrderStatusFrom(1);
		query.setShopid(shop.getId());
		query.setPageNumber(Utils.getIntParam(getRequest(), "pageno"));
		if (query.getPageNumber() <= 0)
			query.setPageNumber(1);
		Page page = klShoppingShoppingcartproductManager.findPage(query);

		map.put("page", page);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/orders.jsp", 1, "ok");
	}

	/**
	 * 课 程管理 商家
	 * */
	public String orders2() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setShopid(shop.getId());
		Page page = klShoppingShoppingcartproductManager.findPage(query);

		map.put("page", page);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/orders2.jsp", 1, "ok");
	}

	/*
	 * 提现列表 商家 状态需要进一步确认
	 */
	public String moneys() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setShopid(shop.getId());
		query.setOrderStatus(Utils.STATUS_ORDER_PAYED);
		query.setExtInt4(Utils.STATUS_COACHTIME_CLASSED);
		Page page = klShoppingShoppingcartproductManager.findPage(query);

		map.put("orders", page);

		KlShoppingGetmoneyQuery q = new KlShoppingGetmoneyQuery();
		q.setShopid(shop.getId());
		Page moneys = this.klShoppingGetmoneyManager.findPage(q);
		map.put("moneys", moneys);

		query.setShopid(null);
		// 所有收入 以后需要调整
		// query.setStatusgt(0);
		// query.setStatus(null);
		float allincome = this.klShoppingShoppingcartproductManager
				.queryIncome(query);
		map.put("allincome", allincome);

		// 已获取收入

		query.setStatus(Utils.STATUS_ORDER_SHOPGOTMONEY);
		query.setStatusgt(null);

		float gotincome = this.klShoppingShoppingcartproductManager
				.queryIncome(query);
		map.put("gotincome", gotincome);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/money/moneys.jsp", 1, "ok");
	}

	/**
	 * 课 程总结之前 商家
	 * */
	public String presummary() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setOrderStatus(Utils.STATUS_ORDER_PAYED);
		query.setShopid(shop.getId());
		Page page = klShoppingShoppingcartproductManager.findPage(query);

		map.put("page", page);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/record/presummary.jsp", 1, "ok");
	}

	/**
	 * 订单列表详细内容 用户
	 * */
	public String userorderdetail() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlShoppingOrder order = this.klShoppingOrderManager.getById(Utils
				.getLongParam(getRequest(), "orderid"));
		if (order == null) {
			map.put("re", -1);
			map.put("word", "订单不存在");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}
		map.put("order", order);

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);

		Page page = klShoppingShoppingcartproductManager.findPage(query);

		map.put("page", page);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/orders.jsp", 1, "ok");
	}

	/**
	 * 等待完课确认课 程 用户
	 * */
	public String waitforend() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "完课列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setUserid(user.getId());

		Page page = klShoppingShoppingcartproductManager.findPage(query);

		map.put("page", page);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/orders3.jsp", 1, "ok");
	}

	/**
	 * 我的课 程
	 * */
	public String myclass() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		long orderid = Utils.getLongParam(getRequest(), "orderid");

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		
		if (Utils.getIntParam(getRequest(), "payed") > 0) {
			query.setStatusgt(19);
		}
		if (Utils.getIntParam(getRequest(), "nocommened") > 0) {
			query.setNocommened(1);
		}
		
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setSortColumns("id desc");
		query.setUserid(user.getId());

		String productName = Utils.getParam(getRequest(), "productName");
		if (StringUtils.isNotEmpty(productName))
			query.setProductName(productName);

		String startd = Utils.getParam(getRequest(), "startd");
		String endd = Utils.getParam(getRequest(), "endd");
		int classType = Utils.getIntParam(getRequest(), "classType");
		if (classType > 0)
			query.setClassType(classType);

		if (StringUtils.isNotEmpty(startd) && startd.split("-").length > 2) {
			query.setCreatetimelongstart(Utils.timetohaomiao(startd,
					"yyyy-MM-dd"));
			if (query.getCreatetimelongstart() < 0)
				query.setCreatetimelongstart(null);
		}
		if (StringUtils.isNotEmpty(endd) && endd.split("-").length > 2) {
			query.setCreatetimelongend(Utils.timetohaomiao(endd, "yyyy-MM-dd"));
			if (query.getCreatetimelongend() < 0)
				query.setCreatetimelongend(null);
		}

		if (orderid > 0)
			query.setOrderid(orderid);

		query.setNeextInt4(3);
		Page page = klShoppingShoppingcartproductManager.findPage(query);
		map.put("page", page);

		query.setNeextInt4(null);
		query.setExtInt4(3);
		page = klShoppingShoppingcartproductManager.findPage(query);
		map.put("page1", page);
		
		query.setExtInt4(null);
		page = klShoppingShoppingcartproductManager.findPage(query);
		map.put("page2", page);
		

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/myclass.jsp", 1, "ok");
	}

	/**
	 * 我的预约
	 * */
	public String mycoachtime() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		if (query.getSortColumns() == null)
			query.setSortColumns("id desc");
//		query.setStatus(20);
		query.setOrderStatus(Utils.STATUS_ORDER_PAYED);
		query.setUserid(user.getId());

		Page page = klShoppingShoppingcartproductManager.findPage(query);

		map.put("page", page);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/coachtime/mycoachtime.jsp", 1, "ok");
	}

	/*
	 * 加入购物车 查看购物车支付 如果没有参数的话
	 */
	public String shopCar() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,productid,count");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, (String) map.get("word"));
		}

		// 推荐
		KlSellerProductQuery nq = new KlSellerProductQuery();
		nq.setPageSize(6);
		nq.setStatus(1);
		nq.setSortColumns("buyedCount desc");
		List sl = this.klSellerProductManager.queryTop(nq);
		map.put("suggest", sl);

		// 购物车
		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");

		map.put("thirdType", user.getThirdType());

		// 删除课 程
		String ss = Utils.getParam(getRequest(), "delids");
		if (StringUtils.isNotEmpty(ss)) {
			String[] delids = ss.split(",");
			if (delids != null)
				for (int i = 0; i < delids.length; i++) {
					KlShoppingShoppingcartproduct p1 = this.klShoppingShoppingcartproductManager
							.getById(Long.parseLong(delids[i]));
					if (p1 != null
							&& p1.getUserid().longValue() == user.getId()
									.longValue())
						this.klShoppingShoppingcartproductManager.removeById(p1
								.getId());
				}
		}
		
		// 删除开练卡
//		String cs = Utils.getParam(getRequest(), "delcards");
//		if (StringUtils.isNotEmpty(cs)) {
//			String[] delids = cs.split(",");
//			if (delids != null)
//				for (int i = 0; i < delids.length; i++) {
//					KlShoppingCard p1 = this.klShoppingCardManager.getById(Long.parseLong(delids[i]));
//					if (p1 != null && p1.getUserid().longValue() == user.getId().longValue())
//						this.klShoppingCardManager.removeById(p1.getId());
//				}
//		}

		KlShoppingOrderQuery oq = new KlShoppingOrderQuery();
		oq.setUserid(user.getId());
		oq.setStatus(Utils.STATUS_ORDER_TEMP);
		List list = this.klShoppingOrderManager.queryTop(oq);
		KlShoppingOrder order = null;
		if (list.size() > 0) {
			order = (KlShoppingOrder) list.get(0);
		} else {
			order = new KlShoppingOrder();
			order.setUserid(user.getId());
			order.setStatus(Utils.STATUS_ORDER_TEMP);
			order.setUsername(user.getUsername());
			this.klShoppingOrderManager.save(order);
		}

		//课 程
		if(Utils.getLongParam(getRequest(), "productid") > 0 && Utils.getLongParam(getRequest(), "count") >0){
			// 购物车加入产品
			KlSellerProduct pro = this.klSellerProductManager.getById(Utils.getLongParam(getRequest(), "productid"));
			if (pro == null) {
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/info.jsp", -1, "产品不存在");
			}
			KlSellerShop shop = this.klSellerShopManager.getById(pro
					.getShopId());
			if (shop == null)
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/info.jsp", -1, "店铺不存在");
	
			KlShoppingShoppingcartproductQuery qt = new KlShoppingShoppingcartproductQuery();
			qt.setOrderid(order.getId());
			qt.setProductid(pro.getId());
			List lt = this.klShoppingShoppingcartproductManager.queryTop(qt);
	
			// 如果已经有了这个产品 增加数量
			if (lt != null && lt.isEmpty() == false) {
				KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) lt
						.get(0);
				p.setCount(p.getCount() + Utils.getIntParam(getRequest(), "count"));
				this.klShoppingShoppingcartproductManager.update(p);
			} else {
				// 如果还没有这个产品 新建
				KlShoppingShoppingcartproduct p = new KlShoppingShoppingcartproduct();
				p.setOrderid(order.getId());
				p.setShopid(pro.getShopId());
				p.setProductName(pro.getName());
				if (pro.getCategoryid() != null)
					p.setClassType(Integer.parseInt("" + pro.getCategoryid()));
				else
					p.setClassType(0);
	
				p.setProductid(pro.getId());
				p.setShopName(shop.getShopName());
				p.setClassCount(pro.getClassCount());
				p.setPerPrice(pro.getPrice());
				p.setCount(Utils.getIntParam(getRequest(), "count"));
				p.setPrice(p.getPerPrice() * p.getCount());
				p.setExt1(user.getUsername());
				p.setExt2(pro.getProvince());
				p.setCreatetimelong(System.currentTimeMillis());
				p.setUserid(user.getId());
				p.setExt3(shop.getPhoneno());
				p.setExt5(pro.getPhoto());
				p.setAddition(pro.getDescription());
				if (pro.getReturnClassCount() < 0) {
					p.setExtInt4(-30 + 1 + pro.getReturnClassCount());
					
				}
				
				else {
					p.setExtInt4(-1);
				}
	
				this.klShoppingShoppingcartproductManager.save(p);
			}
		}
		//开练卡
//		if (Utils.getParam(getRequest(), "param") != null) {
//			for(String str: Utils.getParam(getRequest(), "param").split("~")){
//				Long cardid = Long.parseLong(str.split(",")[0]);
//				int count = Integer.parseInt(str.split(",")[1]);
//				KlSellerCardQuery kscq = new KlSellerCardQuery();
//				kscq.setId(cardid);
//				kscq.setExtInt5(0);
//				List kscs = this.klSellerCardManager.queryTop(kscq);
//				if(kscs == null){
//					return Utils.returnServlet(getRequest(), getResponse(), map,
//							"/page/info.jsp", -1, "开练卡不存在");
//				}
//				KlSellerCard ksc = (KlSellerCard) kscs.get(0);
//				KlShoppingCardQuery qt = new KlShoppingCardQuery();
//				qt.setorder_id(order.getId());
//				qt.setCardid(ksc.getId());
//				List lt = this.klShoppingCardManager.queryTop(qt);
//		
//				// 如果已经有了这个卡 增加数量
//				if (lt != null && lt.isEmpty() == false) {
//					KlShoppingCard p = (KlShoppingCard) lt.get(0);
//					p.setExtInt1(p.getExtInt1() + count);
//					this.klShoppingCardManager.update(p);
//				} else {
//					// 如果还没有这个卡 新建
//					KlShoppingCard p = new KlShoppingCard();
//					p.setCardid(ksc.getId());
//					p.setOrder_id(order.getId());
//					//p.setCreatetimelong(System.currentTimeMillis());
//					p.setUserid(user.getId());//激活人
//					p.setCreateuser(user.getId());//购 买人
//					p.setExtInt1(count);
//					p.setCardtype(ksc.getCardName());
//					//p.setExt5(ksc.getPrice()+"");
//					p.setCardprice(ksc.getPrice());
//					p.setExtInt5(-1);//未付费
//					this.klShoppingCardManager.save(p);
//				}
//			}
//		}

		KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
		q.setOrderid(order.getId());
		q.setPageSize(10000);
		KlShoppingCardQuery cq = new KlShoppingCardQuery();
		cq.setorder_id(order.getId());
		cq.setPageSize(10000);
		cq.setExtInt5(-1);//查询未付费
		List products = this.klShoppingShoppingcartproductManager.queryTop(q);
//		List crads = this.klShoppingCardManager.queryTop(cq);
		map.put("products", products);
//		map.put("cards", crads);
		map.put("order", order);
		map.put("user", user);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/shopcar.jsp", 1, "ok");
	}

	// 获取订单总价
	public float getMoney(List list) {
		if (list == null)
			return 0;
		float t = 0;
		for (int i = 0; i < list.size(); i++) {
			KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) list.get(i);
			t = t + p.getPerPrice() * p.getCount();
		}

		return t;
	}
	
	//获取开练卡总额
	public float getMoneyByCard(List list){
		if (list == null)
			return 0;
		float t = 0;
		for (int i = 0; i < list.size(); i++) {
			KlShoppingCard p = (KlShoppingCard) list.get(i);
			t = t + p.getCardprice()*p.getExtInt1();
		}
		return t;
	}

	/*
	 * 查看购物车支付
	 */
	// public String seeShopCar() {
	// Map map = null;
	// map = Utils.checkParamerts(getRequest(), "sessionuser");
	// if (map.isEmpty() == false) {
	// map.put("re", -1);
	// return Utils.returnServlet(getRequest(), getResponse(), map,
	// "/page/shop/shopcar.jsp");
	// }
	//
	// // 购物车
	// CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
	// .getAttribute("user");
	// KlShoppingOrderQuery oq = new KlShoppingOrderQuery();
	// oq.setUserid(user.getId());
	// oq.setStatus(0);
	// List list = this.klShoppingOrderManager.queryTop(oq);
	// KlShoppingOrder order = null;
	// if (list.size() > 0) {
	// order = (KlShoppingOrder) list.get(0);
	// } else {
	// order = new KlShoppingOrder();
	// order.setUserid(user.getId());
	// order.setStatus(Utils.STATUS_ORDER_TEMP);
	// order.setUsername(user.getUsername());
	// this.klShoppingOrderManager.save(order);
	// }
	//
	// // 产品列表
	// KlShoppingShoppingcartproductQuery q = new
	// KlShoppingShoppingcartproductQuery();
	// q.setOrderid(order.getId());
	// q.setPageSize(99999);
	// List l = this.klShoppingShoppingcartproductManager.queryTop(q);
	// map.put("pros", l);
	//
	// return Utils.returnServlet(getRequest(), getResponse(), map,
	// "/shop/shopcar.jsp", 1, "ok");
	// }

	/*
	 * 开练卡 准备付费
	 */
	public String kailianka() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, (String) map.get("word"));
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");

		KlShoppingOrder order = new KlShoppingOrder();
		order.setUserid(user.getId());
		order.setUsername(user.getUsername());
		order.setPrice(Utils.getFloatParam(getRequest(), "price"));
		order.setFinalPrice(order.getPrice());
		order.setStatus(Utils.STATUS_ORDER_WAITINGFORPAY);
		order.setCreatetimelong(System.currentTimeMillis());
		order.setExtInt3(1);
		this.klShoppingOrderManager.save(order);

		map.put("order", order);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/waitpay.jsp", 1, "ok");
	}
	
	public String waitpayForCard(){
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, (String) map.get("word"));
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		user = this.cmsUserInfoManager.getById(user.getId());
		// 购物车
		KlShoppingOrder order = new KlShoppingOrder();
		if (Utils.getParam(getRequest(), "param") != null) {
			order.setUserid(user.getId());
			order.setStatus(20);
			order.setUsername(user.getUsername());
			this.klShoppingOrderManager.save(order);
			for(String str: Utils.getParam(getRequest(), "param").split("~")){
				Long cardid = Long.parseLong(str.split(",")[0]);
				int count = Integer.parseInt(str.split(",")[1]);
				KlSellerCardQuery kscq = new KlSellerCardQuery();
				kscq.setId(cardid);
				//kscq.setExtInt5(0);
				List kscs = this.klSellerCardManager.queryTop(kscq);
				if(kscs.size() <= 0){
					this.klShoppingOrderManager.removeById(order.getId());
					return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "开练卡不存在");
				}
				KlSellerCard ksc = (KlSellerCard) kscs.get(0);
				KlShoppingCardQuery qt = new KlShoppingCardQuery();
				qt.setorder_id(order.getId());
				qt.setCardid(ksc.getId());
				List lt = this.klShoppingCardManager.queryTop(qt);
		
				// 如果已经有了这个卡 增加数量
				if (lt != null && lt.isEmpty() == false) {
					KlShoppingCard p = (KlShoppingCard) lt.get(0);
					p.setExtInt1(p.getExtInt1() + count);
					this.klShoppingCardManager.update(p);
				} else {
					// 如果还没有这个卡 新建
					KlShoppingCard p = new KlShoppingCard();
					p.setCardid(ksc.getId());
					p.setOrder_id(order.getId());
					//p.setCreatetimelong(System.currentTimeMillis());
					p.setUserid(user.getId());//激活人
					p.setCreateuser(user.getId());//购 买人
					p.setExtInt1(count);
					p.setCardtype(ksc.getCardName());
					//p.setExt5(ksc.getPrice()+"");
					p.setCardprice(ksc.getPrice());
					p.setExtInt5(-1);//未付费
					this.klShoppingCardManager.save(p);
				}
			}
		}
		if (order == null) {
			order.setStatus(10);
			this.klShoppingOrderManager.update(order);
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "参数错误");
		}

		KlShoppingCardQuery cq = new KlShoppingCardQuery();
		cq.setorder_id(order.getId());
		cq.setPageSize(10000);
		//cq.setExtInt5(1);
		int ctotal = 0;
		List cards = this.klShoppingCardManager.queryTop(cq);
		order.setPrice(this.getMoneyByCard(cards));
		order.setFinalPrice(this.getMoneyByCard(cards));
		order.setStatus(Utils.STATUS_ORDER_WAITINGFORPAY);
		order.setCreatetimelong(System.currentTimeMillis());
		order.setExtInt3(0);
//		order.setExtInt4(total);
		order.setCreatetimelong(System.currentTimeMillis());
		this.klShoppingOrderManager.update(order);
		
		map.put("order", order);
		map.put("user", user);
		map.put("isCard", true);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/waitpay.jsp", 1, "ok");
	}

	/*
	 * 准备付费
	 */
	public String waitpay() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,orderid");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, (String) map.get("word"));
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		user = this.cmsUserInfoManager.getById(user.getId());
		// 购物车
		KlShoppingOrder order = this.klShoppingOrderManager.getById(Utils
				.getLongParam(getRequest(), "orderid"));
		if (order == null || order.getStatus() != Utils.STATUS_ORDER_TEMP
				&& order.getStatus() != Utils.STATUS_ORDER_PAYFAILED
				&& order.getStatus() != Utils.STATUS_ORDER_WAITINGFORPAY) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "参数错误");
		}

		order.setExt1(Utils.getParam(getRequest(), "ext1"));
		order.setExt2(Utils.getParam(getRequest(), "ext2"));
		order.setExtInt1(Utils.getIntParam(getRequest(), "extInt1"));
		order.setExtInt2(Utils.getIntParam(getRequest(), "extInt2"));

		KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
		q.setOrderid(order.getId());
		q.setPageSize(10000);
		int total = 0;
		List products = this.klShoppingShoppingcartproductManager.queryTop(q);

		String[] delids = this.getRequest().getParameterValues("delids");
		Map tmp = new HashMap();
		if (delids != null) {
			for (int i = 0; i < delids.length; i++)
				tmp.put(delids[i] + "", "1");
		}

		//保存课 程
		for (int i = 0; i < products.size(); i++) {

			KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) products
					.get(i);

			
			/*
			if (tmp.get(p.getId() + "") == null) {
				p.setCount(0);
				p.setPrice((float) 0);

				this.klShoppingShoppingcartproductManager.update(p);
				products.set(i, p);
				total += 0;
				continue;
			}
			*/

			int ct = Utils.getIntParam(getRequest(), "name" + p.getId());
			
			
			//活动页面  特殊处理
			KlSellerProduct pro = this.klSellerProductManager.getById(p.getProductid());
			KlSellerShop shop = this.klSellerShopManager.getById(pro.getShopId());
			if (shop.getId().longValue() == new Long(150).longValue()) {
				if (ct > 1)
					ct = 1;
					//return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "热火派活动每人限购一次");
				if (pro.getBuyedCount() != null && pro.getBuyedCount() >= 60)
					return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, pro.getName() + "已经达到人数上限,请查看其他产品.");
			}
			
			
			if (ct > 0) {
				p.setCount(ct);
				p.setPrice(p.getPerPrice() * p.getCount());

				this.klShoppingShoppingcartproductManager.update(p);
				products.set(i, p);
				total += ct;

				//String sql = "update kl_seller_product set buyedCount=buyedCount+"
				//		+ ct + " where id=" + p.getProductid();
				//this.cmsCommonPointsManager.updateSql(sql);
			}

		}


		order.setPrice(this.getMoney(products));
		order.setFinalPrice(order.getPrice());
		order.setStatus(Utils.STATUS_ORDER_WAITINGFORPAY);
		order.setCreatetimelong(System.currentTimeMillis());
		order.setExtInt3(0);
		order.setExtInt4(total);
		order.setCreatetimelong(System.currentTimeMillis());
		this.klShoppingOrderManager.update(order);
		
		map.put("order", order);
		map.put("user", user);
		map.put("isCard", false);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/waitpay.jsp", 1, "ok");
	}

	/*
	 * 去支付
	 */
	public String waitpay2() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,orderid");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, (String) map.get("word"));
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		user = this.cmsUserInfoManager.getById(user.getId());
		// 购物车
		KlShoppingOrder order = this.klShoppingOrderManager.getById(Utils
				.getLongParam(getRequest(), "orderid"));
		if (order == null || order.getStatus() != Utils.STATUS_ORDER_TEMP
				&& order.getStatus() != Utils.STATUS_ORDER_PAYFAILED
				&& order.getStatus() != Utils.STATUS_ORDER_WAITINGFORPAY) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "参数错误");
		}

		map.put("order", order);
		if(order.getExtInt4() == null)
			map.put("isCard", true);
		else
			map.put("isCard", false);
		map.put("user", user);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/waitpay.jsp", 1, "ok");
	}

	/*
	 * 支付宝付费检查
	 */
	public int checkAlipay(boolean tongbu) throws UnsupportedEncodingException {
		// 获取支付宝GET过来反馈信息
		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = this.getRequest().getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			// 乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
			if (tongbu)
				valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}

		// 获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以下仅供参考)//
		// 商户订单号

		String out_trade_no = new String(this.getRequest()
				.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");

		// 支付宝交易号

		String trade_no = new String(this.getRequest().getParameter("trade_no")
				.getBytes("ISO-8859-1"), "UTF-8");

		// 交易状态
		String trade_status = new String(this.getRequest()
				.getParameter("trade_status").getBytes("ISO-8859-1"), "UTF-8");

		// 获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以上仅供参考)//

		// 计算得出通知验证结果
		boolean verify_result = AlipayNotify.verify(params);

		if (verify_result) {// 验证成功
			// ////////////////////////////////////////////////////////////////////////////////////////
			// 请在这里加上商户的业务逻辑程序代码

			// ——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
			if (trade_status.equals("TRADE_FINISHED")
					|| trade_status.equals("TRADE_SUCCESS")) {
				// 判断该笔订单是否在商户网站中已经做过处理
				// 如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				// 如果有做过处理，不执行商户的业务程序
				return 1;
			}

			// 该页面可做页面美工编辑
			// out.println("验证成功<br />");
			return 0;
			// ——请根据您的业务逻辑来编写程序（以上代码仅作参考）——

			// ////////////////////////////////////////////////////////////////////////////////////////
		} else {
			// 该页面可做页面美工编辑
			// out.println("验证失败");
			return -1;
		}
	}
	
	/**
	 * 帐户余额大于付款额度
	 * 不可用于购 买开练卡
	 * @return
	 */
	public String payOverByLocal(){
		Logger log = Logger.getLogger(KlShoppingShoppingcartproductAction.class);
		Map map = new HashMap();
		Long orderId = Utils.getLongParam(getRequest(), "orderId");
		KlShoppingOrder order = this.klShoppingOrderManager.getById(orderId);
		order.setStatus(20);
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		user = this.cmsUserInfoManager.getById(user.getId());
		if(user == null)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "支付超时，请重新支付");
		if(user.getMoneyleft() < order.getFinalPrice())
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "余额不足，支付失败！");
		user.setMoneyleft(user.getMoneyleft() - order.getFinalPrice());//重新计算余额
		this.cmsUserInfoManager.update(user);
		KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
		q.setOrderid(order.getId());
		q.setPageSize(10000);
		int total = 0;
		List products = this.klShoppingShoppingcartproductManager.queryTop(q);
		for (int i = 0; i < products.size(); i++) {
			KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) products.get(i);

			if (order.getStatus() == 20) {
				// 更新已售
				String sql = "update kl_seller_product set buyedCount=buyedCount+"
						+ p.getCount() + " where id=" + p.getProductid();
				this.cmsCommonPointsManager.updateSql(sql);

				sql = "update kl_seller_shop set servedClients=servedClients+"
						+ p.getCount() + " where id=" + p.getShopid();
				this.cmsCommonPointsManager.updateSql(sql);
			}

			Map m = this.getRequest().getParameterMap();
			String str = Utils.toJson(m);

			// 拆分订单
			if (order.getStatus() == 20) {
				int count = p.getCount();

				p.setStatus(order.getStatus());
				p.setCount(1);
				String t = (System.currentTimeMillis()) + "";
				t = t.substring(t.length() - 6);
				p.setExtInt5(Integer.parseInt(t));
				while ((p.getExtInt5() + "").length() < 6)
					p.setExtInt5(p.getExtInt5() * 10);
				this.klShoppingShoppingcartproductManager.update(p);

				// 通知商家
				KlSellerShop s = this.klSellerShopManager
						.getById(p.getShopid());
				if (s != null) {
					String cont = "有用户购 买了您的课 程:" + p.getProductName()
							+ "，请登录开练网查看。";
					CmsUserInfo ui = this.cmsUserInfoManager.getById(s
							.getUserid());
					if (ui != null && Utils.checkMobile(ui.getMobile())) {
						SmsUtils.sendSms(ui.getMobile(), cont);
					}
					if (ui != null && Utils.checkEmail(ui.getEmail())) {
						try {
							MailUtil.sendEmail(ui.getEmail(), "开练网提醒信", cont);
						} catch (UnsupportedEncodingException e) {
							e.printStackTrace();
						}
					}
					MessageUtils.sendSystemMessage(ui.getId(), cont);
					CountSingleton.addCount(ui.getId(), "user", "message", 1);
				}
				// 通知商家

				KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(p);
				h.setStatusstr("支付成功1");
				h.setAddition(str);

				this.klShoppingCarthistoryManager.save(h);

				KlSellerProduct pro = this.klSellerProductManager.getById(p
						.getProductid());

				for (int ii = 0; ii < count; ii++) {
					if (ii > 0) {
						p.setId(null);
						t = (System.currentTimeMillis() + ii + 1) + "";
						t = t.substring(t.length() - 6);
						p.setExtInt5(Integer.parseInt(t));
						while ((p.getExtInt5() + "").length() < 6)
							p.setExtInt5(p.getExtInt5() * 10);
						this.klShoppingShoppingcartproductManager.save(p);

						// 保存历史
						h.setStatusstr("支付成功1");
						h.setAddition(str);
						h.setId(null);
						this.klShoppingCarthistoryManager.save(h);
					}

					if (pro.getReturnClassCount() < 0) {
						// 免预约
						if (user != null && Utils.checkMobile(user.getMobile())) {
							String name = pro.getName();
							if (name.length() > 10)
								name = name.substring(0,10) + "...";
							String cont1 = "开练网:您已购 买免预约产品<" + name + ">。" +"预约码" + p.getExtInt5() + "" + p.getId();
							if (pro.getReturnClassCount() == -2) {
								cont1 = "开练网:您已购 买电话预约产品<" + name + ">。" +"预约码" + p.getExtInt5() + "" + p.getId();
								
							}
							SmsUtils.sendSms(user.getMobile(), cont1);
						}
					}
				}
			} else {
				p.setStatus(order.getStatus());
				this.klShoppingShoppingcartproductManager.update(p);

				// 保存历史
				KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(p);
				h.setStatusstr("支付失败1");
				h.setAddition(str);
				this.klShoppingCarthistoryManager.save(h);
			}

		}
//		 order.setStatus(1);

		// 更新订单中产品的状态
//		 this.klShoppingOrderManager.updateCarProduct(order.getId(),
//		 order.getStatus());
		/**
		 * 帐户余额可以支付，则全部来自帐户余额
		 */
		order.setPayedKard(order.getFinalPrice());
		this.klShoppingOrderManager.update(order);

		map.put("order", order);

		log.warn("order---------  " + order.getId() + "  " + order.getStatus());

		if (order.getStatus() == 20) {
			log.warn("order1---------  " + order.getId() + "  "
					+ order.getStatus());
			String cont = "感谢您购 买开练网的线上产品，订单号" + order.getId()
					+ "，您可随时在线查询您的订单。";
			log.warn(cont + "  " + user.getMobile() + "  " + user.getEmail());
			// 发短信
			if (StringUtils.isNotEmpty(user.getMobile())) {
				SmsUtils.sendSms(user.getMobile(), cont);
			}
			// 发邮件
			if (StringUtils.isNotEmpty(user.getEmail())) {
				try {
					MailUtil.sendEmail(user.getEmail(), "开练网电子凭证", cont);

				} catch (UnsupportedEncodingException e) {
					log.error("发送邮件失败!", e);
				}
			}
			// 发站内信
			MessageUtils.sendSystemMessage(user.getId(), cont);
			CountSingleton.addCount(user.getId(), "user", "message", 1);
		}
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/order/payover.jsp", 1, "ok");
	}

	/*
	 * 付费结束
	 */
	public String payOver() {

		Logger log = Logger.getLogger(getClass());
		boolean tongbu = true;
		Map map = new HashMap();
		/*
		 * map = Utils.checkParamerts(getRequest(), "sessionuser"); if
		 * (map.isEmpty() == false) { map.put("re", -1); return
		 * Utils.returnServlet(getRequest(), getResponse(), map,
		 * "/shop/shopcar.jsp"); }
		 */
		int re = 0;
		String out_trade_no = null;
		String trade_no = null;
		String trade_status = null;
		String buyer_email = null;
		String buyer_id = null;

		log.info("payover111:" + "in");

		try {
			re = this.checkAlipay(tongbu);
			// 商户订单号
			out_trade_no = new String(this.getRequest()
					.getParameter("out_trade_no").getBytes("ISO-8859-1"),
					"UTF-8");

			// 支付宝交易号

			trade_no = new String(this.getRequest().getParameter("trade_no")
					.getBytes("ISO-8859-1"), "UTF-8");

			// 交易状态
			trade_status = new String(this.getRequest()
					.getParameter("trade_status").getBytes("ISO-8859-1"),
					"UTF-8");

			buyer_email = this.getRequest().getParameter("buyer_email");
			buyer_id = this.getRequest().getParameter("buyer_id");
		} catch (UnsupportedEncodingException e1) {
			log.error("payover is wrong! out_trade_no:"+out_trade_no+",trade_no:"+trade_no+",trade_status:"+trade_status, e1);
		}

		if (re < 0 && tongbu) {
			log.info("payover111:" + "验证失败");
			// return writeAjaxResponse("验证失败");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "验证失败");
		} else if (re < 0 && !tongbu) {
			log.info("payover111:" + "failagain");
			return writeAjaxResponse("fail");
		}

		// KlShoppingOrder order = this.klShoppingOrderManager.getById(Utils
		// .getLongParam(getRequest(), "orderid"));
		// order.setStatus(Utils.getIntParam(getRequest(), "status"));

		KlShoppingOrder order = this.klShoppingOrderManager.getById(Long
				.parseLong(out_trade_no));
		if (trade_status.equals("TRADE_FINISHED")
				|| trade_status.equals("TRADE_SUCCESS")) {
			// 判断该笔订单是否在商户网站中已经做过处理
			// 如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
			// 如果有做过处理，不执行商户的业务程序
			if (order.getStatus() != null && order.getStatus().intValue() == 20) {
				map.put("order", order);

				log.info("payover111:" + "in20");
				if (!tongbu) {
					return writeAjaxResponse("success");
				}
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/order/payover.jsp", 1, "ok");
			}

			order.setStatus(20);
		} else {
			if (order.getStatus() != null
					&& order.getStatus().intValue() == -20) {
				map.put("order", order);

				if (!tongbu) {
					return writeAjaxResponse("success");
				}

				log.info("payover111:" + "in-20");
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/order/payover.jsp", 1, "ok");
			}

			order.setStatus(-20);
		}
//		Map map = new HashMap();
//		KlShoppingOrder order = new KlShoppingOrder(Utils.getLongParam(getRequest(), "orderId"));
//		order.setStatus(20);
//		order.setUserid(new Long("10"));

		/**
		 * 开练卡
		 */
		CmsUserInfo user = this.cmsUserInfoManager.getById(order.getUserid());
		KlShoppingCardQuery cq = new KlShoppingCardQuery();
		cq.setorder_id(order.getId());
		cq.setPageSize(10000);
		int ctotal = 0;
		List cards = this.klShoppingCardManager.findPage(cq).getResult();
		for (Object obj : cards) {
			KlShoppingCard card = (KlShoppingCard) obj;
//			if(order.getStatus() == 20){//计算售卡数量
//				String sql = "";
//				this.klSellerCardManager.updateSql(sql);
//			}
			Map m = this.getRequest().getParameterMap();
			String str = Utils.toJson(m);
			if(order.getStatus() == 20){
				int count = card.getExtInt1();
				KlSellerCard ksc = this.klSellerCardManager.getById(card.getCardid());
				if(ksc == null){
					return Utils.returnServlet(getRequest(), getResponse(), map,
							"/page/info.jsp", -1, "开练卡不存在");
				}
				this.klShoppingCardManager.removeById(card.getId());
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
				for(int i = 0; i < count; i++){
					card = new KlShoppingCard();
					Long l = System.currentTimeMillis();
					double d = Math.random();
					card.setCardNo(sdf.format(new Date())+String.valueOf(l).substring(String.valueOf(l).length()-8));//当前日期+当前日期的后八位
					card.setCardPwd(String.valueOf(d).substring(String.valueOf(d).length()-8));//随机数的后八位
					card.setCardid(ksc.getId());
					card.setCreatetimelong(l);
					calDate(ksc.getValidDays(), card);
					card.setStatus(1);
					card.setUserid(user.getId());
					card.setCreateuser(user.getId());
					card.setCardtype(ksc.getCardName());
					card.setCardprice(ksc.getPrice());
					card.setCardid(ksc.getId());
					card.setOrder_id(order.getId());
					card.setAddition(str);
					card.setExtInt5(1);//已付费
					this.klShoppingCardManager.save(card);
				}
				/**
				 * 销售历史
				 */
//				KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(card);
//				h.setExt1(trade_no);
//				h.setExt2(buyer_email);
//				h.setExt3(buyer_id);
//				h.setStatusstr("支付成功-开练卡-同步");
//				h.setAddition(str);
//
//				this.klShoppingCarthistoryManager.save(h);
			}
		}

		/**
		 * 课 程商品
		 */
		KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
		q.setOrderid(order.getId());
		q.setPageSize(10000);
		int total = 0;
		List products = this.klShoppingShoppingcartproductManager.queryTop(q);
		for (int i = 0; i < products.size(); i++) {
			KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) products.get(i);

			if (order.getStatus() == 20) {
				// 更新已售
				String sql = "update kl_seller_product set buyedCount=buyedCount+"
						+ p.getCount() + " where id=" + p.getProductid();
				this.cmsCommonPointsManager.updateSql(sql);

				sql = "update kl_seller_shop set servedClients=servedClients+"
						+ p.getCount() + " where id=" + p.getShopid();
				this.cmsCommonPointsManager.updateSql(sql);
			}

			Map m = this.getRequest().getParameterMap();
			String str = Utils.toJson(m);

			// 拆分订单
			if (order.getStatus() == 20) {
				int count = p.getCount();

				p.setStatus(order.getStatus());
				p.setCount(1);
				String t = (System.currentTimeMillis()) + "";
				t = t.substring(t.length() - 6);
				p.setExtInt5(Integer.parseInt(t));
				while ((p.getExtInt5() + "").length() < 6)
					p.setExtInt5(p.getExtInt5() * 10);
				this.klShoppingShoppingcartproductManager.update(p);

				// 通知商家
				KlSellerShop s = this.klSellerShopManager
						.getById(p.getShopid());
				if (s != null) {
					String cont = "有用户购 买了您的课 程:" + p.getProductName()
							+ "，请登录开练网查看。";
					CmsUserInfo ui = this.cmsUserInfoManager.getById(s
							.getUserid());
					if (ui != null && Utils.checkMobile(ui.getMobile())) {
						SmsUtils.sendSms(ui.getMobile(), cont);
					}
					if (ui != null && Utils.checkEmail(ui.getEmail())) {
						try {
							MailUtil.sendEmail(ui.getEmail(), "开练网提醒信", cont);
						} catch (UnsupportedEncodingException e) {
							log.error("kiklink SMS send wrong", e);
						}
					}
					MessageUtils.sendSystemMessage(ui.getId(), cont);
					CountSingleton.addCount(ui.getId(), "user", "message", 1);
				}
				// 通知商家

				KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(p);
				h.setExt1(trade_no);
				h.setExt2(buyer_email);
				h.setExt3(buyer_id);
				h.setStatusstr("支付成功1");
				h.setAddition(str);

				this.klShoppingCarthistoryManager.save(h);

				KlSellerProduct pro = this.klSellerProductManager.getById(p
						.getProductid());

				for (int ii = 0; ii < count; ii++) {
					if (ii > 0) {
						p.setId(null);
						t = (System.currentTimeMillis() + ii + 1) + "";
						t = t.substring(t.length() - 6);
						p.setExtInt5(Integer.parseInt(t));
						while ((p.getExtInt5() + "").length() < 6)
							p.setExtInt5(p.getExtInt5() * 10);
						this.klShoppingShoppingcartproductManager.save(p);

						// 保存历史
						h.setExt1(trade_no);
						h.setExt2(buyer_email);
						h.setExt3(buyer_id);
						h.setStatusstr("支付成功1");
						h.setAddition(str);
						h.setId(null);
						this.klShoppingCarthistoryManager.save(h);
					}

					if (pro.getReturnClassCount() < 0) {
						// 免预约
						if (user != null && Utils.checkMobile(user.getMobile())) {
							String name = pro.getName();
							if (name.length() > 10)
								name = name.substring(0,10) + "...";
							String cont1 = "开练网:您已购 买免预约产品<" + name + ">。" +"预约码" + p.getExtInt5() + "" + p.getId();
							if (pro.getReturnClassCount() == -2) {
								cont1 = "开练网:您已购 买电话预约产品<" + name + ">。" +"预约码" + p.getExtInt5() + "" + p.getId();
								
							}
							SmsUtils.sendSms(user.getMobile(), cont1);
						}
					}
				}
			} else {
				p.setStatus(order.getStatus());
				this.klShoppingShoppingcartproductManager.update(p);

				// 保存历史
				KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(p);
				h.setExt1(trade_no);
				h.setExt2(buyer_email);
				h.setExt3(buyer_id);
				h.setStatusstr("支付失败1");
				h.setAddition(str);
				this.klShoppingCarthistoryManager.save(h);
			}

		}
//		 order.setStatus(1);

		// 更新订单中产品的状态
//		 this.klShoppingOrderManager.updateCarProduct(order.getId(),
//		 order.getStatus());
		/**
		 * 调用支付宝，说明帐户余额不够用
		 * 帐户余额全部扣除，其他来自支付宝
		 */
		KlShoppingOrder o = order;
		order.setPayedKard(user.getMoneyleft());
		order.setPayedMoney(order.getFinalPrice()-user.getMoneyleft());
		this.klShoppingOrderManager.update(order);
		if(user.getMoneyleft() != null && user.getMoneyleft() > o.getFinalPrice()){//帐户余额大于付款额
			user.setMoneyleft(user.getMoneyleft() - o.getFinalPrice());//重新计算余额
		} else {
			float f = 0;
			user.setMoneyleft(f);
		}
		this.cmsUserInfoManager.update(user);

		map.put("order", order);

		log.warn("order---------  " + order.getId() + "  " + order.getStatus());

		if (order.getStatus() == 20) {
			log.warn("order1---------  " + order.getId() + "  "
					+ order.getStatus());
			String cont = "感谢您购 买开练网的线上产品，订单号" + order.getId()
					+ "，您可随时在线查询您的订单。";
			log.warn(cont + "  " + user.getMobile() + "  " + user.getEmail());
			// 发短信
			if (StringUtils.isNotEmpty(user.getMobile())) {
				SmsUtils.sendSms(user.getMobile(), cont);
			}
			// 发邮件
			if (StringUtils.isNotEmpty(user.getEmail())) {
				try {
					MailUtil.sendEmail(user.getEmail(), "开练网电子凭证", cont);

				} catch (UnsupportedEncodingException e) {
					log.error("Kiklink Email send wrong!", e);
				}
			}
			// 发站内信
			MessageUtils.sendSystemMessage(user.getId(), cont);
			CountSingleton.addCount(user.getId(), "user", "message", 1);
		}

		if (!tongbu) {
			return writeAjaxResponse("success");
		}
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/payover.jsp", 1, "ok");
	}
	
	/**
	 * 计算有效期
	 * @param date
	 * @param card
	 */
	private void calDate(int date, KlShoppingCard card){
		Long l = System.currentTimeMillis();
		Date d = new Date(l);
        Calendar c = Calendar.getInstance();
        c.setTime(d);
        c.add(Calendar.DATE, date);
        card.setOverdue(c.getTimeInMillis());
	}

	public String payOverYibu() {
		Logger log = Logger.getLogger(getClass());
		boolean tongbu = false;
		Map map = new HashMap();
		/*
		 * map = Utils.checkParamerts(getRequest(), "sessionuser"); if
		 * (map.isEmpty() == false) { map.put("re", -1); return
		 * Utils.returnServlet(getRequest(), getResponse(), map,
		 * "/shop/shopcar.jsp"); }
		 */
		int re = 0;
		String out_trade_no = null;
		String trade_no = null;
		String trade_status = null;
		String buyer_email = null;
		String buyer_id = null;
		try {
			re = this.checkAlipay(tongbu);
			// 商户订单号
			out_trade_no = new String(this.getRequest()
					.getParameter("out_trade_no").getBytes("ISO-8859-1"),
					"UTF-8");

			// 支付宝交易号

			trade_no = new String(this.getRequest().getParameter("trade_no")
					.getBytes("ISO-8859-1"), "UTF-8");

			// 交易状态
			trade_status = new String(this.getRequest()
					.getParameter("trade_status").getBytes("ISO-8859-1"),
					"UTF-8");

			buyer_email = this.getRequest().getParameter("buyer_email");
			buyer_id = this.getRequest().getParameter("buyer_id");
		} catch (UnsupportedEncodingException e1) {
			log.error("payover is wrong! out_trade_no:"+out_trade_no+",trade_no:"+trade_no+",trade_status:"+trade_status, e1);
		}

		if (re < 0 && tongbu) {
			// return writeAjaxResponse("验证失败");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "验证失败");
		} else if (re < 0 && !tongbu) {
			return writeAjaxResponse("fail");
		}

		// KlShoppingOrder order = this.klShoppingOrderManager.getById(Utils
		// .getLongParam(getRequest(), "orderid"));
		// order.setStatus(Utils.getIntParam(getRequest(), "status"));

		KlShoppingOrder order = this.klShoppingOrderManager.getById(Long
				.parseLong(out_trade_no));
		if (trade_status.equals("TRADE_FINISHED")
				|| trade_status.equals("TRADE_SUCCESS")) {
			// 判断该笔订单是否在商户网站中已经做过处理
			// 如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
			// 如果有做过处理，不执行商户的业务程序
			if (order.getStatus() != null && order.getStatus().intValue() == 20) {
				map.put("order", order);

				if (!tongbu) {
					return writeAjaxResponse("success");
				}
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/order/payover.jsp", 1, "ok");
			}

			order.setStatus(20);
		} else {
			if (order.getStatus() != null
					&& order.getStatus().intValue() == -20) {
				map.put("order", order);

				if (!tongbu) {
					return writeAjaxResponse("success");
				}
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/order/payover.jsp", 1, "ok");
			}

			order.setStatus(-20);
		}
		
		/**
		 * 保存开练卡
		 */
		CmsUserInfo user = this.cmsUserInfoManager.getById(order.getUserid());
		KlShoppingCardQuery cq = new KlShoppingCardQuery();
		cq.setorder_id(order.getId());
		cq.setPageSize(10000);
		int ctotal = 0;
		List cards = this.klShoppingCardManager.findPage(cq).getResult();
		for (Object obj : cards) {
			KlShoppingCard card = (KlShoppingCard) obj;
//			if(order.getStatus() == 20){//计算售卡数量
//				String sql = "";
//				this.klSellerCardManager.updateSql(sql);
//			}
			Map m = this.getRequest().getParameterMap();
			String str = Utils.toJson(m);
			if(order.getStatus() == 20){
				int count = card.getExtInt1();
				KlSellerCard ksc = this.klSellerCardManager.getById(card.getCardid());
				if(ksc == null){
					return Utils.returnServlet(getRequest(), getResponse(), map,
							"/page/info.jsp", -1, "开练卡不存在");
				}
				this.klShoppingCardManager.removeById(card.getId());
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
				for(int i = 0; i < count; i++){
					KlShoppingCard c = new KlShoppingCard();
					Long l = System.currentTimeMillis();
					double d = Math.random();
					c.setCardNo(sdf.format(new Date())+String.valueOf(l).substring(String.valueOf(l).length()-8));//当前日期+当前日期的后八位
					c.setCardPwd(String.valueOf(d).substring(String.valueOf(d).length()-8));//随机数的后八位
					c.setCardid(ksc.getId());
					c.setCreatetimelong(l);
					calDate(ksc.getValidDays(), c);
					c.setStatus(1);
					c.setUserid(user.getId());
					c.setCreateuser(user.getId());
					c.setCardtype(ksc.getCardName());
					c.setCardprice(ksc.getPrice());
					c.setCardid(ksc.getId());
					c.setOrder_id(order.getId());
					c.setAddition(str);
					c.setExtInt5(1);//已付费
					this.klShoppingCardManager.save(c);
				}
				/**
				 * 销售历史
				 */
//				KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(card);
//				h.setExt1(trade_no);
//				h.setExt2(buyer_email);
//				h.setExt3(buyer_id);
//				h.setStatusstr("支付成功-开练卡-异步");
//				h.setAddition(str);
//
//				this.klShoppingCarthistoryManager.save(h);
			}
		}

		/**
		 * 保存课 程
		 */
		KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
		q.setOrderid(order.getId());
		q.setPageSize(10000);
		int total = 0;
		List products = this.klShoppingShoppingcartproductManager.queryTop(q);
		for (int i = 0; i < products.size(); i++) {
			KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) products
					.get(i);

			if (order.getStatus() == 20) {
				// 更新已售
				String sql = "update kl_seller_product set buyedCount=buyedCount+"
						+ p.getCount() + " where id=" + p.getProductid();
				this.cmsCommonPointsManager.updateSql(sql);

				sql = "update kl_seller_shop set servedClients=servedClients+"
						+ p.getCount() + " where id=" + p.getShopid();
				this.cmsCommonPointsManager.updateSql(sql);
			}

			Map m = this.getRequest().getParameterMap();
			String str = Utils.toJson(m);

			// 拆分订单
			if (order.getStatus() == 20) {
				int count = p.getCount();

				p.setStatus(order.getStatus());
				p.setCount(1);
				String t = (System.currentTimeMillis()) + "";
				t = t.substring(t.length() - 6);
				p.setExtInt5(Integer.parseInt(t));
				while ((p.getExtInt5() + "").length() < 6)
					p.setExtInt5(p.getExtInt5() * 10);
				this.klShoppingShoppingcartproductManager.update(p);

				// 通知商家
				KlSellerShop s = this.klSellerShopManager
						.getById(p.getShopid());
				if (s != null) {
					String cont = "有用户购 买了您的课 程:" + p.getProductName()
							+ "，请登录开练网查看。";
					CmsUserInfo ui = this.cmsUserInfoManager.getById(s
							.getUserid());
					if (ui != null && Utils.checkMobile(ui.getMobile())) {
						SmsUtils.sendSms(ui.getMobile(), cont);
					}
					if (ui != null && Utils.checkEmail(ui.getEmail())) {
						try {
							MailUtil.sendEmail(ui.getEmail(), "开练网提醒信", cont);
						} catch (UnsupportedEncodingException e) {
							log.error("Kiklink send SMS wrong!", e);
						}
					}
					MessageUtils.sendSystemMessage(ui.getId(), cont);
					CountSingleton.addCount(ui.getId(), "user", "message", 1);
				}
				// 通知商家

				KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(p);
				h.setExt1(trade_no);
				h.setExt2(buyer_email);
				h.setExt3(buyer_id);
				h.setStatusstr("支付成功2");
				h.setAddition(str);

				this.klShoppingCarthistoryManager.save(h);

				KlSellerProduct pro = this.klSellerProductManager.getById(p
						.getProductid());
				for (int ii = 0; ii < count; ii++) {
					if (ii > 0) {
						p.setId(null);
						t = (System.currentTimeMillis() + ii + 1) + "";
						t = t.substring(t.length() - 6);
						p.setExtInt5(Integer.parseInt(t));
						while ((p.getExtInt5() + "").length() < 6)
							p.setExtInt5(p.getExtInt5() * 10);
						this.klShoppingShoppingcartproductManager.save(p);

						// 保存历史
						h.setExt1(trade_no);
						h.setExt2(buyer_email);
						h.setExt3(buyer_id);
						h.setStatusstr("支付成功2");
						h.setAddition(str);
						h.setId(null);
						this.klShoppingCarthistoryManager.save(h);
					}

					if (pro.getReturnClassCount() < 0) {
						// 免预约
						
						if (user != null && Utils.checkMobile(user.getMobile())) {
							String name = pro.getName();
							if (name.length() > 10)
								name = name.substring(0,10) + "...";
							String cont1 = "开练网:您已购 买免预约产品<" + name + ">。" +"验证码" + p.getExtInt5() + "" + p.getId();
							SmsUtils.sendSms(user.getMobile(), cont1);
						
			
							
						}
						
						
					}
				}
			} else {
				p.setStatus(order.getStatus());
				this.klShoppingShoppingcartproductManager.update(p);

				// 保存历史
				KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(p);
				h.setExt1(trade_no);
				h.setExt2(buyer_email);
				h.setExt3(buyer_id);
				h.setStatusstr("支付失败2");
				h.setAddition(str);
				this.klShoppingCarthistoryManager.save(h);
			}

		}
		// order.setStatus(1);

		// 更新订单中产品的状态
		// this.klShoppingOrderManager.updateCarProduct(order.getId(),
		// order.getStatus());
		/**
		 * 调用支付宝，说明帐户余额不够用
		 * 帐户余额全部扣除，其他来自支付宝
		 */
		KlShoppingOrder o = order;
		order.setPayedKard(user.getMoneyleft());
		order.setPayedMoney(order.getFinalPrice()-user.getMoneyleft());
		this.klShoppingOrderManager.update(order);
		if(user.getMoneyleft() != null && user.getMoneyleft() > o.getFinalPrice()){//帐户余额大于付款额
			user.setMoneyleft(user.getMoneyleft() - o.getFinalPrice());//重新计算余额
		} else {
			float f = 0;
			user.setMoneyleft(f);
		}
		this.cmsUserInfoManager.update(user);

		map.put("order", order);
		log.warn("order22---------  " + order.getId() + "  "
				+ order.getStatus());
		log.warn("is 20?");
		if (order.getStatus().intValue() == 20) {
			log.warn("is 20!");
			log.warn("order222---------  " + order.getId() + "  "
					+ order.getStatus());
			String cont = "感谢您购 买开练网的线上产品，订单号" + order.getId()
					+ "，您可随时在线查询您的订单。";
			log.warn(cont + "  " + user.getMobile() + "  " + user.getEmail());
			// 发短信
			if (StringUtils.isNotEmpty(user.getMobile())) {
				SmsUtils.sendSms(user.getMobile(), cont);
			}
			// 发邮件
			if (StringUtils.isNotEmpty(user.getEmail())) {
				try {
					MailUtil.sendEmail(user.getEmail(), "开练网电子凭证", cont);

				} catch (UnsupportedEncodingException e) {
					log.error("Kiklink send Email wrong", e);
				}
			}
			// 发站内信
			MessageUtils.sendSystemMessage(user.getId(), cont);
		}

		if (!tongbu) {
			return writeAjaxResponse("success");
		}
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/payover.jsp", 1, "ok");
	}

	/*
	 * 发起签到
	 */
	public String coachCheck() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,id,progress");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/shop/shopcar.jsp");
		}

		// 权限检查

		this.klShoppingShoppingcartproduct.setExtInt1(Utils.getIntParam(
				getRequest(), "progress"));
		this.klShoppingShoppingcartproduct
				.setStatus(Utils.STATUS_PAYEDPRODUCT_WAITINGFORCONFIRM);
		this.klShoppingShoppingcartproductManager
				.update(klShoppingShoppingcartproduct);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/shop/check.jsp", 1, "ok");
	}

	/*
	 * 确认签到
	 */
	public String confirmCheck() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,id,status");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/shop/shopcar.jsp");
		}

		// 检查权限
		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");

		int status = Utils.getIntParam(getRequest(), "status");
		if (status > 0) {
			this.klShoppingShoppingcartproduct
					.setStatus(Utils.STATUS_ORDER_PAYED);
			this.klShoppingShoppingcartproduct
					.setProgress(this.klShoppingShoppingcartproduct
							.getExtInt1());
			// 发消息 确认了
		} else {
			this.klShoppingShoppingcartproduct
					.setStatus(Utils.STATUS_ORDER_PAYED);
			// 发消息 没确认
		}

		this.klShoppingShoppingcartproductManager
				.update(klShoppingShoppingcartproduct);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/shop/shopcar.jsp", 1, "ok");
	}

	/*
	 * 商家的用户首页
	 */
	public String shopuserindex() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			// 如果是从首页的卖家中心点击进来
			if (Utils.getSessionByRequest(getRequest()).getAttribute("user") != null
					&& Utils.getParam(getRequest(), "center") != null) {
				return "!/kailian/KlSellerShop/preopenshop.do?center=center";
			}

			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "用户首页");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");

		// 服务确认
		// 待确认
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
		query.setSortColumns("id desc");
		query.setExtInt4(Utils.STATUS_COACHTIME_WAITCONFIRMCLASSED);
		query.setShopid(shop.getId());
		List confirms = this.klShoppingShoppingcartproductManager
				.queryTop(query);
		map.put("confirms", confirms);

		query.setExtInt4(Utils.STATUS_COACHTIME_CLASSED);
		List confirmd = this.klShoppingShoppingcartproductManager
				.queryTop(query);
		map.put("confirmd", confirms);
		/*
		 * KlShoppingShoppingcartproductQuery query = newQuery(
		 * KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		 * String sort = this.getRequest().getParameter("sort"); if
		 * (StringUtils.isNotEmpty(sort)) query.setSortColumns(sort);
		 * query.setShopid(shop.getId()); query.setPageSize(8); List confirms =
		 * this.klShoppingShoppingcartproductManager.queryTop(query);
		 */

		// 课 程预约
		// 待确认
		KlShoppingShoppingcartproductQuery qquery = new KlShoppingShoppingcartproductQuery();
		qquery.setPageNumber(Utils.getIntParam(getRequest(), "page"));
		if (qquery.getPageNumber() < 0)
			qquery.setPageNumber(0);
		qquery.setExtInt4(0);
		qquery.setSortColumns("id desc");
		qquery.setShopid(shop.getId());
		Page wp = this.klShoppingShoppingcartproductManager.findPage(qquery);
		map.put("coachetimes", wp);

		// 已取消
		qquery = new KlShoppingShoppingcartproductQuery();
		qquery.setPageNumber(Utils.getIntParam(getRequest(), "page1"));
		if (qquery.getPageNumber() < 0)
			qquery.setPageNumber(0);
		qquery.setExtInt4(-2);
		qquery.setShopid(shop.getId());
		Page page1 = this.klShoppingShoppingcartproductManager.findPage(qquery);
		map.put("coachetimes1", page1);

		// 订单管理
		KlShoppingShoppingcartproductQuery query2 = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		query2.setShopid(shop.getId());
		query2.setPageSize(8);
		query2.setStatus(20);
		query2.setSortColumns("id desc");
		query2.setSortColumns("id desc");
		List orders = this.klShoppingShoppingcartproductManager
				.queryTop(query2);
		map.put("orders", orders);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/shop/index.jsp", 1, "ok");

	}

	/*
	 * 用户的首页
	 */
	public String userindex() {
		if (Utils.getSessionByRequest(getRequest()).getAttribute("sessionshop") != null)
			return Utils.returnServlet(getRequest(), getResponse(),
					new HashMap(),
					"!/kailian/KlShoppingShoppingcartproduct/shopuserindex.do",
					1, "ok");

		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "用户首页");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");

		// 订单管理
		KlShoppingShoppingcartproductQuery query = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setSortColumns("id desc");
		query.setUserid(user.getId());
		query.setPageSize(8);
		query.setStatus(20);

		List orders = this.klShoppingShoppingcartproductManager.findPage(query)
				.getResult();
		map.put("orders", orders);

		// 服务确认
		KlShoppingShoppingcartproductQuery query1 = newQuery(
				KlShoppingShoppingcartproductQuery.class, DEFAULT_SORT_COLUMNS);
		query1.setUserid(user.getId());
		query1.setSortColumns("id desc");
		query1.setPageSize(8);
		query1.setExtInt4(Utils.STATUS_COACHTIME_WAITCONFIRMCLASSED);
		List sures = this.klShoppingShoppingcartproductManager.queryTop(query1);
		map.put("sures", sures);

		// 训练记录
		KlTrainningRecordQuery query2 = new KlTrainningRecordQuery();
		query2.setUserid(user.getId());
		query2.setSortColumns("id desc");
		query2.setPageSize(3);
		List records = this.klTrainningRecordManager.queryTop(query2);
		map.put("records", records);

		// 小组 话题
		List topgroups = this.cmsGroupManager.queryTop(3, "extInt1 desc");
		List toptopics = this.cmsGroupTopicManager.queryTop(5, "extInt4 desc");
		map.put("topgroups", topgroups);
		map.put("toptopics", toptopics);

		// 店铺收藏等
		for (int i = 0; i < 3; i++) {
			int type = Utils.TYPE_TARGET_SHOP;
			if (i != 0)
				type = Utils.TYPE_TARGET_ARTICLE;

			CmsCommonSavedQuery q = new CmsCommonSavedQuery();
			q.setTargetType(type);
			q.setUserid(user.getId());
			q.setSortColumns("id desc");

			if (Utils.getIntParam(getRequest(), "now") == i)
				q.setPageNumber(Utils.getIntParam(getRequest(), "pageno"));

			Page p = this.cmsCommonSavedManager.findPage(q);
			map.put("page" + i, p);
		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/user/index.jsp", 1, "ok");
	}

	// 预约码
	public String yuyuema() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "用户首页");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		// 查询
		String yym = Utils.getParam(getRequest(), "yuyuema");
		int yuyuema = Utils.getIntParam(getRequest(), "yuyuema");
		if (StringUtils.isNotEmpty(yym) && yym.length() > 6) {
			KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
			
			q.setExtInt5(Integer.parseInt(yym.substring(0, 6)));
			q.setId(Long.parseLong(yym.substring(6)));
			List list = this.klShoppingShoppingcartproductManager.queryTop(q);
			if (list != null && list.isEmpty() == false) {
				KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) list
						.get(0);
				map.put("p", p);

				// 确认
				long pid = Utils.getLongParam(getRequest(), "pid");
				if (pid > 0 && pid == p.getId().longValue()
						&& p.getExtInt4() < Utils.STATUS_COACHTIME_CLASSED) {
					p.setExtInt4(Utils.STATUS_COACHTIME_CLASSED);
					this.klShoppingShoppingcartproductManager.update(p);

					// 保存历史记录
					KlShoppingCarthistory h = KlShoppingCarthistory
							.getHistory(p);
					this.klShoppingCarthistoryManager.save(h);

					map.put("done", "done");
					return Utils.returnServlet(getRequest(), getResponse(),
							map, "/page/coachtime/yuyuema.jsp", 1, "确认课 程完成");
				} else if (pid > 0) {
					return Utils
							.returnServlet(getRequest(), getResponse(), map,
									"/page/coachtime/yuyuema.jsp", 1,
									"此预约码已经被使用过");

				}
			}
			
			return Utils
					.returnServlet(getRequest(), getResponse(), map,
							"/page/coachtime/yuyuema.jsp", 1,
							"预约码错误");

		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/coachtime/yuyuema.jsp", 1, "ok");

	}

	
	// 男神女神预约码
		public String nannvshen() {
			Map map = null;
			map = Utils.checkParamerts(getRequest(), "sessionuser");
			if (map.isEmpty() == false) {
				map.put("re", -1);
				map.put("word", "您没有登录");
				map.put("lefttitle", "用户首页");
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/info.jsp");
			}
			CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");

			// 查询
			String yym = Utils.getParam(getRequest(), "yuyuema");
			int yuyuema = Utils.getIntParam(getRequest(), "yuyuema");
			String mobile = Utils.getParam(getRequest(), "mobile");
			if (StringUtils.isNotEmpty(yym) && yym.length() >= 6 && StringUtils.isNotEmpty(mobile)) {
				CmsStRhppeopleQuery rq = new CmsStRhppeopleQuery();
				rq.setExtInt3(Integer.parseInt(yym));
				rq.setMobile(mobile);
				List list = this.cmsStRhppeopleManager.findPage(rq).getResult();
				if (list != null && list.isEmpty() == false) {
					CmsStRhppeople pp = (CmsStRhppeople) list.get(0);
					
					KlTopicCoach c = this.klTopicCoachManager.getById(Long.parseLong(pp.getExt4()));
					if (c == null)
						return Utils
								.returnServlet(getRequest(), getResponse(), map,
										"/page/coachtime/nannvshen.jsp", 1,
										"店铺信息错误:教练不存在");
					
					String url = c.getExt5();
					if (StringUtils.isEmpty(url)) {
						return Utils
								.returnServlet(getRequest(), getResponse(), map,
										"/page/coachtime/nannvshen.jsp", 1,
										"店铺信息错误:产品地址不存在");
					}
					String b2 = url.split("product_")[1].replaceAll(".html", "");
					KlSellerProduct kecheng = this.klSellerProductManager.getById(Long.parseLong(b2));
					if (kecheng == null )
						return Utils
								.returnServlet(getRequest(), getResponse(), map,
										"/page/coachtime/nannvshen.jsp", 1,
										"店铺信息错误:课 程信息不存在");
					KlSellerShop shop = this.klSellerShopManager.getById(kecheng.getShopId());
					if (shop == null)
						return Utils
								.returnServlet(getRequest(), getResponse(), map,
										"/page/coachtime/nannvshen.jsp", 1,
										"店铺信息错误:店铺不存在");
					if( shop.getUserid().longValue() != user.getId().longValue()) 
						return Utils
								.returnServlet(getRequest(), getResponse(), map,
										"/page/coachtime/nannvshen.jsp", 1,
										"店铺信息错误:您没有权限");
					
					
					map.put("p", pp);
					
					long pid = Utils.getLongParam(getRequest(), "pid");
					if (pid > 0 && pid == pp.getId().longValue() && (pp.getStatus() == null || pp.getStatus().intValue() != Utils.STATUS_COACHTIME_CLASSED)) {
						pp.setStatus(Utils.STATUS_COACHTIME_CLASSED);
						this.cmsStRhppeopleManager.update(pp);
					
						map.put("done", "done");
						return Utils.returnServlet(getRequest(), getResponse(),
								map, "/page/coachtime/nannvshen.jsp", 1, "确认课 程完成");
					}
					 else if (pid > 0) {
							return Utils
									.returnServlet(getRequest(), getResponse(), map,
											"/page/coachtime/nannvshen.jsp", 1,
											"此预约码已经被使用过");

						}
				}
				else {
					return Utils
							.returnServlet(getRequest(), getResponse(), map,
									"/page/coachtime/nannvshen.jsp", 1,
									"预约码或手机号错误");
				}
			}
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/coachtime/nannvshen.jsp", 1, "ok");
				
				
				/*
				KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
				
				q.setExtInt5(Integer.parseInt(yym.substring(0, 6)));
				q.setId(Long.parseLong(yym.substring(6)));
				List list = this.klShoppingShoppingcartproductManager.queryTop(q);
				if (list != null && list.isEmpty() == false) {
					KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) list
							.get(0);
					map.put("p", p);

					// 确认
					long pid = Utils.getLongParam(getRequest(), "pid");
					if (pid > 0 && pid == p.getId().longValue()
							&& p.getExtInt4() < Utils.STATUS_COACHTIME_CLASSED) {
						p.setExtInt4(Utils.STATUS_COACHTIME_CLASSED);
						this.klShoppingShoppingcartproductManager.update(p);

						// 保存历史记录
						KlShoppingCarthistory h = KlShoppingCarthistory
								.getHistory(p);
						this.klShoppingCarthistoryManager.save(h);

						map.put("done", "done");
						return Utils.returnServlet(getRequest(), getResponse(),
								map, "/page/coachtime/yuyuema.jsp", 1, "确认课 程完成");
					} else if (pid > 0) {
						return Utils
								.returnServlet(getRequest(), getResponse(), map,
										"/page/coachtime/yuyuema.jsp", 1,
										"此预约码已经被使用过");

					}
				}
				
				return Utils
						.returnServlet(getRequest(), getResponse(), map,
								"/page/coachtime/yuyuema.jsp", 1,
								"预约码错误");

			}

			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/coachtime/yuyuema.jsp", 1, "ok");
			*/
				
		}

	
	
	// 导入
	public String dodo() {
		Map map = new HashMap();
		try {
			ImportUtils.dodo();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "ok");
	}
	
	/**
	 * 支付宝退款
	 * @return
	 */
	public String refundFastPay(){
		Map map = new HashMap();
		Map<String,String> params = new HashMap<String,String>();
		Map requestParams = getRequest().getParameterMap();
		try {
			for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
				String name = (String) iter.next();
				String[] values = (String[]) requestParams.get(name);
				String valueStr = "";
				for (int i = 0; i < values.length; i++) {
					valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
				}
				//乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
				//valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
				params.put(name, valueStr);
			}
			
			//批次号
			String batch_no = new String(getRequest().getParameter("batch_no").getBytes("ISO-8859-1"),"UTF-8");
	
			//批量退款数据中转账成功的笔数
			String success_num = new String(getRequest().getParameter("success_num").getBytes("ISO-8859-1"),"UTF-8");
	
			//批量退款数据中的详细信息
			String result_details = new String(getRequest().getParameter("result_details").getBytes("ISO-8859-1"),"UTF-8");
			
			//交易状态
			String trade_status = new String(getRequest().getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");
	
			if(trade_status.equals("TRADE_FINISHED") || trade_status.equals("TRADE_SUCCESS")){
				result_details = result_details.replace("^", ",");
				KlShoppingCarthistoryQuery kscq = new KlShoppingCarthistoryQuery();
				kscq.setExt1(result_details.split(",")[0]);
				KlShoppingCarthistory ksc = (KlShoppingCarthistory) this.klShoppingCarthistoryManager.findPage(kscq).getResult().get(0);
				KlShoppingShoppingcartproductQuery kssq = new KlShoppingShoppingcartproductQuery();
				kssq.setId(ksc.getShopcartid());
				KlShoppingShoppingcartproduct kss = (KlShoppingShoppingcartproduct) this.klShoppingShoppingcartproductManager.findPage(kssq).getResult().get(0);
				KlShoppingOrder kso = this.klShoppingOrderManager.getById(kss.getOrderid());
				if(kso == null)//不存在订单信息
					return writeAjaxResponse("不存在订单信息！");
				if(kss.getPerPrice() > kso.getPayedMoney()){//课程金额大于等于支付宝支付金额
					kso.setPayedMoney(0f);
					kso.setPayedKard(kss.getPerPrice()-kso.getPayedMoney());
					//站内退币
					CmsUserInfo cui = this.cmsUserInfoManager.getById(ksc.getUserid());
					if(cui == null)//不存在用户
						return writeAjaxResponse("不存在用户信息！");
					cui.setMoneyleft(cui.getMoneyleft()+kso.getPayedMoney());
					this.cmsUserInfoManager.update(cui);//退币
				} else {
					kso.setPayedMoney(kso.getPayedMoney()-kss.getPerPrice());
				}
//				kso.setPayedKard(kso.getPayedKard()-kss.getPerPrice());
				this.klShoppingOrderManager.update(kso);//修改订单金额
				kss.setStatus(15);
				this.klShoppingShoppingcartproductManager.update(kss);//修改状态
				String cont = "您的["+kss.getProductName()+"]课程退款，于["+Utils.haobiaoToTime(System.currentTimeMillis())+"]完成。";
				CmsUserInfo user = this.cmsUserInfoManager.getById(kso.getUserid());
				// 发短信
				if (StringUtils.isNotEmpty(user.getMobile())) {
					SmsUtils.sendSms(user.getMobile(), cont);
				}
				// 发邮件
				if (StringUtils.isNotEmpty(user.getEmail())) {
					MailUtil.sendEmail(user.getEmail(), "开练网电子凭证", cont);
				}
				// 发站内信
				MessageUtils.sendSystemMessage(user.getId(), cont);
				CountSingleton.addCount(user.getId(), "user", "message", 1);
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return writeAjaxResponse("退款成功");
	}

	
	
	
	/**
	 * 导出excel
	 * @return
	 */
	public String excel() {
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
		query.setStatus(20);
		query.setPageSize(99999999);
		
		
		// 第一步，创建一个webbook，对应一个Excel文件
				HSSFWorkbook wb = new HSSFWorkbook();
				// 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
				HSSFSheet sheet = wb.createSheet("" + System.currentTimeMillis());
				// 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
				HSSFRow row = sheet.createRow((int) 0);
				// 第四步，创建单元格，并设置值表头 设置表头居中
				HSSFCellStyle style = wb.createCellStyle();
				style.setAlignment(HSSFCellStyle.ALIGN_LEFT); // 创建一个居中格式

				HSSFCell cell = row.createCell((short) 0);
				cell.setCellValue("店名");
				cell.setCellStyle(style);
				cell = row.createCell((short) 1);
				cell.setCellValue("产品名");
				cell.setCellStyle(style);
				
				cell = row.createCell((short) 2);
				cell.setCellValue("用户名");
				cell.setCellStyle(style);
				
				cell = row.createCell((short) 3);
				cell.setCellValue("联系方式");
				cell.setCellStyle(style);
		
				cell = row.createCell((short) 4);
				cell.setCellValue("付费金额");
				cell.setCellStyle(style);
		
//				cell = row.createCell((short) 5);
//				cell.setCellValue("付费状态");
//				cell.setCellStyle(style);
				
				cell = row.createCell((short) 5);
				cell.setCellValue("赴课状态");
				cell.setCellStyle(style);
				
				int i = 0;
		List<KlShoppingShoppingcartproduct> list = this.klShoppingShoppingcartproductManager.findPage(query).getResult();
		for(KlShoppingShoppingcartproduct p : list) {
			row = sheet.createRow(++i);
			
			String y = "未预约";
			if (p.getExtInt4() != null) {
				switch (p.getExtInt4().intValue()) {
				case -30:
					y = "无需预约";
					break;
				case -31:
					y = "电话预约";
					break;
				case 0:
					y = "待确认";
					break;
				case -10:
					y = "被拒绝";
					break;
				case 1:
					y = "已确认";
					break;
				case 2:
					y = "已授课";
					break;
				case 3:
					y = "已完课";
					break;
				case -2:
					y = "已取消待确认";
					break;
				}
			}
			
			
			row.createCell((short)0).setCellValue(p.getShopName());
			row.createCell((short)1).setCellValue(p.getProductName());
			row.createCell((short)2).setCellValue(p.getExt1());
			row.createCell((short)3).setCellValue(p.getExt3());
			row.createCell((short)4).setCellValue(p.getPrice());
			row.createCell((short)5).setCellValue(y);
			
//			row.createCell((short)0).setCellValue(p.getShopName());
//			
//			row.createCell((short)1).setCellValue(p.getPhoneno());
//			
//			CmsUserInfo u = this.cmsUserInfoManager.getById(p.getUserid());
//			if (u != null)
//				row.createCell((short)2).setCellValue(u.getMobile());
//			
//			row.createCell((short)3).setCellValue("http://www.kiklink.com/shop_" + p.getId() + ".html");
//			row.createCell((short)4).setCellValue(p.getAddress());
			
			/*
			 * Student stu = (Student) list.get(i);
			// 第四步，创建单元格，并设置值
			row.createCell((short) 0).setCellValue((double) stu.getId());
			row.createCell((short) 1).setCellValue(stu.getName());
			row.createCell((short) 2).setCellValue((double) stu.getAge());
			cell = row.createCell((short) 3);
			cell.setCellValue(new SimpleDateFormat("yyyy-mm-dd").format(stu
					.getBirth()));
			 */
		}
		
		long l = System.currentTimeMillis();
		try
		{
			String savePath = Utils.getSessionByRequest(getRequest()).getServletContext().getRealPath("/") + "";
			FileOutputStream fout = new FileOutputStream(savePath + "/attached/excel/" +  l + ".xls");
			wb.write(fout);
			fout.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
		Map map = new HashMap();
		map.put("l", l);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/excel.jsp", 1, "ok");
	}
	
	
	
	
	
	
	
	
}
