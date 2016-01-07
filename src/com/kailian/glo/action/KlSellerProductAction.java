/*

 */

package com.kailian.glo.action;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
import com.yebucuo.util.ImageUtils;
import com.yebucuo.util.JSTLTagUtils;
import com.yebucuo.util.MessageUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsCommonPhotoQuery;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.kailian.glo.vo.query.CtPhotoQuery;
import com.kailian.glo.vo.query.CtUserProvinceQuery;
import com.kailian.glo.vo.query.KlSellerCoachQuery;
import com.kailian.glo.vo.query.KlShoppingShoppingcartproductQuery;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFPalette;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;

import com.yebucuo.common.base.*;
import com.yebucuo.common.util.*;
import com.yebucuo.filter.RequestFilter;

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
 * @author wangdapeng
 * @version 1.0
 * @since 1.0
 */

public class KlSellerProductAction extends BaseStruts2Action implements
		Preparable, ModelDriven {
	// 默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null;

	// forward paths
	protected static final String QUERY_JSP = "/kailian/KlSellerProduct/query.jsp";
	protected static final String LIST_JSP = "/kailian/KlSellerProduct/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlSellerProduct/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlSellerProduct/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlSellerProduct/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	// redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlSellerProduct/list.do";

	private IKlSellerProductManager klSellerProductManager;
	private IKlSellerShopManager klSellerShopManager;
	private ICtPhotoManager ctPhotoManager;
	private ICtUserProvinceManager ctUserProvinceManager;
	private ICtUserCityManager ctUserCityManager;
	private ICtUserQuManager ctUserQuManager;
	private IKlSellerCoachManager klSellerCoachManager;
	private ICmsCommonCommentManager cmsCommonCommentManager;
	private ICmsCommonPhotoManager cmsCommonPhotoManager;
	private ICmsBiaodanDetailManager cmsBiaodanDetailManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	private ICmsConfigManager cmsConfigManager;
	private IKlTrainningRecordManager klTrainningRecordManager;
	private ICmsGroupManager cmsGroupManager;
	private ICmsGroupTopicManager cmsGroupTopicManager;

	public ICmsGroupTopicManager getCmsGroupTopicManager() {
		return cmsGroupTopicManager;
	}

	public void setCmsGroupTopicManager(
			ICmsGroupTopicManager cmsGroupTopicManager) {
		this.cmsGroupTopicManager = cmsGroupTopicManager;
	}

	public ICmsGroupManager getCmsGroupManager() {
		return cmsGroupManager;
	}

	public void setCmsGroupManager(ICmsGroupManager cmsGroupManager) {
		this.cmsGroupManager = cmsGroupManager;
	}

	public IKlTrainningRecordManager getKlTrainningRecordManager() {
		return klTrainningRecordManager;
	}

	public void setKlTrainningRecordManager(
			IKlTrainningRecordManager klTrainningRecordManager) {
		this.klTrainningRecordManager = klTrainningRecordManager;
	}

	public ICmsConfigManager getCmsConfigManager() {
		return cmsConfigManager;
	}

	public void setCmsConfigManager(ICmsConfigManager cmsConfigManager) {
		this.cmsConfigManager = cmsConfigManager;
	}

	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}

	public ICmsBiaodanDetailManager getCmsBiaodanDetailManager() {
		return cmsBiaodanDetailManager;
	}

	public void setCmsBiaodanDetailManager(
			ICmsBiaodanDetailManager cmsBiaodanDetailManager) {
		this.cmsBiaodanDetailManager = cmsBiaodanDetailManager;
	}

	public ICmsCommonPhotoManager getCmsCommonPhotoManager() {
		return cmsCommonPhotoManager;
	}

	public void setCmsCommonPhotoManager(
			ICmsCommonPhotoManager cmsCommonPhotoManager) {
		this.cmsCommonPhotoManager = cmsCommonPhotoManager;
	}

	private IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager;

	public IKlShoppingShoppingcartproductManager getKlShoppingShoppingcartproductManager() {
		return klShoppingShoppingcartproductManager;
	}

	public void setKlShoppingShoppingcartproductManager(
			IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager) {
		this.klShoppingShoppingcartproductManager = klShoppingShoppingcartproductManager;
	}

	public ICmsCommonCommentManager getCmsCommonCommentManager() {
		return cmsCommonCommentManager;
	}

	public void setCmsCommonCommentManager(
			ICmsCommonCommentManager cmsCommonCommentManager) {
		this.cmsCommonCommentManager = cmsCommonCommentManager;
	}

	public IKlSellerCoachManager getKlSellerCoachManager() {
		return klSellerCoachManager;
	}

	public void setKlSellerCoachManager(
			IKlSellerCoachManager klSellerCoachManager) {
		this.klSellerCoachManager = klSellerCoachManager;
	}

	public ICtUserProvinceManager getCtUserProvinceManager() {
		return ctUserProvinceManager;
	}

	public void setCtUserProvinceManager(
			ICtUserProvinceManager ctUserProvinceManager) {
		this.ctUserProvinceManager = ctUserProvinceManager;
	}

	public ICtUserCityManager getCtUserCityManager() {
		return ctUserCityManager;
	}

	public void setCtUserCityManager(ICtUserCityManager ctUserCityManager) {
		this.ctUserCityManager = ctUserCityManager;
	}

	public ICtUserQuManager getCtUserQuManager() {
		return ctUserQuManager;
	}

	public void setCtUserQuManager(ICtUserQuManager ctUserQuManager) {
		this.ctUserQuManager = ctUserQuManager;
	}

	public ICtPhotoManager getCtPhotoManager() {
		return ctPhotoManager;
	}

	public void setCtPhotoManager(ICtPhotoManager ctPhotoManager) {
		this.ctPhotoManager = ctPhotoManager;
	}

	public IKlSellerShopManager getKlSellerShopManager() {
		return klSellerShopManager;
	}

	public void setKlSellerShopManager(IKlSellerShopManager klSellerShopManager) {
		this.klSellerShopManager = klSellerShopManager;
	}

	private IKlSellerPlaceManager klSellerPlaceManager;

	public IKlSellerPlaceManager getKlSellerPlaceManager() {
		return klSellerPlaceManager;
	}

	public void setKlSellerPlaceManager(
			IKlSellerPlaceManager klSellerPlaceManager) {
		this.klSellerPlaceManager = klSellerPlaceManager;
	}

	private KlSellerProduct klSellerProduct;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	public void setParam(String param) {
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klSellerProduct = new KlSellerProduct();
		} else {
			klSellerProduct = (KlSellerProduct) klSellerProductManager
					.getById(id);
		}
	}

	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlSellerProductManager(IKlSellerProductManager manager) {
		this.klSellerProductManager = manager;
	}

	public Object getModel() {
		return klSellerProduct;
	}

	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}

	/** 执行搜索 */
	public String list() {
		KlSellerProductQuery query = newQuery(KlSellerProductQuery.class,
				DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klSellerProductManager.findPage(query);
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
		KlSellerProductQuery query = newQuery(KlSellerProductQuery.class,
				DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klSellerProductManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		for (int i = 0; i < page.getResult().size(); i ++) {
			KlSellerProduct p = (KlSellerProduct) page.getResult().get(i);
			if (StringUtils.isNotEmpty(p.getDescription()))
				p.setDescription(p.getDescription().replaceAll("\\\"", ""));
			p.setDescription(null);
			page.getResult().set(i, p);
		}
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}

	/** 查看对象 */
	public String show() {
		// klSellerProduct.setCreateUser(yebucuoKgAdminuserManager2.getById(klSellerProduct.getModifyuser()));
		this.getRequest().setAttribute("v", this.klSellerProduct);
		Map map = new HashMap();
		map.put("product", this.klSellerProduct);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax")))
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", 1, "ok");
		return SHOW_JSP;
	}

	/** 进入新增页面 */
	public String create() {
		return CREATE_JSP;
	}

	/** 保存新增对象 */
	public String save() {
		// klSellerProduct.setCreateTime(new Date());
		// klSellerProduct.setDeleted("0");

		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klSellerProduct.setModifyuser(theuserid);
		}
		klSellerProduct.setCreatetimelong(System.currentTimeMillis());
		klSellerProduct.setModifytimelong(System.currentTimeMillis());
		klSellerProduct.setStatus(0);

		klSellerProductManager.save(klSellerProduct);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klSellerProduct);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return OK_JSP;
		}
	}

	/** 进入更新页面 */
	public String edit() {
		KlSellerPlaceQuery pq = new KlSellerPlaceQuery();
		pq.setShopId(this.klSellerProduct.getId());
		List list = this.klSellerPlaceManager.queryTop(pq);
		this.getRequest().setAttribute("places", list);

		return EDIT_JSP;
	}

	/** 保存更新对象 */
	public String update() {
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klSellerProduct.setModifyuser(theuserid);
		}
		klSellerProduct.setModifytimelong(System.currentTimeMillis());

		klSellerProductManager.update(this.klSellerProduct);

		int placecount = Utils.getIntParam(getRequest(), "placecount");
		for (int i = 1; i <= placecount; i++) {
			KlSellerPlace p = new KlSellerPlace();
			long lp = Utils.getLongParam(getRequest(), "placeid" + i);
			p = this.klSellerPlaceManager.getById(lp);
			p.setShopId(this.klSellerProduct.getId());
			p.setPlaceComment(Utils.getParam(getRequest(), "placeComment" + i));
			this.klSellerPlaceManager.saveOrUpdate(p);
		}

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klSellerProduct);
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
						klSellerProduct = klSellerProductManager.getById(Long
								.parseLong(id));
						if (klSellerProduct != null) {
							// klSellerProduct.setStatus(-1);
							// klSellerProductManager.update(klSellerProduct);
							klSellerProductManager.removeById(klSellerProduct
									.getId());
						}
					}
				}
				// klSellerProductManager.removeById(Long.parseLong(id));
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

		if (this.klSellerProduct == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "资料不存在");

		int oldstatus = this.klSellerProduct.getStatus();

		if (Utils.getParam(getRequest(), "status") != null)
			this.klSellerProduct.setStatus(Utils.getIntParam(getRequest(),
					"status"));

		// 首页推荐位
		int indexweight = Utils.getIntParam(getRequest(), "indexweight");
		if (indexweight >= 0) {
			this.klSellerProduct.setExtInt4(indexweight);
			if (indexweight == 0)
				this.klSellerProduct.setExtInt4(null);
		}

		int channelweight = Utils.getIntParam(getRequest(), "channelweight");
		if (channelweight >= 0) {
			this.klSellerProduct.setExt6(channelweight + "");
			if (channelweight == 0)
				this.klSellerProduct.setExt6(null);
		}

		int searchweight = Utils.getIntParam(getRequest(), "searchweight");
		if (searchweight >= 0) {
			this.klSellerProduct.setExt7(searchweight + "");
			if (searchweight == 0)
				this.klSellerProduct.setExt7(null);
		}

		this.klSellerProductManager.update(klSellerProduct);

		// 如果是通过验证
		if (oldstatus == 0) {
			// Utils.getIntParam(getRequest(), "status") == 1
			KlSellerShop shop = this.klSellerShopManager
					.getById(this.klSellerProduct.getShopId());
			if (shop != null) {

				if (this.klSellerProduct.getStatus() == 1) {
					MessageUtils.sendSystemMessage(shop.getUserid(), "您提交的产品'"
							+ this.klSellerProduct.getName() + "'已经通过审核");
					CountSingleton.addCount(shop.getUserid(), "user",
							"message", 1);
				} else if (this.klSellerProduct.getStatus() == -3) {
					MessageUtils.sendSystemMessage(shop.getUserid(), "您提交的产品'"
							+ this.klSellerProduct.getName() + "'没有通过审核");
					CountSingleton.addCount(shop.getUserid(), "user",
							"message", 1);

				}

			}
		}
		

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "操作成功");
	}

	/*
	 * 发布课程1
	 */
	public String preclass() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);

			Utils.getSessionByRequest(getRequest()).setAttribute("sessionurl",
					"!/kailian/KlSellerProduct/preclass.do");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/user/prelogin.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/class/class1.jsp", 1, "ok");
	}

	public String class1() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/class/class1.jsp");
		}

		if (StringUtils.isEmpty(this.klSellerProduct.getName())
				|| "课程名称，据说越长越好哦".equalsIgnoreCase(this.klSellerProduct
						.getName())) {
			map.put("err_name", "课程名称不能为空");
		}
		if (this.klSellerProduct.getPrice() == null
				|| this.klSellerProduct.getPrice() < 0) {
			map.put("err_price", "价格不能为空");
		}
		// if (this.klSellerProduct.getClassCount() == null
		// || this.klSellerProduct.getClassCount() <= 0) {
		// map.put("err_classCount", "课程数量不能为空");
		// }
		// if (this.klSellerProduct.getPerClassMinutes() == null
		// || this.klSellerProduct.getPerClassMinutes() <= 0) {
		// map.put("err_perClassMinutes", "单课时间不能为空");
		// }

		if (StringUtils.isEmpty(this.klSellerProduct.getExt8())) {
			map.put("err_ext8", "单课时间不能为空");
		}
		if (StringUtils.isEmpty(this.klSellerProduct.getPhoto())) {
			map.put("err_photo", "请选择图片");
		}
		if (map.isEmpty() == false) {
			map.put("re", -1);

			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/class/class1.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		CtUserProvinceQuery pq = new CtUserProvinceQuery();
		pq.setPageSize(111111);
		pq.setSortColumns("img2 desc");
		Page page = this.ctUserProvinceManager.findPage(pq);
		map.put("provinces", page.getResult());

		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klSellerProduct.setModifyuser(theuserid);
		}
		klSellerProduct.setCreatetimelong(System.currentTimeMillis());
		klSellerProduct.setModifytimelong(System.currentTimeMillis());
		klSellerProduct.setStatus(-10);
		this.klSellerProduct.setBuyedCount(0);
		this.klSellerProduct.setSavedCount(0);
		this.klSellerProduct.setFlowerCount(0);
		this.klSellerProduct.setEggCount(0);
		this.klSellerProduct.setExt5(shop.getShopName());

		if (StringUtils.isNotEmpty(this.klSellerProduct.getExt2())) {
			String[] ss = this.klSellerProduct.getExt2().split(",");
			this.klSellerProduct.setMapx(Float.parseFloat(ss[0]));
			this.klSellerProduct.setMapy(Float.parseFloat(ss[1]));
		}
		klSellerProductManager.save(klSellerProduct);

		map.put("class", this.klSellerProduct);

		KlSellerCoachQuery cq = new KlSellerCoachQuery();
		cq.setShopId(shop.getId());
		cq.setPageSize(8888);
		Page cp = this.klSellerCoachManager.findPage(cq);
		map.put("coaches", cp.getResult());

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/class/class2.jsp", 1, "ok");
	}

	/*
	 * 发布课程2
	 */
	public String class2() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,shopid");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/shop/newlesson2.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		if (shop.getId() != Utils.getLongParam(getRequest(), "shopId")
				|| this.klSellerProduct == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "参数错误");
		}

		// 参数检查

		String[] coaches = this.getRequest().getParameterValues("coaches");
		StringBuilder sb = new StringBuilder();
		if (coaches != null)
			for (int i = 0; i < coaches.length; i++)
				sb.append(coaches[i]).append(",");
		this.klSellerProduct.setExt4(sb.toString());
		this.klSellerProduct.setExtInt2(0);
		this.klSellerProduct.setSavedCount(0);
		this.klSellerProduct.setBuyedCount(0);
		this.klSellerProduct.setStatus(Utils
				.getIntParam(getRequest(), "status"));

		if (StringUtils.isNotEmpty(this.klSellerProduct.getExt2())) {
			String[] ss = this.klSellerProduct.getExt2().split(",");
			if (ss != null && ss.length >= 2)
				this.klSellerProduct.setMapx(Float.parseFloat(ss[0]));
			this.klSellerProduct.setMapy(Float.parseFloat(ss[1]));
		}

		String validDays = Utils.getParam(getRequest(), "validDays1");
		if (StringUtils.isEmpty(validDays))
			this.klSellerProduct.setValidDays(null);
		else {
			validDays = validDays.replaceAll("-", "");
			this.klSellerProduct.setValidDays(Integer.parseInt(validDays));
		}

		int noneedyuyue = Utils.getIntParam(getRequest(), "noneedyuyue");
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "noneedyuyue"))
				&& noneedyuyue <= 0)
			this.klSellerProduct.setReturnClassCount(noneedyuyue);

		// 临时
		//this.klSellerProduct.setStatus(1);
		if (this.klSellerProduct.getCategoryid() == null)
			this.klSellerProduct.setCategoryid(0L);

		if (this.klSellerProduct.getExtInt3() == null
				|| this.klSellerProduct.getExtInt3() < 0)
			this.klSellerProduct.setExtInt3(20);

		this.klSellerProductManager.update(klSellerProduct);

		if (StringUtils.isNotEmpty(this.klSellerProduct.getPhoto())) {
			String savePath = Utils.getSessionByRequest(getRequest())
					.getServletContext().getRealPath("/")
					+ "";
			try {
				String t = ImageUtils.getFormat(klSellerProduct.getPhoto());
				ImageUtils.createThumbnailIn(
						savePath + klSellerProduct.getPhoto(),
						savePath
								+ klSellerProduct.getPhoto().replaceAll(
										"." + t, "_back." + t), 1000, 1000);
				ImageUtils
						.zoomAndScale(savePath + klSellerProduct.getPhoto(),
								savePath + klSellerProduct.getPhoto(), 180 * 3,
								120 * 3);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (Utils.getIntParam(getRequest(), "preview") > 0) {
			return "!/kailian/KlSellerProduct/index.do?id="
					+ this.klSellerProduct.getId();
		}

		map.put("righttitle", "发布课程");
		String word = "保存成功，请等待审核";
		if (this.klSellerProduct.getStatus() < 0)
			word = "保存成功";
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", -2, word);
	}

	/*
	 * 课程管理
	 */
	public String classes() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("righttitle", "我要开店");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您没有开店或者还没有登录");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		// 删除 隐藏
		long deleteid = Utils.getLongParam(getRequest(), "deleteid");
		if (deleteid > 0) {
			this.klSellerProductManager.removeById(deleteid);
		}
		long hiddenid = Utils.getLongParam(getRequest(), "hiddenid");
		if (hiddenid > 0) {
			KlSellerProduct p = this.klSellerProductManager.getById(hiddenid);
			if (p.getStatus() != 0) {
				p.setStatus(-2);
				this.klSellerProductManager.update(p);
			}
		}
		long showid = Utils.getLongParam(getRequest(), "showid");
		if (showid > 0) {
			KlSellerProduct p = this.klSellerProductManager.getById(showid);
			if (p.getStatus() != 0) {
				p.setStatus(1);
				this.klSellerProductManager.update(p);
			}
		}
		
		//
		long hid = Utils.getLongParam(getRequest(), "hid");
		if (hid > 0) {
			KlSellerProduct p = this.klSellerProductManager.getById(hid);
			if (p.getStatus() == 1) {
				p.setExt10("-1");
				this.klSellerProductManager.update(p);
			}
		}
		
		//
		long sid = Utils.getLongParam(getRequest(), "sid");
		if (sid > 0) {
			KlSellerProduct p = this.klSellerProductManager.getById(sid);
			if (p.getStatus() == 1) {
				p.setExt10("1");
				this.klSellerProductManager.update(p);
			}
		}

		KlSellerProductQuery query = new KlSellerProductQuery();
		query.setPageNumber(Utils.getPageno(getRequest()));

		query.setStatusFrom(-500);
		long categoryid = Utils.getLongParam(getRequest(), "categoryid");
		if (categoryid > 0)
			query.setCategoryid(categoryid);
		String name = Utils.getParam(getRequest(), "name");
		int extInt1 = Utils.getIntParam(getRequest(), "extInt1");
		String startd = Utils.getParam(getRequest(), "startd");
		String endd = Utils.getParam(getRequest(), "endd");
		if (StringUtils.isNotEmpty(name))
			query.setName(name);
		if (extInt1 > 0)
			query.setExtInt1(extInt1);
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

		query.setShopId(shop.getId());
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		else
			query.setSortColumns("id desc");
		Page page = klSellerProductManager.findPage(query);
		map.put("page", page);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/class/classes.jsp", 1, "ok");
	}

	/*
	 * 修改课程
	 */
	public String premod() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("righttitle", "我要开店");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您没有开店或者还没有登录");
		}

		CtUserProvinceQuery pq = new CtUserProvinceQuery();
		pq.setPageSize(111111);
		pq.setSortColumns("img2 desc");
		Page page = this.ctUserProvinceManager.findPage(pq);
		map.put("provinces", page.getResult());

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		if (this.klSellerProduct == null) {
			map.put("righttitle", "发布修改");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "课程不存在");
		}
		if (shop.getId().longValue() != this.klSellerProduct.getShopId()
				.longValue()) {
			map.put("righttitle", "发布修改" + shop.getId() + "   :"
					+ this.klSellerProduct.getShopId());
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "参数错误");
		}
		map.put("class", this.klSellerProduct);

		// 焦点图
		CmsCommonPhotoQuery q = new CmsCommonPhotoQuery();
		q.setOwnnertype(Utils.TYPE_PHOTOOWNER_PRODUCT);
		q.setOwnnerid(this.klSellerProduct.getId());
		q.setPageSize(100000);
		List photos = this.cmsCommonPhotoManager.queryTop(q);
		map.put("photos", photos);

		// 教练信息
		KlSellerCoachQuery q2 = new KlSellerCoachQuery();
		// q2.setIds(this.klSellerProduct.getExt4());
		q2.setShopId(shop.getId());
		List coaches = this.klSellerCoachManager.queryTop(q2);
		map.put("coaches", coaches);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/class/premod.jsp", 1, "ok");

	}

	public String mod() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,sessionshop");
		if (map.isEmpty() == false) {
			map.put("righttitle", "我要开店");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您没有开店或者还没有登录");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);

		if (this.klSellerProduct == null) {
			map.put("righttitle", "发布修改");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "课程不存在");
		}

		// 检测参数

		// 照片
		Logger log = Logger.getLogger(getClass());
		String photos = Utils.getParam(getRequest(), "newphotos");
		log.info("photosssss:" + photos);
		if (StringUtils.isNotEmpty(photos)) {
			String[] ss = photos.split(",");
			for (int i = 0; i < ss.length; i++) {
				if (StringUtils.isEmpty(ss[i]))
					continue;

				CmsCommonPhoto p = new CmsCommonPhoto();
				p.setOwnnertype(Utils.TYPE_PHOTOOWNER_PRODUCT);
				p.setOwnnerid(this.klSellerProduct.getId());
				p.setResource(ss[i]);
				p.setCreatetimelong(System.currentTimeMillis());
				this.cmsCommonPhotoManager.save(p);
			}
		}

		// 删除图片
		String delphotos = Utils.getParam(getRequest(), "delphotos");
		if (StringUtils.isNotEmpty(delphotos)) {
			String[] ss = delphotos.split(",");
			for (int i = 0; i < ss.length; i++) {
				if (StringUtils.isEmpty(ss[i]))
					continue;
				long tid = Long.parseLong(ss[i]);
				this.cmsCommonPhotoManager.removeById(tid);
			}
		}

		// 教练
		StringBuilder sb = new StringBuilder();
		String[] coaches = this.getRequest().getParameterValues("coaches");
		if (coaches != null) {

			for (int i = 0; i < coaches.length; i++)
				sb.append(coaches[i]).append(",");

		}
		this.klSellerProduct.setExt4(sb.toString());

		map.put("righttitle", "修改课程");

		if (StringUtils.isNotEmpty(this.klSellerProduct.getExt2())) {
			String[] ss = this.klSellerProduct.getExt2().split(",");
			this.klSellerProduct.setMapx(Float.parseFloat(ss[0]));
			this.klSellerProduct.setMapy(Float.parseFloat(ss[1]));
		}

		String validDays = Utils.getParam(getRequest(), "validDays1");
		if (StringUtils.isEmpty(validDays))
			this.klSellerProduct.setValidDays(null);
		else {
			validDays = validDays.replaceAll("-", "");
			this.klSellerProduct.setValidDays(Integer.parseInt(validDays));
		}

		int noneedyuyue = Utils.getIntParam(getRequest(), "noneedyuyue");
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "noneedyuyue"))
				&& noneedyuyue <= 0)
			this.klSellerProduct.setReturnClassCount(noneedyuyue);

		if (this.klSellerProduct.getCategoryid() == null)
			this.klSellerProduct.setCategoryid(0L);
		this.klSellerProductManager.update(klSellerProduct);
		// return Utils.returnServlet(getRequest(), getResponse(), map,
		// "/page/info.jsp", -2, "修改成功");
		//
		//
		// logo
		if (StringUtils.isNotEmpty(this.klSellerProduct.getPhoto())) {
			String savePath = Utils.getSessionByRequest(getRequest())
					.getServletContext().getRealPath("/")
					+ "";
			try {
				String t = ImageUtils.getFormat(klSellerProduct.getPhoto());
				ImageUtils.createThumbnailIn(
						savePath + klSellerProduct.getPhoto(),
						savePath
								+ klSellerProduct.getPhoto().replaceAll(
										"." + t, "_back." + t), 1000, 1000);
				ImageUtils
						.zoomAndScale(savePath + klSellerProduct.getPhoto(),
								savePath + klSellerProduct.getPhoto(), 180 * 3,
								120 * 3);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (Utils.getIntParam(getRequest(), "preview") > 0) {
			return "!/kailian/KlSellerProduct/index.do?id="
					+ this.klSellerProduct.getId();
		}

		map.put("righttitle", "发布课程");
		String word = "保存成功，请等待审核";
		if (this.klSellerProduct.getStatus() == -5
				|| this.klSellerProduct.getStatus() == -1)
			word = "保存成功";
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", -2, word);
	}

	/*
	 * 焦点图
	 */
	public String focus() {
		Logger log = Logger.getLogger(RequestFilter.class);
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionshop");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("righttitle", "提示信息");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlSellerShop shop = (KlSellerShop) Utils.getSessionByRequest(
				getRequest()).getAttribute("sessionshop");
		shop = this.klSellerShopManager.getById(shop.getId());
		map.put("shop", shop);
		long pid = Utils.getLongParam(this.getRequest(), "pid");
		this.klSellerProduct = this.klSellerProductManager.getById(pid);
		map.put("product", this.klSellerProduct);

		long delid = Utils.getLongParam(getRequest(), "delid");

		long modid = Utils.getLongParam(getRequest(), "modid");
		int tostatus = Utils.getIntParam(getRequest(), "tostatus");
		long premodid = Utils.getLongParam(getRequest(), "premodid");

		if (delid > 0) {
			this.cmsCommonPhotoManager.removeById(delid);
		}
		if (modid > 0) {
			CmsCommonPhoto p = this.cmsCommonPhotoManager.getById(modid);
			if (p != null) {
				p.setStatus(tostatus);
				this.cmsCommonPhotoManager.update(p);
			}
		}
		if (premodid > 0) {
			CmsCommonPhoto p = this.cmsCommonPhotoManager.getById(premodid);
			map.put("photo", p);
		}

		log.info("xxxxxxxxx:" + Utils.getParam(this.getRequest(), "resource"));
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "resource"))) {

			String[] ss = Utils.getParam(getRequest(), "resource").split(",");
			for (int i = 0; i < ss.length; i++) {
				if (StringUtils.isEmpty(ss[i]))
					continue;
				long fid = Utils.getLongParam(getRequest(), "focusid");
				CmsCommonPhoto p = null;
				if (fid <= 0 || i != 0) // 修改 只修改第一个，其他的是新增
					p = new CmsCommonPhoto();
				else
					p = this.cmsCommonPhotoManager.getById(fid);

				p.setOwnnerid(pid);
				p.setOwnnertype(Utils.TYPE_PHOTOOWNER_PRODUCT);
				p.setResource(ss[i]);
				p.setName(Utils.getParam(getRequest(), "name"));
				if (StringUtils.isEmpty(p.getName()))
					p.setName(this.klSellerProduct.getName());
				p.setComment(Utils.getParam(getRequest(), "comment1"));
				p.setQuanzhong(Utils.getIntParam(getRequest(), "quanzhong"));
				if (p.getQuanzhong() <= 0)
					p.setQuanzhong(10);
				p.setStatus(1);

				// 1000 * 660
				String savePath = Utils.getSessionByRequest(getRequest())
						.getServletContext().getRealPath("/")
						+ "";
				try {
					String t = ImageUtils.getFormat(p.getResource());
					ImageUtils.zoomAndScale(
							savePath + p.getResource(),
							savePath
									+ p.getResource().replaceAll("." + t,
											"_s." + t), 180, 120);
					ImageUtils.createThumbnailIn(
							savePath + p.getResource(),
							savePath
									+ p.getResource().replaceAll("." + t,
											"_m." + t), 500, 330);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				this.cmsCommonPhotoManager.saveOrUpdate(p);
			}
		}

		CmsCommonPhotoQuery query = new CmsCommonPhotoQuery();
		query.setSortColumns("quanzhong desc");
		query.setPageSize(1600);
		query.setOwnnertype(Utils.TYPE_PHOTOOWNER_PRODUCT);
		query.setOwnnerid(pid);

		Page page = cmsCommonPhotoManager.findPage(query);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			map = new HashMap();
			map.put("pg", page);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			this.getRequest().setAttribute("pg", page);

			if ("iframe".equalsIgnoreCase(Utils
					.getParam(getRequest(), "iframe")))
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/class/focus2.jsp", 1, "ok");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/class/focus.jsp", 1, "ok");
		}
	}

	/*
	 * 产品评价
	 */
	public String productcomment() {
		// 服务评价
		Map map = new HashMap();

		CmsCommonCommentQuery q3 = new CmsCommonCommentQuery();
		q3.setTargetType(Utils.TYPE_TARGET_PRODUCT);
		q3.setTargetId(this.klSellerProduct.getId());
		q3.setPageNumber(Utils.getIntParam(getRequest(), "pageno"));
		Page comments = this.cmsCommonCommentManager.findPage(q3);
		map.put("comments", comments);

		
		if (Utils.getIntParam(getRequest(), "version") == 3)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page3/front/comment.jsp", 1, "ok");
			
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/shop/productcomment.jsp", 1, "ok");
	}
	
	/*
	 * 成交记录
	 */
	public String productsold() {
		Map map = new HashMap();
		KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
		q.setProductid(id);
		q.setStatusgt(19);
		q.setSortColumns("id desc");
		q.setPageNumber(Utils.getPageno(getRequest()));
		Page page = this.klShoppingShoppingcartproductManager.findPage(q);
		map.put("page", page);
	
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page3/front/sold.jsp", 1, "ok");
	}

	/*
	 * 课程教练
	 */
	public String coaches() {
		Map map = new HashMap();
		if (this.klSellerProduct == null
				|| this.klSellerProduct.getId() == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "课程不存在");
		List coaches = new ArrayList();
		if (StringUtils.isNotEmpty(this.klSellerProduct.getExt4())) {
			String[] ss = this.klSellerProduct.getExt4().split(",");
			for (int i = 0; i < ss.length; i++) {
				if (StringUtils.isNotEmpty(ss[i])) {
					coaches.add(this.klSellerCoachManager.getById(Long
							.parseLong(ss[i])));
				}
			}
		}
		map.put("coaches", coaches);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "ok");
	}

	/*
	 * 产品页面
	 */
	public String index() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "id");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/shop/product.jsp");
		}

		map.put("product", this.klSellerProduct);

		if (this.klSellerProduct != null) {
			// 平均评论
			this.klSellerProduct.setComment(this.cmsCommonCommentManager
					.queryAvgByTypeAndId(Utils.TYPE_TARGET_PRODUCT,
							this.klSellerProduct.getId()));

			KlSellerShop shop = this.klSellerShopManager
					.getById(this.klSellerProduct.getShopId());
			if (shop != null)
				shop.setComment(this.cmsCommonCommentManager
						.queryAvgByTypeAndId(Utils.TYPE_TARGET_SHOP,
								shop.getId()));
			map.put("shop", shop);

			// 焦点图
			CmsCommonPhotoQuery q = new CmsCommonPhotoQuery();
			q.setOwnnertype(Utils.TYPE_PHOTOOWNER_PRODUCT);
			q.setOwnnerid(this.klSellerProduct.getId());
			q.setPageSize(100000);
			q.setSortColumns("quanzhong desc");
			q.setStatus(1);
			List photos = this.cmsCommonPhotoManager.findPage(q).getResult();
			map.put("photos", photos);

			// 教练信息
			/*
			 * KlSellerCoachQuery q2 = new KlSellerCoachQuery();
			 * q2.setIds(this.klSellerProduct.getExt4()); List coaches =
			 * this.klSellerCoachManager.queryTop(q2);
			 */
			List coaches = new ArrayList();
			if (StringUtils.isNotEmpty(this.klSellerProduct.getExt4())) {
				String[] ss = this.klSellerProduct.getExt4().split(",");
				for (int i = 0; i < ss.length; i++) {
					if (StringUtils.isNotEmpty(ss[i])) {
						coaches.add(this.klSellerCoachManager.getById(Long
								.parseLong(ss[i])));
					}
				}
			}
			map.put("coaches", coaches);

			// 服务评价
			CmsCommonCommentQuery q3 = new CmsCommonCommentQuery();
			q3.setTargetType(Utils.TYPE_TARGET_PRODUCT);
			q3.setTargetId(this.klSellerProduct.getId());
			Page comments = this.cmsCommonCommentManager.findPage(q3);
			map.put("comments", comments);

			// 成交记录
			KlShoppingShoppingcartproductQuery q4 = new KlShoppingShoppingcartproductQuery();
			q4.setStatusgt(19);
			q4.setProductid(this.klSellerProduct.getId());
			q4.setSortColumns("id desc");
			Page buyed = this.klShoppingShoppingcartproductManager.findPage(q4);
			map.put("buyed", buyed);

			// 附近同类课程
			List list = null;
			KlSellerProductQuery nq = new KlSellerProductQuery();
			if (this.klSellerProduct.getMapx() != null
					&& this.klSellerProduct.getMapx() > 0
					&& this.klSellerProduct.getMapy() != null
					&& this.klSellerProduct.getMapy() > 0) {

				//nq.setCityid(this.klSellerProduct.getCityid());
				nq.setPageSize(2);
				nq.setShopIdNe(this.klSellerProduct.getShopId());
				nq.setMapx(this.klSellerProduct.getMapx());
				nq.setMapy(this.klSellerProduct.getMapy());
				nq.setMapxfrom(1.0f);
				nq.setMapyfrom(1.0f);
				nq.setStatus(1);
				nq.setCategoryid(this.klSellerProduct.getCategoryid());
				
				nq.setSortColumns("((tp.mapx-" + nq.getMapx() + ")*(tp.mapx-"
						+ nq.getMapx() + ") + (tp.mapy-" + nq.getMapy()
						+ ")*(tp.mapy-" + nq.getMapy() + "))");
						
				 list = this.klSellerProductManager.findPage(nq).getResult();
				for (int i = 0; i < list.size(); i++) {
					KlSellerProduct p = (KlSellerProduct) list.get(i);
					if (p.getMapx() != null && p.getMapy() != null
							&& this.klSellerProduct.getMapx() != null
							&& this.klSellerProduct.getMapy() != null) {
						double dis = java.lang.StrictMath.pow(
								(p.getMapx() - this.klSellerProduct.getMapx())
										* (p.getMapx() - this.klSellerProduct
												.getMapx())
										+ (p.getMapy() - this.klSellerProduct
												.getMapy())
										* (p.getMapy() - this.klSellerProduct
												.getMapy()), 1.0 / 2);
						dis = dis * 100;
						p.setExt10(String.format("%.2f", dis));
					} else {
						p.setExt10(null);
					}
					list.set(i, p);
				}
				map.put("nearbys", list);
			}
			nq.setSortColumns(null);

			// 最热课程
			nq.setCityid(null);
			nq.setSortColumns("buyedCount desc");
			list = this.klSellerProductManager.findPage(nq).getResult();
			map.put("hots", list);

			// 销售排行
			nq.setPageSize(5);
			list = this.klSellerProductManager.findPage(nq).getResult();
			map.put("paihang", list);

		}

		if (Utils.getIntParam(getRequest(), "version") == 3)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page3/front/product.jsp", 1, "ok"); 
		
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/shop/productindex.jsp", 1, "ok");
	}

	/*
	 * 搜索
	 */
	public String map() {
		Map map = new HashMap();
		CtUserProvinceQuery q = new CtUserProvinceQuery();
		q.setPageSize(1111);
		q.setSortColumns("img2 desc");
		List list = this.ctUserProvinceManager.findPage(q).getResult();
		map.put("provinces", list);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/search/map.jsp", 1, "ok");
	}

	public String search() {
		Map map = new HashMap();

		String name = Utils.getParam(getRequest(), "name");
		// if (name != null)
		// try {
		// name = new String(name.getBytes("iso-8859-1"), "utf-8");
		// this.getRequest().setAttribute("name", name);
		// } catch (UnsupportedEncodingException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		String sort = Utils.getParam(getRequest(), "sort");
		long cityid = Utils.getLongParam(getRequest(), "cityid");
		int cat = Utils.getIntParam(getRequest(), "cat");
		// name = "";
		// sort = null;

		map.put("name", name);

		int stype = Utils.getIntParam(getRequest(), "stype");
		if (stype <= 1) {
			KlSellerProductQuery query = newQuery(KlSellerProductQuery.class,
					DEFAULT_SORT_COLUMNS);
			if (StringUtils.isNotEmpty(sort))
				query.setSortColumns("ext7 desc," + sort + ",extInt4,id desc");
			else
				query.setSortColumns("ext7 desc,extInt4 desc,id desc");
			query.setName(name);
			query.setPageSize(6);
			query.setStatus(1);
			
			

			int provinceid = Utils.getIntParam(getRequest(), "provinceid");
			if (provinceid > 0)
				query.setProvinceid(new Long(provinceid));

			float pricefrom = Utils.getFloatParam(getRequest(), "pricefrom");
			if (pricefrom > 0)
				query.setPricefrom(pricefrom);
			float priceto = Utils.getFloatParam(getRequest(), "priceto");
			if (priceto > 0)
				query.setPriceto(priceto);
			if (query.getStarfrom() == null || query.getStarfrom() <= 0)
				query.setStarfrom(null);
			if (query.getShoptype() == null || query.getShoptype() <= 0)
				query.setShoptype(null);

			if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "map")))
				query.setPageSize(100);
			
			if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "ajax"))) {
				query.setPageSize(12);
			}
			
			if ("全部".equalsIgnoreCase(name))
				query.setName(null);
			
			if (cat > 0)
				query.setCategoryid(new Long(cat));
			else 
				query.setCategoryid(null);
			if (cityid > 0)
				query.setCityid(cityid);
			else
				query.setCityid(null);
			
			float mapx = Utils.getFloatParam(getRequest(), "mapx");
			float mapy = Utils.getFloatParam(getRequest(), "mapy");
			//mapx = 116.504189f;
			//mapy = 39.883896f;
			query.setMapxfrom(1.0f);
			query.setMapyfrom(1.0f);
			if (mapx >0 && mapy > 0 && "distance".equalsIgnoreCase(sort)) {
				query.setSortColumns("((tp.mapx-" + mapx + ")*(tp.mapx-"
						+ mapx + ") + (tp.mapy-" + mapy
						+ ")*(tp.mapy-" + mapy + "))");
				query.setMapxfrom(1.0f);
				query.setMapyfrom(1.0f);
			}
			
			
			query.setPageNumber(Utils.getIntParam(getRequest(), "pageno"));
			Page page = klSellerProductManager.findPage(query);
			for (int i = 0; i < page.getResult().size(); i ++) {
				KlSellerProduct p = (KlSellerProduct) page.getResult().get(i);
				KlSellerShop s = this.klSellerShopManager.getById(p.getShopId());
				if (s != null)
					p.setExt5(s.getShopName());
				
				if (p.getMapx() != null && p.getMapy() != null
						&& mapx > 0 && mapy > 0) {
					double dis = java.lang.StrictMath.pow(
							(p.getMapx() - mapx)
									* (p.getMapx() - mapx)
									+ (p.getMapy() - mapy)
									* (p.getMapy() - mapy), 1.0 / 2);
					dis = dis * 100;
					p.setExt10(String.format("%.2f", dis));
				}
				else {
					p.setExt10(null);
				}
				
				page.getResult().set(i, p);
			}
			
			
			map.put("page", page);
			
			String pagecont = JSTLTagUtils.drawpage(page, getRequest(), "");
			map.put("pagecont", pagecont);
			
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/search/products.jsp", 1, "ok");
			// return Utils.returnServlet(getRequest(), getResponse(), map,
			// "/page/info.jsp", -2, "ok" + query.getName());
		} else if (stype == 2) {
			int shoptype = Utils.getIntParam(getRequest(), "shoptype");
			KlSellerShopQuery query = new KlSellerShopQuery();
			if (StringUtils.isNotEmpty(sort))
				query.setSortColumns(sort);
			else
				query.setSortColumns("id desc");
			query.setPageNumber(Utils.getIntParam(getRequest(), "pageno"));
			if (query.getPageNumber() <= 0)
				query.setPageNumber(1);
			if (shoptype > 0)
				query.setShoptype(shoptype);
			query.setStatus(1);

			// String name = Utils.getParam(getRequest(), "name");
			if (StringUtils.isNotEmpty(name))
				query.setShopName(name);
			Page page = this.klSellerShopManager.findPage(query);
			for (int i = 0; i < page.getResult().size(); i++) {
				KlSellerShop shop = (KlSellerShop) page.getResult().get(i);
				KlSellerProductQuery q = new KlSellerProductQuery();
				q.setPageSize(3);
				q.setShopId(shop.getId());
				q.setStatus(1);
				List list = this.klSellerProductManager.queryTop(q);
				shop.setProducts(list);

				page.getResult().set(i, shop);
			}
			map.put("page", page);

			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/search/shops.jsp", 1, "ok");
		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "参数错误");
	}

	public int getJiaodianId(int cid) {
		switch (cid) {
		case 10:
			return 4;
		case 20:
			return 8;
		case 30:
			return 9;
		case 40:
			return 10;
		case 50:
			return 11;
		case 60:
			return 12;
		case 70:
			return 13;
		}
		return 4;
	}

	// 频道首页
	public String channel() {
		Map map = new HashMap();

		// CtUserProvinceQuery pq = new CtUserProvinceQuery();
		// pq.setPageSize(111111);
		// pq.setSortColumns("img2 desc");
		// Page page = this.ctUserProvinceManager.findPage(pq);
		// map.put("provinces", page.getResult());

		// 焦点图
		int cid = Utils.getIntParam(getRequest(), "cid");
		int jiaodianid = getJiaodianId(cid);
		CmsBiaodanDetailQuery q1 = new CmsBiaodanDetailQuery();
		q1.setInputListId(new Long(jiaodianid));
		q1.setPageSize(100);
		q1.setSortColumns("rank desc");
		List focus = this.cmsBiaodanDetailManager.queryTop(q1);
		map.put("focus", focus);

		// 导航标签
		// q1.setInputListId(new Long((cid / 10) + 12));
		// List tags = this.cmsBiaodanDetailManager.queryTop(q1);
		// if (tags != null && tags.size() > 0)
		// map.put("tags", tags.get(0));
		CmsConfig cc = this.cmsConfigManager.getById(new Long((cid / 10) + 12));
		if (cc != null)
			map.put("tags", cc);

		KlSellerProductQuery q = new KlSellerProductQuery();
		q.setCategoryid(Utils.getLongParam(getRequest(), "cid"));
		q.setStatus(1);
		q.setPageSize(16);
		q.setPricefrom(Utils.getFloatParam(getRequest(), "moneyfrom"));
		if (q.getPricefrom() < 0)
			q.setPricefrom(null);
		q.setPriceto(Utils.getFloatParam(getRequest(), "moneyto"));
		if (q.getPriceto() < 0)
			q.setPriceto(null);
		q.setTags(Utils.getParam(getRequest(), "tags"));
		int provinceid = Utils.getIntParam(getRequest(), "provinceid");
		if (provinceid > 0)
			q.setProvinceid(new Long(provinceid));
		this.getRequest().setAttribute("tags", q.getTags());
		// if (q.getTags() != null) {
		// try {
		// String tg = new String(q.getTags().getBytes("iso-8859-1"),
		// "utf-8");
		// q.setTags(tg);
		// this.getRequest().setAttribute("tags", tg);
		// } catch (UnsupportedEncodingException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// }

		q.setPageNumber(Utils.getPageno(getRequest()));
		String sort = Utils.getParam(getRequest(), "sortby");
		if (StringUtils.isEmpty(sort))
			sort = "id desc";
		sort = "ext6 desc," + sort;
		q.setSortColumns(sort);

		Page page = this.klSellerProductManager.findPage(q);
		map.put("page", page);

		// 精品推荐
		KlSellerProductQuery qq = new KlSellerProductQuery();
		qq.setStatus(1);
		qq.setPageSize(4);
		qq.setSortColumns("ext6 desc");
		List tops = this.klSellerProductManager.findPage(qq).getResult();
		map.put("tops", tops);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/channel/channel.jsp", 1, "ok");

	}
	
	
	//首页精选
	public String indexclass() {
		// 精选教程
		int pageno = Utils.getPageno(getRequest())-1 ;
		
		Map map = new HashMap();
		
		if (pageno > 0) {
		KlSellerProductQuery q1 = new KlSellerProductQuery();
		q1.setPageSize(8);
		q1.setStatus(1);
		q1.setSortColumns("extInt4 desc,id desc");
		q1.setPageNumber(pageno);
		Page page = this.klSellerProductManager.findPage(q1);
	
		// List tops = this.klSellerProductManager.queryTop(q1);
		map.put("tops", page.getResult());
		}
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page2/channel/topclasses.jsp", 1, "ok");
	}

	// 首页
	public String siteindex() {
		Map map = new HashMap();

		// 首页焦点图
		CmsBiaodanDetailQuery q = new CmsBiaodanDetailQuery();
		q.setInputListId(new Long(1));
		q.setPageSize(100);
		q.setSortColumns("rank desc");
		List focus = this.cmsBiaodanDetailManager.findPage(q).getResult();
		map.put("focus", focus);

		// 左侧标签列表
		q.setInputListId(new Long(6));
		q.setPageSize(100);
		q.setSortColumns("rank desc");
		List lefttags = this.cmsBiaodanDetailManager.findPage(q).getResult();
		map.put("lefttags", lefttags);

		// 精选教程
		CmsConfig tuijian = this.cmsConfigManager.getById(new Long(20));
		if (tuijian != null) {
			KlSellerProductQuery q1 = new KlSellerProductQuery();
			// q1.setIds(tuijian.getConfigvalue());
			q1.setPageSize(5);
			q1.setStatus(1);
			List tuijians = this.klSellerProductManager.findPage(q1).getResult();
			map.put("tuijians", tuijians);

		}

		// 店铺排行榜
		CmsBiaodanDetailQuery q0 = new CmsBiaodanDetailQuery();
		q.setInputListId(new Long(2));
		q.setPageSize(100);

		q.setSortColumns("rank desc");
		List shops = this.cmsBiaodanDetailManager.findPage(q).getResult();
		map.put("shops", shops);

		// 首页推荐
		KlSellerProductQuery q1 = new KlSellerProductQuery();
		q1.setPageSize(12);
		q1.setStatus(1);
		q1.setSortColumns("extInt4 desc,id desc");
		Page page = this.klSellerProductManager.findPage(q1);
		// List tops = this.klSellerProductManager.queryTop(q1);
		map.put("tops", page.getResult());
		int pagecount = page.getTotalCount() / 10;
		if (pagecount % 10 > 0)
			pagecount ++;
		map.put("pagecount", pagecount);

		// 体验者说
		// KlTrainningRecordQuery tq = new KlTrainningRecordQuery();
		// tq.setSortColumns("id desc");
		// List tl = this.klTrainningRecordManager.queryTop(tq);
		// map.put("tl", tl);

		q.setInputListId(new Long(17));
		q.setPageSize(100);
		q.setSortColumns("rank desc");
		List tiyans = this.cmsBiaodanDetailManager.findPage(q).getResult();
		map.put("tiyans", tiyans);

		// 小组 话题
		CmsGroupQuery gq = new CmsGroupQuery();
		gq.setSortColumns("extInt1 desc");
		gq.setStatus(1);
		gq.setPageSize(4);
		List topgroups = this.cmsGroupManager.findPage(gq).getResult();
		List toptopics = this.cmsGroupTopicManager.queryTop(6, "id desc");
		map.put("topgroups", topgroups);
		
		gq.setSortColumns("topicCount desc");
		List hotgroups = this.cmsGroupManager.findPage(gq).getResult();
		map.put("hotgroups", hotgroups);
		
		map.put("toptopics", toptopics);

		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "ssss")))
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page2/channel/index.jsp", 1, "ok");
			
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/channel/index.jsp", 1, "ok");
	}
	
	/**
	 * 导出联系人
	 * @return
	 */
	public String excel(){
		KlShoppingShoppingcartproductQuery query = new KlShoppingShoppingcartproductQuery();
//		query.setStatus(20);
		query.setProductid(klSellerProduct.getId());
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
				cell.setCellValue("产品编号");
				cell.setCellStyle(style);
				cell = row.createCell((short) 1);
				cell.setCellValue("产品名称");
				cell.setCellStyle(style);
				
				cell = row.createCell((short) 2);
				cell.setCellValue("购课人");
				cell.setCellStyle(style);
				
				cell = row.createCell((short) 3);
				cell.setCellValue("联系方式");
				cell.setCellStyle(style);
				
				cell = row.createCell((short) 4);
				cell.setCellValue("预约码");
				cell.setCellStyle(style);
		
//				cell = row.createCell((short) 4);
//				cell.setCellValue("付费金额");
//				cell.setCellStyle(style);
		
//				cell = row.createCell((short) 5);
//				cell.setCellValue("付费状态");
//				cell.setCellStyle(style);
				
//				cell = row.createCell((short) 5);
//				cell.setCellValue("赴课状态");
//				cell.setCellStyle(style);
				
				int i = 0;
		List<KlShoppingShoppingcartproduct> list = this.klShoppingShoppingcartproductManager.findPage(query).getResult();
		for(KlShoppingShoppingcartproduct p : list) {
			row = sheet.createRow(++i);
			row.createCell((short)0).setCellValue(p.getProductid());
			row.createCell((short)1).setCellValue(p.getProductName());
			CmsUserInfo cui = this.cmsUserInfoManager.getById(p.getUserid());
			row.createCell((short)2).setCellValue(cui.getUsername());
			row.createCell((short)3).setCellValue(cui.getMobile());
			row.createCell((short)4).setCellValue(p.getExtInt5() == null? 000000:p.getExtInt5());
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
