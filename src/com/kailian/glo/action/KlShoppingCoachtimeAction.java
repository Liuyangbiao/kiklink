/*

 */

package com.kailian.glo.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import com.yebucuo.sigleton.CountSingleton;
import com.yebucuo.util.JSTLDateUtils;
import com.yebucuo.util.Md5;
import com.yebucuo.util.MessageUtils;
import com.yebucuo.util.SmsUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.kailian.glo.vo.query.KlShoppingShoppingcartproductQuery;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

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

public class KlShoppingCoachtimeAction extends BaseStruts2Action implements
		Preparable, ModelDriven {
	// 默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null;

	// forward paths
	protected static final String QUERY_JSP = "/kailian/KlShoppingCoachtime/query.jsp";
	protected static final String LIST_JSP = "/kailian/KlShoppingCoachtime/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlShoppingCoachtime/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlShoppingCoachtime/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlShoppingCoachtime/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	// redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlShoppingCoachtime/list.do";

	private IKlShoppingCoachtimeManager klShoppingCoachtimeManager;

	private IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	private IKlSellerProductManager klSellerProductManager;
	private IKlSellerShopManager klSellerShopManager;
	public IKlSellerShopManager getKlSellerShopManager() {
		return klSellerShopManager;
	}

	public void setKlSellerShopManager(IKlSellerShopManager klSellerShopManager) {
		this.klSellerShopManager = klSellerShopManager;
	}

	private IKlShoppingCarthistoryManager klShoppingCarthistoryManager;
	
	
	
	public IKlShoppingCarthistoryManager getKlShoppingCarthistoryManager() {
		return klShoppingCarthistoryManager;
	}

	public void setKlShoppingCarthistoryManager(
			IKlShoppingCarthistoryManager klShoppingCarthistoryManager) {
		this.klShoppingCarthistoryManager = klShoppingCarthistoryManager;
	}

	public IKlSellerProductManager getKlSellerProductManager() {
		return klSellerProductManager;
	}

	public void setKlSellerProductManager(
			IKlSellerProductManager klSellerProductManager) {
		this.klSellerProductManager = klSellerProductManager;
	}

	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}

	public IKlShoppingShoppingcartproductManager getKlShoppingShoppingcartproductManager() {
		return klShoppingShoppingcartproductManager;
	}

	public void setKlShoppingShoppingcartproductManager(
			IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager) {
		this.klShoppingShoppingcartproductManager = klShoppingShoppingcartproductManager;
	}

	private KlShoppingCoachtime klShoppingCoachtime;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	public void setParam(String param) {
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klShoppingCoachtime = new KlShoppingCoachtime();
		} else {
			klShoppingCoachtime = (KlShoppingCoachtime) klShoppingCoachtimeManager
					.getById(id);
		}
	}

	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlShoppingCoachtimeManager(
			IKlShoppingCoachtimeManager manager) {
		this.klShoppingCoachtimeManager = manager;
	}

	public Object getModel() {
		return klShoppingCoachtime;
	}

	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}

	/** 执行搜索 */
	public String list() {
		KlShoppingCoachtimeQuery query = newQuery(
				KlShoppingCoachtimeQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingCoachtimeManager.findPage(query);
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
		Map map = new HashMap();
		KlSellerProduct p = this.klSellerProductManager.getById(Utils
				.getLongParam(getRequest(), "ext1"));
		if (p != null) {
		//	if (p.getReturnClassCount() > 0) {
				KlShoppingCoachtimeQuery query = newQuery(
						KlShoppingCoachtimeQuery.class, DEFAULT_SORT_COLUMNS);
				String sort = this.getRequest().getParameter("sort");
				if (StringUtils.isNotEmpty(sort))
					query.setSortColumns(sort);
				Page page = klShoppingCoachtimeManager.findPage(query);

				map.put("total", page.getTotalCount());
				map.put("rows", page.getResult());
				map.put("re", 1);
				map.put("word", "ok");
//			}
//			else {
//				map.put("noneedyuyue", "yes");
//				map.put("re", 1);
//				map.put("word", "ok");
//			}
			
		}
		else {
			//没有课程
			map.put("re", -1);
			map.put("word", "课程不存在");
		}

		return writeAjaxResponse(Json.toJson(map));
	}

	/** 查看对象 */
	public String show() {
		// klShoppingCoachtime.setCreateUser(yebucuoKgAdminuserManager2.getById(klShoppingCoachtime.getModifyuser()));

		return SHOW_JSP;
	}

	/** 进入新增页面 */
	public String create() {
		return CREATE_JSP;
	}

	/** 保存新增对象 */
	public String save() {
		// klShoppingCoachtime.setCreateTime(new Date());
		// klShoppingCoachtime.setDeleted("0");

		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingCoachtime.setModifyuser(theuserid);
		}
		klShoppingCoachtime.setCreatetimelong(System.currentTimeMillis());
		klShoppingCoachtime.setModifytimelong(System.currentTimeMillis());
		klShoppingCoachtime.setStatus(0);
		
		
		klShoppingCoachtimeManager.save(klShoppingCoachtime);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingCoachtime);
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
			klShoppingCoachtime.setModifyuser(theuserid);
		}
		klShoppingCoachtime.setModifytimelong(System.currentTimeMillis());

		klShoppingCoachtimeManager.update(this.klShoppingCoachtime);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingCoachtime);
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
						klShoppingCoachtime = klShoppingCoachtimeManager
								.getById(Long.parseLong(id));
						if (klShoppingCoachtime != null) {
							// klShoppingCoachtime.setStatus(-1);
							// klShoppingCoachtimeManager.update(klShoppingCoachtime);
							klShoppingCoachtimeManager
									.removeById(klShoppingCoachtime.getId());
						}
					}
				}
				// klShoppingCoachtimeManager.removeById(Long.parseLong(id));
			}

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("re", 1);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return LIST_ACTION;
		}
	}

	public String updateStatus() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您没有权限");
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
//		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(getRequest())
//				.getAttribute("sessionshop");
//		CmsUserInfo su = this.cmsUserInfoManager.getById(shop.getUserid());
		

		KlShoppingShoppingcartproduct p = this.klShoppingShoppingcartproductManager
				.getById(Utils.getLongParam(getRequest(), "pid"));
		if (p == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "订单不存在");
		
		KlSellerShop shop = this.klSellerShopManager.getById(p.getShopid());
		if (shop == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "店铺不存在");
		CmsUserInfo su = this.cmsUserInfoManager.getById(shop.getUserid());
		

		String t = System.currentTimeMillis() + "";
		t = t.substring(t.length() - 6);
		p.setExtInt5(Integer.parseInt(t));
		while ((p.getExtInt5() + "").length() < 6)
			p.setExtInt5(p.getExtInt5() * 10);

		// if ( (shop != null && shop.getId().longValue() != p.getShopid()
		// .longValue())
		// && (user != null && user.getId().longValue() != p.getUserid()
		// .longValue()) || (user == null && shop == null))
		// return Utils.returnServlet(getRequest(), getResponse(), map,
		// "/page/info.jsp", -2, "您没有权限进行此操作，请重新登录。");
		if (shop != null
				&& shop.getId().longValue() == p.getShopid().longValue()) {

		} else if (user != null
				&& user.getId().longValue() == p.getUserid().longValue()) {

		} else {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您没有权限进行此操作，请重新登录。");
		}

		if (Utils.getParam(getRequest(), "timestatus") != null) {
			int oldtimestatus = p.getExtInt4();
			Logger log = Logger.getLogger(getClass());
			log.info("xxxxxyyyyy:" + Utils.getParam(getRequest(), "timestatus")
					+ "      " + Utils.getIntParam(getRequest(), "timestatus"));
			
			
			//确认取消预约
			if (p.getExtInt4() == -2 && Utils.getIntParam(getRequest(), "timestatus") == -1) {
				CmsUserInfo u = this.cmsUserInfoManager.getById(p.getUserid());
				if (u != null && Utils.checkMobile(u.getMobile())) {
					SmsUtils.sendSms(u.getMobile(), "您的取消课程预约申请已经被确认.");
				}
			}
			
			
			p.setExtInt4(Utils.getIntParam(getRequest(), "timestatus"));
			if (p.getExtInt4().intValue() == 2000)
				p.setExtInt4(-2);

			//取消预约
			log.info("lllllllooooooggggg:" + p.getExtInt4());
			if (p.getExtInt4() != null && p.getExtInt4() == -2	) {
				KlSellerProduct product = this.klSellerProductManager.getById(p.getProductid());
				if (product == null) {
					return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "课程不存在");
				}
				
				log.info("count:" + product.getReturnClassCount());
				if (product.getReturnClassCount() > 0) {
					//判断取消预约时间
					String tm =  p.getExtInt1() + "";
					while (tm.length() < 4)
						tm = 0 + tm;
					String s = "" + p.getExtInt3() + "" + tm;
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
					try {
						Date d =(Date)sdf.parse(s);

						log.info("yyyyyyyyyyddddmm:" + d.toGMTString() + "    " + product.getReturnClassCount());
						log.info("yyyyyyyyyyddddmm2:" + d.getTime() + "  " + System.currentTimeMillis() + "    " + product.getReturnClassCount() * 3600 * 24 * 1000);	
						
						if (d.getTime() - System.currentTimeMillis() < product.getReturnClassCount() * 3600 * 24 * 1000) {
							//取消时限内,需要审核
							/*
							return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2,
									"对不起，该课程在开课前" + product.getReturnClassCount() + "天之内不能取消预约。" );
							*/
							if (su != null && Utils.checkMobile(su.getMobile())) {
								String cont = "用户" + user.getUsername() + "发起了预约取消申请，请您尽快线上操作确认。";
								SmsUtils.sendSms(su.getMobile(), cont);
							}
						}
						else if (d.getTime() < System.currentTimeMillis()) {
							return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2,
									"对不起，已经超过了预约的时间,无法取消。" );
						}
						else {
							//可以随时取消的
							p.setExtInt4(-1);
							if (su != null && Utils.checkMobile(su.getMobile())) {
								String cont = "用户" + user.getUsername() + "取消了原定"
									+ JSTLDateUtils.coachTime(p.getExtInt3(),
											p.getExtInt1(), p.getExtInt2()) + "的预约";
						
								SmsUtils.sendSms(su.getMobile(), cont);
							}
						}
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
			}
			// 发短信
			//确认
			if (p.getExtInt4() != null && p.getExtInt4() == 1) {
				// <td>${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
				String s = "您预约的课程"
						//+ p.getProductName()
						+ "已被确认,预约码"
						+ p.getExtInt5()+"" + p.getId()
						+ ",时间"
						+ JSTLDateUtils.coachTime(p.getExtInt3(),
								p.getExtInt1(), p.getExtInt2());
				s = "您已成功预约"+ JSTLDateUtils.coachTime(p.getExtInt3(),
								p.getExtInt1(), p.getExtInt2()) + "的产品。请届时准时到场使用。预约码:" + p.getExtInt5()+"" + p.getId() ;
				
				
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
			
			//拒绝
			if (p.getExtInt4() != null && p.getExtInt4() == -10) {
				// <td>${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
				String s = "很抱歉，您预约的课程时间" + JSTLDateUtils.coachTime(p.getExtInt3(),
						p.getExtInt1(), p.getExtInt2())
						//+ p.getProductName()
						+ "被商家拒绝,您可以预约其他时间";
				
				
				CmsUserInfo u = this.cmsUserInfoManager.getById(p.getUserid());

				if (u != null) {
					MessageUtils.sendSystemMessage(u.getId(), s);
					CountSingleton.addCount(u.getId(), "user", "message", 1);

					if (StringUtils.isNotEmpty(u.getMobile()))
						SmsUtils.sendSms(u.getMobile(), s);
					if (StringUtils.isNotEmpty(u.getEmail()))
						try {
							MailUtil.sendEmail(u.getEmail(), "开练网预约失败信", s);
						} catch (UnsupportedEncodingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
			}
			
			

			if (StringUtils
					.isNotEmpty(Utils.getParam(this.getRequest(), "word")))
				p.setAddition(Utils.getParam(getRequest(), "word"));
		}
		p.setModifytimelong(System.currentTimeMillis());
		this.klShoppingShoppingcartproductManager.update(p);
		
		KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(p);
		this.klShoppingCarthistoryManager.save(h);
		

		return Utils.returnServlet(getRequest(), getResponse(), map, "!"
				+ this.getRequest().getHeader("referer"), 1, "ok");
	}

	//自动完课
	public String autoconfirm()  {
		KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
		q.setStatus(20);
		q.setExtInt4(1);
		q.setPageSize(8888);
		//q.setId(new Long(266));
		List list = this.klShoppingShoppingcartproductManager.findPage(q).getResult();
		for (int i = 0; i < list.size(); i ++) {
			KlShoppingShoppingcartproduct p = (KlShoppingShoppingcartproduct) list.get(i);
			String tm =  p.getExtInt1() + "";
			while (tm.length() < 4)
				tm = 0 + tm;
			String s = "" + p.getExtInt3() + "" + tm;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
			try {
				Date d =(Date)sdf.parse(s);
				if (d.getTime() + 1000 * 3600 < System.currentTimeMillis()) {
					//自动完课
					p.setExtInt4(3);
					this.klShoppingShoppingcartproductManager.update(p);
				}
			}catch(Exception e) {
				
			}
		}
		
		return null;
	}
	
	
	/*
	 * 用户 待确认
	 */
	public String waitconfirm() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "待确认");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		map.put("user", user);

		// 确认
		long opid = Utils.getLongParam(getRequest(), "opid");
		if (opid > 0) {
			KlShoppingShoppingcartproduct p = this.klShoppingShoppingcartproductManager
					.getById(opid);
			if (p != null
					|| p.getUserid().longValue() != user.getId().longValue()) {
				p.setExtInt4(Utils.STATUS_COACHTIME_CLASSED);
				this.klShoppingShoppingcartproductManager.update(p);
			}
		}

		// 待确认
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
		query.setPageNumber(Utils.getIntParam(getRequest(), "page"));
		if (query.getPageNumber() < 0)
			query.setPageNumber(0);
		query.setExtInt4(Utils.STATUS_COACHTIME_WAITCONFIRMCLASSED);
		query.setUserid(user.getId());
		Page wp = this.klShoppingShoppingcartproductManager.findPage(query);
		map.put("page", wp);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/order/orders3.jsp", 1, "ok");
	}

	/*
	 * 商家 签到管理
	 */
	public String signgot() {
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
		map.put("shop", shop);

		// 签到请求
		long opid = Utils.getLongParam(getRequest(), "opid");
		if (opid > 0) {
			KlShoppingShoppingcartproduct p = this.klShoppingShoppingcartproductManager
					.getById(opid);
			if (p != null
					|| p.getShopid().longValue() != shop.getId().longValue()) {
				p.setExtInt4(Utils.STATUS_COACHTIME_WAITCONFIRMCLASSED);
				p.setProgress(Utils.getIntParam(getRequest(), "keshi"));
				p.setModifytimelong(System.currentTimeMillis());
				this.klShoppingShoppingcartproductManager.update(p);
			}
		}

		// 已确认
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
		query.setPageNumber(Utils.getIntParam(getRequest(), "page"));
		if (query.getPageNumber() < 0)
			query.setPageNumber(0);
		query.setExtInt4(Utils.STATUS_COACHTIME_CONFIRMD);
		query.setShopid(shop.getId());
		query.setSortColumns("id desc");
		long orderid = Utils.getLongParam(getRequest(), "orderid");
		if (orderid > 0)
			query.setOrderid(orderid);
		String cn = Utils.getParam(getRequest(), "ext1");
		if (StringUtils.isNotEmpty(cn) && !"购买者".equalsIgnoreCase(cn))
			query.setExt1(cn);

		Page wp = this.klShoppingShoppingcartproductManager.findPage(query);
		map.put("page", wp);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/time/signgot.jsp", 1, "ok");
	}

	/*
	 * 店铺的预约情况
	 */
	public String shoptimes() {
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
		map.put("shop", shop);

		KlSellerProductQuery q = new KlSellerProductQuery();
		q.setShopId(shop.getId());
		q.setStatus(1);
		q.setSortColumns("id");
		q.setPageSize(11111);
		List products = this.klSellerProductManager.queryTop(q);
		map.put("products", products);

		// 待确认
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
		query.setPageNumber(Utils.getIntParam(getRequest(), "page"));
		if (query.getPageNumber() < 0)
			query.setPageNumber(0);
		query.setExtInt4(0);
		query.setShopid(shop.getId());
		long productid = Utils.getLongParam(getRequest(), "productid");
		if (productid > 0)
			query.setProductid(productid);
		String day = Utils.getParam(getRequest(), "day");
		if (StringUtils.isNotEmpty(day)) {
			day = day.replaceAll("-", "");
			query.setExtInt3(Integer.parseInt(day));
		}

		Page wp = this.klShoppingShoppingcartproductManager.findPage(query);
		map.put("page", wp);

		// 已取消
		query = new KlShoppingShoppingcartproductQuery();
		query.setPageNumber(Utils.getIntParam(getRequest(), "page1"));
		if (query.getPageNumber() < 0)
			query.setPageNumber(0);
		query.setExtInt4(-2);
		query.setShopid(shop.getId());
		Page page1 = this.klShoppingShoppingcartproductManager.findPage(query);
		map.put("page1", page1);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/time/times.jsp", 1, "ok");
	}

	// 预约或者修改时间
	public String savetime() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		KlShoppingShoppingcartproduct cl = this.klShoppingShoppingcartproductManager
				.getById(Utils.getLongParam(getRequest(), "shoppedclassid"));
		if (cl == null
				|| user.getId().longValue() != cl.getUserid().longValue()) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您无权预约该课程");
		}
		
		CmsUserInfo ui = null;
		KlSellerShop shop = this.klSellerShopManager.getById(cl.getShopid());
		if (shop != null) 
			ui = this.cmsUserInfoManager.getById(shop.getUserid());

		// 删除
		int delete = Utils.getIntParam(getRequest(), "isdelete");
		if (delete > 0) {
			KlShoppingCoachtimeQuery q = new KlShoppingCoachtimeQuery();
			q.setShoppedclassid(cl.getId());
			q.setPageSize(11111);
			List list = this.klShoppingCoachtimeManager.queryTop(q);
			for (int i = 0; i < list.size(); i++) {
				KlShoppingCoachtime t = (KlShoppingCoachtime) list.get(i);
				this.klShoppingCoachtimeManager.removeById(t.getId());
			}
			cl.setExtInt1(-1);
			cl.setExtInt2(-1);
			cl.setExtInt3(-1);
			cl.setExtInt4(-2);
			this.klShoppingShoppingcartproductManager.update(cl);
			
			KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(cl);
			this.klShoppingCarthistoryManager.save(h);

			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", 1, "ok");
		}

		int dateint = Utils.getIntParam(getRequest(), "dateint");
		String hourhalfs = Utils.getParam(getRequest(), "hourhalfs");
		if (dateint < 0 || StringUtils.isEmpty(hourhalfs))
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "参数错误");

		cl.setExtInt1(-1);
		cl.setExtInt2(-1);

		String[] ss = hourhalfs.split(",");
		for (int i = 0; i < ss.length; i++) {
			KlShoppingCoachtime t = new KlShoppingCoachtime();
			t.setShopid(cl.getShopid());
			t.setUserid(cl.getUserid());
			t.setShoppedclassid(cl.getId());
			t.setDateint(dateint);
			t.setHourhalf(Integer.parseInt(ss[i]));

			t.setCreatetimelong(System.currentTimeMillis());
			t.setStatus(0);

			this.klShoppingCoachtimeManager.save(t);

			if (cl.getExtInt1() == -1 || cl.getExtInt1() > t.getHourhalf())
				cl.setExtInt1(t.getHourhalf());
			if (cl.getExtInt2() == -1 || cl.getExtInt2() < t.getHourhalf())
				cl.setExtInt2(t.getHourhalf());
			cl.setExtInt3(dateint);
			cl.setExtInt4(0);
		}

		cl.setModifytimelong(System.currentTimeMillis());
		this.klShoppingShoppingcartproductManager.update(cl);
		KlShoppingCarthistory h = KlShoppingCarthistory.getHistory(cl);
		this.klShoppingCarthistoryManager.save(h);
		
		String cont = "用户" + user.getUsername() + "刚刚向您发起预约，请您尽快线上操作确认。";
		if (ui != null && Utils.checkMobile(ui.getMobile())) {
			//发短信
			
			SmsUtils.sendSms(ui.getMobile(), cont);
		}
		if (ui != null && Utils.checkEmail(ui.getEmail())) {
			//
			try {
				MailUtil.sendEmail(ui.getEmail(), "开练网预约提醒信", cont);
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		MessageUtils.sendSystemMessage(ui.getId(), cont);
		CountSingleton.addCount(ui.getId(), "user", "message", 1);
		
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "ok");

	}

}
