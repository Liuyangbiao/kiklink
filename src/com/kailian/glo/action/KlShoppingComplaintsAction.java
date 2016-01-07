/*

 */

package com.kailian.glo.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import cn.org.rapid_framework.page.Page;

import com.kailian.glo.model.CmsAdminuser;
import com.kailian.glo.model.CmsUserInfo;
import com.kailian.glo.model.KlSellerShop;
import com.kailian.glo.model.KlShoppingComplaints;
import com.kailian.glo.model.KlShoppingOrder;
import com.kailian.glo.model.KlShoppingShoppingcartproduct;
import com.kailian.glo.service.ICmsCommonPointsManager;
import com.kailian.glo.service.ICmsUserInfoManager;
import com.kailian.glo.service.IKlSellerShopManager;
import com.kailian.glo.service.IKlShoppingCarthistoryManager;
import com.kailian.glo.service.IKlShoppingComplaintsManager;
import com.kailian.glo.service.IKlShoppingOrderManager;
import com.kailian.glo.service.IKlShoppingShoppingcartproductManager;
import com.kailian.glo.vo.query.KlShoppingCarthistoryQuery;
import com.kailian.glo.vo.query.KlShoppingComplaintsQuery;
import com.kailian.glo.vo.query.KlShoppingOrderQuery;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.yebucuo.common.base.BaseStruts2Action;
import com.yebucuo.common.util.Json;
import com.yebucuo.sigleton.CountSingleton;
import com.yebucuo.util.JSTLTagUtils;
import com.yebucuo.util.MessageUtils;
import com.yebucuo.util.SmsUtils;
import com.yebucuo.util.Utils;
import com.yebucuo.util.mail.MailUtil;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;

/**
 * @author wangdapeng
 * @version 1.0
 * @since 1.0
 */

public class KlShoppingComplaintsAction extends BaseStruts2Action implements
		Preparable, ModelDriven {
	// 默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null;

	// forward paths
	protected static final String QUERY_JSP = "/kailian/KlShoppingComplaints/query.jsp";
	protected static final String LIST_JSP = "/kailian/KlShoppingComplaints/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlShoppingComplaints/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlShoppingComplaints/edit.jsp";
	protected static final String EDIT_JSP2 = "/kailian/KlShoppingComplaints/edit2.jsp";
	protected static final String SHOW_JSP = "/kailian/KlShoppingComplaints/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	// redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlShoppingComplaints/list.do";

	private IKlShoppingComplaintsManager klShoppingComplaintsManager;
	private IKlSellerShopManager klSellerShopManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	private IKlShoppingCarthistoryManager klShoppingCarthistoryManager ;
	private IKlShoppingOrderManager klShoppingOrderManager;
	private ICmsCommonPointsManager cmsCommonPointsManager;

	public ICmsCommonPointsManager getCmsCommonPointsManager() {
		return cmsCommonPointsManager;
	}

	public void setCmsCommonPointsManager(
			ICmsCommonPointsManager cmsCommonPointsManager) {
		this.cmsCommonPointsManager = cmsCommonPointsManager;
	}

	public IKlShoppingOrderManager getKlShoppingOrderManager() {
		return klShoppingOrderManager;
	}

	public void setKlShoppingOrderManager(
			IKlShoppingOrderManager klShoppingOrderManager) {
		this.klShoppingOrderManager = klShoppingOrderManager;
	}

	public IKlShoppingCarthistoryManager getKlShoppingCarthistoryManager() {
		return klShoppingCarthistoryManager;
	}

	public void setKlShoppingCarthistoryManager(
			IKlShoppingCarthistoryManager klShoppingCarthistoryManager) {
		this.klShoppingCarthistoryManager = klShoppingCarthistoryManager;
	}

	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}

	public IKlSellerShopManager getKlSellerShopManager() {
		return klSellerShopManager;
	}

	public void setKlSellerShopManager(IKlSellerShopManager klSellerShopManager) {
		this.klSellerShopManager = klSellerShopManager;
	}

	private IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager;

	public IKlShoppingShoppingcartproductManager getKlShoppingShoppingcartproductManager() {
		return klShoppingShoppingcartproductManager;
	}

	public void setKlShoppingShoppingcartproductManager(
			IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager) {
		this.klShoppingShoppingcartproductManager = klShoppingShoppingcartproductManager;
	}

	private KlShoppingComplaints klShoppingComplaints;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	public void setParam(String param) {
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klShoppingComplaints = new KlShoppingComplaints();
		} else {
			klShoppingComplaints = (KlShoppingComplaints) klShoppingComplaintsManager
					.getById(id);
		}
	}

	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlShoppingComplaintsManager(
			IKlShoppingComplaintsManager manager) {
		this.klShoppingComplaintsManager = manager;
	}

	public Object getModel() {
		return klShoppingComplaints;
	}

	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}

	/** 执行搜索 */
	public String list() {
		KlShoppingComplaintsQuery query = newQuery(
				KlShoppingComplaintsQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setSortColumns("id desc");
		Page page = klShoppingComplaintsManager.findPage(query);
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
		KlShoppingComplaintsQuery query = newQuery(
				KlShoppingComplaintsQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingComplaintsManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}

	
	public String update2() {
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			this.klShoppingComplaints.setModifyuser(theuserid);
		}
		klShoppingComplaints.setModifytimelong(System.currentTimeMillis());
		
		
		KlShoppingShoppingcartproduct p = null;
		if (StringUtils.isNotEmpty(klShoppingComplaints.getExt2() ) && StringUtils.isNumeric(klShoppingComplaints.getExt2())) {
			p = this.klShoppingShoppingcartproductManager.getById(Long.parseLong(klShoppingComplaints.getExt2()));
		}
		int status = Utils.getIntParam(getRequest(), "status");
		
		//不存在订单或者已经退款
//		if (status == 20 && (p == null || p.getStatus() != 20 )) {
//			return writeAjaxResponse("不存在订单或者已经退款");
//		}
		
		
		
		if (status != this.klShoppingComplaints.getStatus()) {
			MessageUtils.sendSystemMessage(this.klShoppingComplaints.getUserid(), "您的投诉状态已经成为：" 
		+ JSTLTagUtils.showcont("KlShoppingComplaints", "status", this.klShoppingComplaints.getStatus()+ "", 0) + ":" + this.klShoppingComplaints.getResultToComplainer());
			CountSingleton.addCount(this.klShoppingComplaints.getUserid(), "user", "message"	, 1);
			
			MessageUtils.sendSystemMessage(this.klShoppingComplaints.getToUserId(), "对您的投诉状态已经成为：" 
					+ JSTLTagUtils.showcont("KlShoppingComplaints", "status", this.klShoppingComplaints.getStatus()+ "", 0) + ":" + this.klShoppingComplaints.getResultToComplainer());
						CountSingleton.addCount(this.klShoppingComplaints.getToUserId(), "user", "message"	, 1);
		
						
			
		}
		
		
		klShoppingComplaintsManager.update(this.klShoppingComplaints);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingComplaints);
			return writeAjaxResponse(Json.toJson(map));
		}
		else {
			return OK_JSP;
		}
	}
	
	
	/** 查看对象 */
	public String show() {
		// klShoppingComplaints.setCreateUser(yebucuoKgAdminuserManager2.getById(klShoppingComplaints.getModifyuser()));

		return SHOW_JSP;
	}

	/** 进入新增页面 */
	public String create() {
		return CREATE_JSP;
	}

	/** 保存新增对象 */
	public String save() {
		// klShoppingComplaints.setCreateTime(new Date());
		// klShoppingComplaints.setDeleted("0");

		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingComplaints.setModifyuser(theuserid);
		}
		klShoppingComplaints.setCreatetimelong(System.currentTimeMillis());
		klShoppingComplaints.setModifytimelong(System.currentTimeMillis());
		klShoppingComplaints.setStatus(0);

		klShoppingComplaintsManager.save(klShoppingComplaints);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingComplaints);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return OK_JSP;
		}
	}

	/*
	 * 保存
	 */
	public String savecom() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "投诉");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		this.klShoppingComplaints.setExtInt1(Utils.getIntParam(getRequest(), "extInt1"));
		this.klShoppingComplaints.setUserid(user.getId());
		this.klShoppingComplaints.setExt1(user.getUsername());

		klShoppingComplaints.setCreatetimelong(System.currentTimeMillis());
		klShoppingComplaints.setModifytimelong(System.currentTimeMillis());
		klShoppingComplaints.setStatus(0);

		if (this.klShoppingComplaints.getFromUserType().intValue() == Utils.TYPE_TARGET_USER) {
			this.klShoppingComplaints.setExt1(user.getUsername());
			KlSellerShop shop = this.klSellerShopManager
					.getById(this.klShoppingComplaints.getToUserId());
			if (shop != null) {
				this.klShoppingComplaints.setToUserId(shop.getId());
				this.klShoppingComplaints.setToUsername(shop.getShopName());
			}
		} else if (this.klShoppingComplaints.getFromUserType().intValue() == Utils.TYPE_TARGET_SHOP) {
			KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(getRequest())
					.getAttribute("sessionshop");
			this.klShoppingComplaints.setUserid(shop.getId());
			this.klShoppingComplaints.setExt1(shop.getShopName());

			user = this.cmsUserInfoManager.getById(this.klShoppingComplaints
					.getToUserId());
			if (user != null) {
				this.klShoppingComplaints.setToUserId(user.getId());
				this.klShoppingComplaints.setToUsername(user.getUsername());
			}
		}

		klShoppingComplaintsManager.save(klShoppingComplaints);

		map.put("re", -2);
		map.put("word", "投诉成功，请等待答复");
		if (this.klShoppingComplaints.getExtInt1() == 1) 
			map.put("word", "退款申请成功，请等待管理员答复");
		
		map.put("lefttitle", "投诉");
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp");
	}

	/*
	 * 我的投诉 商家
	 */
	public String mycomps() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "投诉");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(getRequest())
				.getAttribute("sessionshop");

		long cid = Utils.getLongParam(getRequest(), "did");
		if (cid > 0) {
			KlShoppingComplaints k = this.klShoppingComplaintsManager
					.getById(cid);
			if (k != null) {
				if (k.getUserid().longValue() != shop.getId().longValue()) {
					return Utils.returnServlet(getRequest(), getResponse(),
							map, "/page/info.jsp", -2, "没有权限");
				}
				this.klShoppingComplaintsManager.removeById(cid);
			}
		}

		KlShoppingComplaintsQuery query = newQuery(
				KlShoppingComplaintsQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setUserid(user.getId());
		query.setFromUserType(Utils.TYPE_TARGET_USER);

		if (shop != null) {
			query.setUserid(shop.getId());
			query.setFromUserType(Utils.TYPE_TARGET_SHOP);
		}

		Page page = klShoppingComplaintsManager.findPage(query);
		map.put("page", page);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/complain/mycomps.jsp", 1, "ok");

	}

	/*
	 * 我的投诉 用户
	 */
	public String usercomps() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "投诉");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		KlShoppingComplaintsQuery query = newQuery(
				KlShoppingComplaintsQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setUserid(user.getId());
		Page page = klShoppingComplaintsManager.findPage(query);
		map.put("page", page);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/complain/frommecomps.jsp", 1, "ok");

	}

	/*
	 * 对我的投诉 商家
	 */
	public String tomecomps() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "投诉");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		KlShoppingComplaintsQuery query = newQuery(
				KlShoppingComplaintsQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setToUserId(user.getId());
		Page page = klShoppingComplaintsManager.findPage(query);
		map.put("page", page);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/complain/tomecomps.jsp", 1, "ok");

	}

	/*
	 * 违规处理 商家
	 */
	public String comresults() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "投诉");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		KlShoppingComplaintsQuery query = newQuery(
				KlShoppingComplaintsQuery.class, DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setToUserId(user.getId());
		// 以后会有status

		Page page = klShoppingComplaintsManager.findPage(query);
		map.put("page", page);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/complain/comresults.jsp", 1, "ok");

	}

	/** 进入更新页面 */
	public String edit() {
		return EDIT_JSP;
	}
	public String edit2() {
		KlShoppingShoppingcartproduct p = null;
		if (StringUtils.isNotEmpty(klShoppingComplaints.getExt2() ) && StringUtils.isNumeric(klShoppingComplaints.getExt2())) {
			p = this.klShoppingShoppingcartproductManager.getById(Long.parseLong(klShoppingComplaints.getExt2()));
			if(p == null)
				return writeAjaxResponse("处理信息不存在");
			this.getRequest().setAttribute("p", p);
			
			if (p.getStatus() != null && p.getStatus() == 20) {
				KlShoppingCarthistoryQuery hq = new KlShoppingCarthistoryQuery();
				hq.setShopcartid(p.getId());
				hq.setProductid(p.getProductid());
				hq.setStatus(20);
				Page page = this.klShoppingCarthistoryManager.findPage(hq);
				
				if (page != null && page.getResult().size() > 0){
					KlShoppingOrderQuery ksoq = new KlShoppingOrderQuery();
					ksoq.setId(p.getOrderid());
					Page ls = this.klShoppingOrderManager.findPage(ksoq);
					if(ls.getResult().size() > 0)
						this.getRequest().setAttribute("o", ls.getResult().get(0));
					this.getRequest().setAttribute("h", page.getResult().get(0));
				}
			}
		}
		
		return EDIT_JSP2;
	}
	
	//取得商品售价
	public String productInfo(){
		//取得购物车信息
		KlShoppingShoppingcartproduct kss = this.klShoppingShoppingcartproductManager.getById(Long.parseLong(klShoppingComplaints.getExt2()));
		Map map = new HashMap();
		map.put("obj", kss);
		return writeAjaxResponse(Json.toJson(map));
	}

	/** 保存更新对象 */
	public String update() {
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingComplaints.setModifyuser(theuserid);
		}
		klShoppingComplaints.setModifytimelong(System.currentTimeMillis());
		
		klShoppingComplaintsManager.update(this.klShoppingComplaints);
		
		try {

			if(klShoppingComplaints.getStatus().intValue() == 20){//退款处理
				//退款详细数据
				String detail_data[] = Utils.getParam(getRequest(), "WIDdetail_data").split(",");
				//取得购物车信息
				KlShoppingShoppingcartproduct kss = this.klShoppingShoppingcartproductManager.getById(Long.parseLong(klShoppingComplaints.getExt2()));
				if(detail_data[1] == null || Float.parseFloat(detail_data[1]) <= 0f){//先判断是否需要通过支付宝退款，大于0则需要，否则不需要
					//站内退币
					CmsUserInfo cui = this.cmsUserInfoManager.getById(klShoppingComplaints.getUserid());
					if(cui == null)//不存在用户
						return writeAjaxResponse("用户信息不存在");
					cui.setMoneyleft(cui.getMoneyleft()+kss.getPerPrice());
					this.cmsUserInfoManager.update(cui);//退币
					KlShoppingOrder kso = this.klShoppingOrderManager.getById(kss.getOrderid());
					if(kso == null)//不存在订单信息
						return writeAjaxResponse("订单信息不存在");
					this.klShoppingOrderManager.update(kso);//修改订单金额
					kso.setPayedKard(kso.getPayedKard()-kss.getPerPrice());
					kss.setStatus(15);
					this.klShoppingShoppingcartproductManager.update(kss);//修改状态
				}
			}
			if(klShoppingComplaints.getStatus().intValue() == 50){ //关店处理
				KlShoppingShoppingcartproduct ksscp = this.klShoppingShoppingcartproductManager.getById(Long.parseLong(klShoppingComplaints.getExt2()));
				KlSellerShop kss = this.klSellerShopManager.getById(ksscp.getShopid());
				Map map = null;
				map = Utils.checkParamerts(getRequest(), "adminuser");
				if (map.isEmpty() == false) {
					return Utils.returnServlet(getRequest(), getResponse(), map,
							"/page/info.jsp", -2, "您没有权限");
				}

				if (kss == null)
					return Utils.returnServlet(getRequest(), getResponse(), map,
							"/page/info.jsp", -2, "店铺不存在");
				
				int i1 = kss.getStatus();
				
				if (kss.getStatus() >= 0) {
					kss.setStatus(kss.getStatus().intValue() - 100);
					this.klSellerShopManager.update(kss);
					
					int i2 = kss.getStatus();
					
					map.put("i1", i1);
					map.put("i2", "i2");

					String sql = "update kl_seller_product set status=status-100 where shopid=" + kss.getId();
					this.cmsCommonPointsManager.updateSql(sql);
					CmsAdminuser cau = (CmsAdminuser) getRequest().getSession().getAttribute("adminuser");
					String cont = "您的店铺["+kss.getShopName()+"]于["+Utils.haobiaoToTime(System.currentTimeMillis())+"]被管理员["+cau.getUsername()+"]关闭。";
					CmsUserInfo user = this.cmsUserInfoManager.getById(kss.getUserid());
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
			}
		} catch (Exception e){
			e.printStackTrace();
		}
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingComplaints);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return OK_JSP;
		}
	}
	
	/**
	 * 按指定形式格式化日期
	 * @param date
	 * @param param
	 * @return
	 */
	private String formatDate(Date date, String param){
		SimpleDateFormat sdf = new SimpleDateFormat(param);
		return sdf.format(date);
	}

	/** 删除对象 */
	public String delete() {
		if (items != null)
			for (String ids : items) {
				String[] idArray = ids.split(",");
				for (String id : idArray) {
					if (StringUtils.isNotEmpty(id) && StringUtils.isNumeric(id)) {
						klShoppingComplaints = klShoppingComplaintsManager
								.getById(Long.parseLong(id));
						if (klShoppingComplaints != null) {
							// klShoppingComplaints.setStatus(-1);
							// klShoppingComplaintsManager.update(klShoppingComplaints);
							klShoppingComplaintsManager
									.removeById(klShoppingComplaints.getId());
						}
					}
				}
				// klShoppingComplaintsManager.removeById(Long.parseLong(id));
			}

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("re", 1);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return LIST_ACTION;
		}
	}

	/*
	 * 投诉
	 */
	public String preshopcomplain() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录或者没有开店");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}
		
		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(getRequest()).getAttribute("sessionshop");
		map.put("shop", shop);
		
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/complain/preshop.jsp", 1, "ok");

	}

}
