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
import com.yebucuo.sigleton.ConfigSingleton;
import com.yebucuo.sigleton.CountSingleton;
import com.yebucuo.util.ConfigUtils;
import com.yebucuo.util.ImageUtils;
import com.yebucuo.util.MessageUtils;
import com.yebucuo.util.SmsUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsCommonPhotoQuery;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.kailian.glo.vo.query.CmsStRhppeopleQuery;
import com.kailian.glo.vo.query.KlSellerCoachQuery;
import com.kailian.glo.vo.query.KlSellerShopQuery;
import com.kailian.glo.vo.query.KlShoppingShoppingcartproductQuery;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

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
import com.yebucuo.util.mail.MailUtil;

/**
 * @author wangdapeng
 * @version 1.0
 * @since 1.0
 */

public class KlSellerShopAction extends BaseStruts2Action implements
		Preparable, ModelDriven {
	// 默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null;

	// forward paths
	protected static final String QUERY_JSP = "/kailian/KlSellerShop/query.jsp";
	protected static final String LIST_JSP = "/kailian/KlSellerShop/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlSellerShop/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlSellerShop/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlSellerShop/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	// redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlSellerShop/list.do";

	private IKlSellerShopManager klSellerShopManager;
	private IKlSellerProductManager klSellerProductManager;
	private ICtPhotoManager ctPhotoManager;
	private ICtUserProvinceManager ctUserProvinceManager;
	private ICtUserCityManager ctUserCityManager;
	private ICtUserQuManager ctUserQuManager;
	private ICmsCommonPhotoManager cmsCommonPhotoManager;
	private ICmsCommonPointsManager cmsCommonPointsManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	private IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager;

	public IKlShoppingShoppingcartproductManager getKlShoppingShoppingcartproductManager() {
		return klShoppingShoppingcartproductManager;
	}

	public void setKlShoppingShoppingcartproductManager(
			IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager) {
		this.klShoppingShoppingcartproductManager = klShoppingShoppingcartproductManager;
	}
	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}

	public ICmsCommonPointsManager getCmsCommonPointsManager() {
		return cmsCommonPointsManager;
	}

	public void setCmsCommonPointsManager(
			ICmsCommonPointsManager cmsCommonPointsManager) {
		this.cmsCommonPointsManager = cmsCommonPointsManager;
	}

	public ICmsCommonPhotoManager getCmsCommonPhotoManager() {
		return cmsCommonPhotoManager;
	}

	public void setCmsCommonPhotoManager(
			ICmsCommonPhotoManager cmsCommonPhotoManager) {
		this.cmsCommonPhotoManager = cmsCommonPhotoManager;
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

	public ICtUserProvinceManager getCtUserProvinceManager() {
		return ctUserProvinceManager;
	}

	public void setCtUserProvinceManager(
			ICtUserProvinceManager ctUserProvinceManager) {
		this.ctUserProvinceManager = ctUserProvinceManager;
	}

	public ICtPhotoManager getCtPhotoManager() {
		return ctPhotoManager;
	}

	public void setCtPhotoManager(ICtPhotoManager ctPhotoManager) {
		this.ctPhotoManager = ctPhotoManager;
	}

	public IKlSellerProductManager getKlSellerProductManager() {
		return klSellerProductManager;
	}

	public void setKlSellerProductManager(
			IKlSellerProductManager klSellerProductManager) {
		this.klSellerProductManager = klSellerProductManager;
	}

	private IKlSellerCoachManager klSellerCoachManager;
	private ICmsCommonCommentManager cmsCommonCommentManager;

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

	private KlSellerShop klSellerShop;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	public void setParam(String param) {
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klSellerShop = new KlSellerShop();
		} else {
			klSellerShop = (KlSellerShop) klSellerShopManager.getById(id);
		}
	}

	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlSellerShopManager(IKlSellerShopManager manager) {
		this.klSellerShopManager = manager;
	}

	public Object getModel() {
		return klSellerShop;
	}

	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}

	/** 执行搜索 */
	public String list() {
		KlSellerShopQuery query = newQuery(KlSellerShopQuery.class,
				DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klSellerShopManager.findPage(query);
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
		KlSellerShopQuery query = newQuery(KlSellerShopQuery.class,
				DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klSellerShopManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}

	/** 查看对象 */
	public String show() {
		// klSellerShop.setCreateUser(yebucuoKgAdminuserManager2.getById(klSellerShop.getModifyuser()));
		this.getRequest().setAttribute("v", this.klSellerShop);
		Map map = new HashMap();
		map.put("shop", this.klSellerShop);
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
		// klSellerShop.setCreateTime(new Date());
		// klSellerShop.setDeleted("0");

		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klSellerShop.setModifyuser(theuserid);
		}
		klSellerShop.setCreatetimelong(System.currentTimeMillis());
		klSellerShop.setModifytimelong(System.currentTimeMillis());
		klSellerShop.setStatus(0);

		klSellerShopManager.save(klSellerShop);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klSellerShop);
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
			klSellerShop.setModifyuser(theuserid);
		}
		klSellerShop.setModifytimelong(System.currentTimeMillis());

		klSellerShopManager.update(this.klSellerShop);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klSellerShop);
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
						klSellerShop = klSellerShopManager.getById(Long
								.parseLong(id));
						if (klSellerShop != null) {
							// klSellerShop.setStatus(-1);
							// klSellerShopManager.update(klSellerShop);
							klSellerShopManager
									.removeById(klSellerShop.getId());
						}
					}
				}
				// klSellerShopManager.removeById(Long.parseLong(id));
			}

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("re", 1);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return LIST_ACTION;
		}
	}
	
	
	public String excel() {
		KlSellerShopQuery query = newQuery(KlSellerShopQuery.class,DEFAULT_SORT_COLUMNS);
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
				cell.setCellValue("联系方式");
				cell.setCellStyle(style);
				
				cell = row.createCell((short) 2);
				cell.setCellValue("注册人手机");
				cell.setCellStyle(style);
				
				cell = row.createCell((short) 3);
				cell.setCellValue("网址");
				cell.setCellStyle(style);
		
				cell = row.createCell((short) 4);
				cell.setCellValue("地址");
				cell.setCellStyle(style);
		
				
				int i = 0;
		List<KlSellerShop> list = this.klSellerShopManager.findPage(query).getResult();
		for(KlSellerShop p : list) {
			row = sheet.createRow(++i);
			
			
			
			row.createCell((short)0).setCellValue(p.getShopName());
			
			row.createCell((short)1).setCellValue(p.getPhoneno());
			
			CmsUserInfo u = this.cmsUserInfoManager.getById(p.getUserid());
			if (u != null)
				row.createCell((short)2).setCellValue(u.getMobile());
			
			row.createCell((short)3).setCellValue("http://www.kiklink.com/shop_" + p.getId() + ".html");
			row.createCell((short)4).setCellValue(p.getAddress());
			
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
	
	
	

	// /////////////////////////////////////////////
	// 以下后台操作
	// 更改状态

	// 关店
	public String closeshop() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您没有权限");
		}

		if (this.klSellerShop == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "店铺不存在");
		
		this.klSellerShop = this.klSellerShopManager.getById(this.klSellerShop.getId());
		int i1 = this.klSellerShop.getStatus();
		
		if (this.klSellerShop.getStatus() >= 0) {
			this.klSellerShop.setStatus(this.klSellerShop.getStatus().intValue() - 100);
			this.klSellerShopManager.update(klSellerShop);
			
			int i2 = this.klSellerShop.getStatus();
			
			map.put("i1", i1);
			map.put("i2", "i2");

			String sql = "update kl_seller_product set status=status-100 where shopid="
					+ this.klSellerShop.getId();
			this.cmsCommonPointsManager.updateSql(sql);
		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "操作成功");
	}

	// 开店
	public String openshop() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您没有权限");
		}

		if (this.klSellerShop == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "店铺不存在");
		this.klSellerShop = this.klSellerShopManager.getById(this.klSellerShop.getId());
		
		if (this.klSellerShop.getStatus() < -50) {
			this.klSellerShop.setStatus(this.klSellerShop.getStatus().intValue() + 100);
			this.klSellerShopManager.update(klSellerShop);
			

			String sql = "update kl_seller_product set status=status+100 where shopid="
					+ this.klSellerShop.getId();
			this.cmsCommonPointsManager.updateSql(sql);
		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "操作成功");
	}

	public String updateStatus() {
		Map map = null;
		
		this.klSellerShop = this.klSellerShopManager.getById(this.klSellerShop.getId());
		CmsUserInfo u = this.cmsUserInfoManager.getById(this.klSellerShop.getUserid());
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false) {
			//return Utils.returnServlet(getRequest(), getResponse(), map,
				//	"/page/info.jsp", -2, "您没有权限");
		}

		if (this.klSellerShop == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "资料不存在");

		int oldstatus = this.klSellerShop.getStatus();

		this.klSellerShop.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.klSellerShopManager.update(klSellerShop);

		// 如果是通过验证
		if (oldstatus <= 0 && Utils.getIntParam(getRequest(), "status") == 2) {
			String cont = "您的开店申请已经通过验证,课程资料添加完成之后即可上线";
			MessageUtils.sendSystemMessage(this.klSellerShop.getUserid(),
					cont);
			CountSingleton.addCount(this.klSellerShop.getUserid(), "user",
					"message", 1);
			
			if (Utils.checkMobile(u.getMobile()))
				SmsUtils.sendSms(u.getMobile(), cont);
			if (Utils.checkEmail(u.getEmail()))
				try {
					MailUtil.sendEmail(u.getEmail(), "开练网开店成功信", u.getEmail());
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		if (oldstatus ==2 && Utils.getIntParam(getRequest(), "status") == 1) {
			String cont = "恭喜,您的开店已经上线";
			MessageUtils.sendSystemMessage(this.klSellerShop.getUserid(),
					cont);
			CountSingleton.addCount(this.klSellerShop.getUserid(), "user",
					"message", 1);
			
			if (Utils.checkMobile(u.getMobile()))
				SmsUtils.sendSms(u.getMobile(), cont);
			if (Utils.checkEmail(u.getEmail()))
				try {
					MailUtil.sendEmail(u.getEmail(), "开练网店铺上线信", u.getEmail());
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		if (oldstatus == 0 && Utils.getIntParam(getRequest(), "status") == -1) {
			String reason = Utils.getParam(getRequest(), "reason");
			
			MessageUtils.sendSystemMessage(this.klSellerShop.getUserid(),
					"您的开店申请没有通过验证：" + (reason == null ? "" : reason));
			CountSingleton.addCount(this.klSellerShop.getUserid(), "user",
					"message", 1);
			String cont = "您的开店申请没有通过验证,可以登录网站查看原因";
			if (Utils.checkMobile(u.getMobile()))
				SmsUtils.sendSms(u.getMobile(), cont);
			if (Utils.checkEmail(u.getEmail()))
				try {
					MailUtil.sendEmail(u.getEmail(), "开练网通知信", u.getEmail());
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "操作成功");
	}

	public String updateLevel() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false) {
			//return Utils.returnServlet(getRequest(), getResponse(), map,
				//	"/page/info.jsp", -2, "您没有权限");
		}

		if (this.klSellerShop == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "资料不存在");

		this.klSellerShop.setExt8(Utils.getParam(getRequest(), "ext8"));
		this.klSellerShopManager.update(klSellerShop);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "操作成功");
	}

	/*
	 * 给店铺发信息
	 */
	public String sendSmsToShop() {
		Map map = new HashMap();
		if (this.klSellerShop == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "店铺不存在");
		}
		if (StringUtils.isEmpty(this.klSellerShop.getPhoneno())
				|| Utils.checkMobile(this.klSellerShop.getPhoneno()) == false)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "店铺没有填写手机号");

		String content = Utils.getParam(getRequest(), "content");
		if (StringUtils.isEmpty(content))
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "没有输入发送内容");
		SmsUtils.sendSms(this.klSellerShop.getPhoneno(), content);
		// SmsUtils.sendSms("13810278199", content);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", 1, "发送完成");
	}

	// /////////////////////////////////////////////
	// 以下前台操作

	public String modifyopenshopdetail() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/user/prelogin.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		KlSellerShopQuery q = new KlSellerShopQuery();
		q.setUserid(user.getId());
		q.setPageSize(1);
		
		Page pp = this.klSellerShopManager.findPage(q);
		List list = pp.getResult();
		if (list.isEmpty() == false) {
			KlSellerShop shop = (KlSellerShop) list.get(0);
			Utils.getSessionByRequest(getRequest()).setAttribute("sessionshop",
					shop);
			map.put("shop", shop);
		
			if (shop.getShoptype() != null && shop.getShoptype().intValue() == 1)
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/shop/openshop.jsp", 1, "ok");
			else 
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/shop/jigoushop.jsp", 1, "ok");
		}
		//return Utils.returnServlet(getRequest(), getResponse(), map, "/page/jigoushop.jsp", 1, "ok");
		return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/KlSellerShop/preopenshop.do?center=center", 1, "ok");
		
	}
	
	
	/*
	 * 开店之前
	 */
	public String preopenshop() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/user/prelogin.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		KlSellerShopQuery q = new KlSellerShopQuery();
		q.setUserid(user.getId());
		q.setPageSize(1);

		Page pp = this.klSellerShopManager.findPage(q);
		List list = pp.getResult();
		if (list.isEmpty() == false) {
			KlSellerShop shop = (KlSellerShop) list.get(0);
			Utils.getSessionByRequest(getRequest()).setAttribute("sessionshop",
					shop);

			if (shop.getStatus() == 0)
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/info.jsp", 1, "您的店铺正在审核中");
			else if (shop.getStatus() > 0)
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/info.jsp", 1, "您已经开店");

		}
		return Utils.returnServlet(getRequest(), getResponse(), new HashMap(),
				"/page/shop/preshop.jsp", 1, "ok");
		
	}
	
	public String loginshop() {
		Map map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "您没有权限");
		}
		
		if (this.klSellerShop == null)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "店铺不存在");
	
		CmsUserInfo u = this.cmsUserInfoManager.getById(this.klSellerShop.getUserid());
		if (u == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "用户不存在");
	
		Utils.getSessionByRequest(getRequest()).setAttribute("user", u);
		Utils.getSessionByRequest(getRequest()).setAttribute("sessionshop", this.klSellerShop);
		
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/KlSellerShop/openShop.do", -1, "您已登录成功");
	}

	/*
	 * 开店
	 */
	public String openShop() {
		Logger log = Logger.getLogger(RequestFilter.class);
		int jigou = Utils.getIntParam(getRequest(), "jigou");
		

		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			Utils.getSessionByRequest(getRequest()).setAttribute("sessionurl",
					"!/kailian/KlSellerShop/openShop.do");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/user/prelogin.jsp");
		}

		int ct = ConfigUtils.getIntConfig("店铺教练数量上限", 3);
		this.getRequest().setAttribute("maxcoach", new Integer(ct));

		CtUserProvinceQuery pq = new CtUserProvinceQuery();
		pq.setPageSize(111111);
		pq.setSortColumns("img2 desc");
		Page page = this.ctUserProvinceManager.findPage(pq);
		map.put("provinces", page.getResult());

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		log.info("bbbbbb======" + user.getId());
		KlSellerShopQuery q = new KlSellerShopQuery();
		q.setUserid(user.getId());
		q.setPageSize(1);

		Page pp = this.klSellerShopManager.findPage(q);
		List list = pp.getResult();
		if (list.isEmpty()) {
			// this.getRequest().setAttribute("user", user);
		
			map.put("user", user);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					jigou == 1 ? "/page/shop/jigoushop.jsp"
							: "/page/shop/openshop.jsp", 1, "ok");
		}

		KlSellerShop shop = (KlSellerShop) list.get(0);
	
		if (shop.getStatus() > Utils.STATUS_SHOP_VERYFING) {
			map.put("righttitle", "我要开店");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "您已经开店");
		} else if (shop.getStatus() == Utils.STATUS_SHOP_VERYFING && Utils.getSessionByRequest(getRequest()).getAttribute("adminuser") == null) {
			map.put("righttitle", "我要开店");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您已经申请过开店，资料正在审核中");
		} 
		
		{	
			map.put("shop", shop);
			this.getRequest().setAttribute("shop", shop);
			KlSellerCoachQuery cq = new KlSellerCoachQuery();
			cq.setShopId(shop.getId());
			cq.setPageSize(99999);
			List l1 = this.klSellerCoachManager.queryTop(cq);
			// this.getRequest().setAttribute("coaches", l1);
			map.put("coaches", l1);

			return Utils.returnServlet(getRequest(), getResponse(), map,
					(jigou == 1 || StringUtils.isEmpty(Utils.getParam(getRequest(), "center")) && shop.getUserType() != null && shop.getUserType().intValue() == 2) ? "/page/shop/jigoushop.jsp"
							: "/page/shop/openshop.jsp", 1, "ok");
		}
	}

	/*
	 * 保存开店
	 */
	public String saveShop() {
		Logger log = Logger.getLogger(RequestFilter.class);
		// log.info("================= " +
		// this.getRequest().getParameter("birthMonth"));

		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,userid");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/shop/openshop.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		KlSellerShopQuery q = new KlSellerShopQuery();
		q.setUserid(user.getId());
		q.setPageSize(1);
		List list = this.klSellerShopManager.findPage(q).getResult();
		if (list.isEmpty() == false) {
//			map.put("righttitle", "我要开店");
//			return Utils.returnServlet(getRequest(), getResponse(), map,
//					"/page/info.jsp", -2, "您已经申请过开店，或者资料正在审核中");
			KlSellerShop s = (KlSellerShop) list.get(0);
			this.klSellerShop.setId(s.getId());
		}

		this.klSellerShop.setUserid(user.getId());
		this.klSellerShop.setStatus(Utils.STATUS_SHOP_VERYFING);
		this.klSellerShop.setFlowerPercent(new Float(0.0));
		this.klSellerShop.setPointServiceAttitude(new Float(0));
		this.klSellerShop.setPointPerfational(new Float(0));
		this.klSellerShop.setServedClients(0);
		this.klSellerShop.setShoptype(Utils.getIntParam(getRequest(), "shoptype"));

		this.klSellerShop.setBirthYear(Utils.getIntParam(getRequest(),
				"birthYear"));
		this.klSellerShop.setBirthMonth(Utils.getIntParam(getRequest(),
				"birthMonth"));
		this.klSellerShop.setBirthDate(Utils.getIntParam(getRequest(),
				"birthDate"));
		this.klSellerShop.setCreatetimelong(System.currentTimeMillis());
		
		//如果是临时保存
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "tmp")))
			this.klSellerShop.setStatus(-1);
		
		// 临时
		//this.klSellerShop.setStatus(1);
		//this.klSellerShopManager.saveOrUpdate(klSellerShop);
		if (this.klSellerShop.getId() == null || this.klSellerShop.getId().intValue() <= 0)
			this.klSellerShopManager.save(klSellerShop);
		else 
			this.klSellerShopManager.update(klSellerShop);
		
		// int coachcount = Utils.getIntParam(getRequest(), "coachcount");
		for (int i = 1; i <= 100; i++) {
			log.info("nnnnnnnname:" + i + ":"
					+ Utils.getParam(getRequest(), "name" + i));
			if (StringUtils.isEmpty(Utils.getParam(getRequest(), "name" + i)))
				continue;

			KlSellerCoach c;
			long id = Utils.getLongParam(getRequest(), "coachid" + i);
			if (id > 0)
				c = this.klSellerCoachManager.getById(id);
			else
				c = new KlSellerCoach();
			c.setShopId(this.klSellerShop.getId());
			c.setName(Utils.getParam(getRequest(), "name" + i));
			c.setSex(Utils.getIntParam(getRequest(), "sex" + i));
			c.setBirthYear(Utils.getIntParam(getRequest(), "birthYear" + i));
			c.setBirthMonth(Utils.getIntParam(getRequest(), "birthMonth" + i));
			c.setBirthDate(Utils.getIntParam(getRequest(), "birthDate" + i));
			c.setPhoto(Utils.getParam(getRequest(), "photo"));
			c.setProfile(Utils.getParam(getRequest(), "profile"));

			this.klSellerCoachManager.saveOrUpdate(c);
			
		}

		Utils.getSessionByRequest(getRequest()).setAttribute("sessionshop",
				this.klSellerShop);

		// map.put("re", -2);
		// map.put("word", "请等待审核");
		map.put("righttitle", "我要开店");
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info.jsp", -2, StringUtils.isEmpty(Utils.getParam(getRequest(), "tmp")) ? "请等待审核":"保存成功");
	}

	/*
	 * 店铺数据
	 */
	public String shopData() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser,id");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/shop/saveshop.jsp");
		}

		if (this.klSellerShop == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/shop/data.jsp", -1, "");
		}

		CmsCommonCommentQuery cq = new CmsCommonCommentQuery();
		cq.setTargetid2(this.klSellerShop.getId());
		cq.setTargetType(Utils.TYPE_TARGET_PRODUCT);
		Page page = this.cmsCommonCommentManager.findPage(cq);
		this.getRequest().setAttribute("comments", page);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/shop/data.jsp", 1, "ok");
	}

	/*
	 * 店铺后台首页
	 */
	public String home() {

		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			Utils.getSessionByRequest(getRequest()).setAttribute("sessionurl",
					"!/kailian/KlSellerShop/home.do");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/user/prelogin.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils
				.getSessionByRequest(getRequest()).getAttribute("user");
		KlSellerShopQuery q = new KlSellerShopQuery();
		q.setUserid(user.getId());
		q.setPageSize(1);
		List list = this.klSellerShopManager.findPage(q).getResult();
		if (list.isEmpty()) {
			map.put("righttitle", "提示信息");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "您还没开店");
		}

		KlSellerShop shop = (KlSellerShop) list.get(0);

		CmsCommonCommentQuery cq = new CmsCommonCommentQuery();
		cq.setTargetType(Utils.TYPE_TARGET_SHOP + 10000);
		cq.setTargetId(shop.getId());
		CmsCommonComment cm = this.cmsCommonCommentManager.queryAvg(cq);
		shop.setComment(cm);

		String sql = "select count(distinct userid) as ct from kl_shopping_shoppingcartproduct where shopid="
				+ shop.getId();
		Map sm = this.cmsCommonPointsManager.selectSql(sql);
		shop.setServedClients(Integer.parseInt("" + sm.get("ct")));
		map.put("shop", shop);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/shop/home.jsp", 1, "ok");
	}

	/*
	 * 店铺基本内容
	 */
	public String basic() {
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

		int re = 1;
		String word = "ok";
		if (this.klSellerShop != null && this.klSellerShop.getId() != null
				&& this.klSellerShop.getId() > 0) {
			// if (Utils.getLongParam(getRequest(), "id") > 0) {
			/*
			 * this.klSellerShop =
			 * this.klSellerShopManager.getById(Utils.getLongParam(getRequest(),
			 * "id"));
			 * this.klSellerShop.setIntroduction(Utils.getParam(getRequest(),
			 * "introduction"));
			 * this.klSellerShop.setSuggestreason(Utils.getParam(getRequest(),
			 * "suggestreason"));
			 * this.klSellerShop.setMoreservice(Utils.getParam(getRequest(),
			 * "moreservice"));
			 * this.klSellerShop.setAddress(Utils.getParam(getRequest(),
			 * "address"));
			 */
			String[] ss = this.getRequest().getParameterValues("fuwusheshi");
			StringBuilder fs = new StringBuilder();
			if (ss != null) {
				for (int i = 0; i < ss.length; i++) {
					if (i != 0)
						fs.append(",");
					fs.append(ss[i]);
				}
			}
			this.klSellerShop.setAddition(fs.toString());
			if (this.klSellerShop.getExt6() != null) {
				String e6 = this.klSellerShop.getExt6();
				e6 = e6.replaceAll("，", ",").replaceAll("\\s", "")
						.replaceAll(" ", "");
				this.klSellerShop.setExt6(e6);
			}
			if (this.klSellerShop.getExt7() != null) {
				String e7 = this.klSellerShop.getExt7();
				e7 = e7.replaceAll("，", ",").replaceAll("\\s", "")
						.replaceAll(" ", "");
				this.klSellerShop.setExt7(e7);
			}

			this.klSellerShopManager.saveOrUpdate(klSellerShop);
			re = 2;
			word = "修改成功";
			map.put("shop", this.klSellerShop);
			Utils.getSessionByRequest(getRequest()).setAttribute("sessionshop",
					this.klSellerShop);
		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/shop/basic.jsp", re, word);

	}

	/*
	 * 教练
	 */
	public String coaches() {
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

		long delid = Utils.getLongParam(getRequest(), "delid");
		if (delid > 0) {
			KlSellerCoach c = this.klSellerCoachManager.getById(delid);
			if (c != null
					&& c.getShopId().longValue() != shop.getId().longValue()) {
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/info.jsp", -2, "您无权删除该教练，请重新登录");
			} else if (c != null) {
				this.klSellerCoachManager.removeById(delid);
			}
		}

		log.info("xxxxxxxxx:" + Utils.getParam(this.getRequest(), "resource"));
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "name"))) {
			KlSellerCoach c = null;
			long tcoachid = Utils.getLongParam(getRequest(), "tcoachid");
			if (tcoachid > 0) {
				c = this.klSellerCoachManager.getById(tcoachid);
				if (c != null
						&& c.getShopId().longValue() != shop.getId()
								.longValue()) {
					return Utils.returnServlet(getRequest(), getResponse(),
							map, "/page/info.jsp", -2, "您无权删除该教练，请重新登录");
				}
			}
			if (c == null)
				c = new KlSellerCoach();

			String i = "";
			c.setShopId(shop.getId());
			c.setName(Utils.getParam(getRequest(), "name" + i));
			c.setSex(Utils.getIntParam(getRequest(), "sex" + i));
			c.setBirthYear(Utils.getIntParam(getRequest(), "birthYear" + i));
			c.setBirthMonth(Utils.getIntParam(getRequest(), "birthMonth" + i));
			c.setBirthDate(Utils.getIntParam(getRequest(), "birthDate" + i));
			c.setPhoto(Utils.getParam(getRequest(), "photo"));
			c.setProfile(Utils.getParam(getRequest(), "profile"));
			c.setGoodat(Utils.getParam(getRequest(), "goodat"));
			c.setHonor(Utils.getParam(getRequest(), "honor"));

			this.klSellerCoachManager.saveOrUpdate(c);

			// String savePath =
			// Utils.getSessionByRequest(getRequest()).getServletContext().getRealPath("/")
			// + "";
			// try {
			// String t = ImageUtils.getFormat(c.getPhoto());
			// ImageUtils.zoomAndScale(savePath +c.getPhoto(),
			// savePath+c.getPhoto().replaceAll("." + t, "_m." + t) , 600, 600);
			// ImageUtils.createThumbnailIn(savePath + c.getPhoto(),
			// savePath+c.getPhoto().replaceAll("." + t, "_s." + t) , 200, 200);
			// } catch (Exception e) {
			// // TODO Auto-generated catch block
			// e.printStackTrace();
			// }
		}

		KlSellerCoachQuery query = new KlSellerCoachQuery();
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setPageSize(16);
		query.setShopId(shop.getId());

		Page page = this.klSellerCoachManager.findPage(query);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			map = new HashMap();
			map.put("pg", page);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			this.getRequest().setAttribute("pg", page);

			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/shop/coaches.jsp", 1, "ok");
		}
	}

	/*
	 * 焦点图
	 */
	public String focus() {
		// Logger log = Logger.getLogger(KlSellerShopAction.class);
		// log.info("yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
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

		// log.info("xxxxxxxxx:" + Utils.getParam(this.getRequest(),
		// "resource"));
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "resource1"))) {
			String[] ss = Utils.getParam(getRequest(), "resource1").split(",");
			for (int i = 0; i < ss.length; i++) {

				long fid = Utils.getLongParam(getRequest(), "focusid");
				CmsCommonPhoto p = null;
				if (fid <= 0 || i != 0)
					p = new CmsCommonPhoto();
				else
					p = this.cmsCommonPhotoManager.getById(fid);

				p.setOwnnerid(shop.getId());
				p.setOwnnertype(Utils.TYPE_PHOTO_FOCUSOFSHOP);
				p.setResource(ss[i]);
				p.setName(Utils.getParam(getRequest(), "name"));
				p.setComment(Utils.getParam(getRequest(), "comment1"));
				p.setQuanzhong(Utils.getIntParam(getRequest(), "quanzhong"));
				if (p.getQuanzhong() <= 0)
					p.setQuanzhong(10);
				p.setStatus(1);
				if (StringUtils.isNotEmpty(p.getComment())
						&& p.getComment().startsWith("http://") == false)
					p.setComment("http://" + p.getComment());

				this.cmsCommonPhotoManager.saveOrUpdate(p);

				// 722 * 311
				String savePath = Utils.getSessionByRequest(getRequest())
						.getServletContext().getRealPath("/")
						+ "";
				try {
					String t = ImageUtils.getFormat(p.getResource());
					ImageUtils.zoomAndScale(
							savePath + p.getResource(),
							savePath
									+ p.getResource().replaceAll("." + t,
											"_r." + t), 722, 311);

					// ImageUtils.createThumbnailIn(savePath + "/" +
					// p.getResource(), savePath + "/" +
					// p.getResource().replaceAll("." + t, "_b." + t), 1000,
					// 1000);
					// ImageUtils.markImageByIcon(savePath + "/image/logo.png",
					// savePath + "/" + p.getResource() , savePath + "/" +
					// p.getResource(), null);
					// ImageUtils.markImageByIcon(savePath + "/image/logo.png",
					// savePath + "/" + p.getResource().replaceAll("." + t,
					// "_m." + t) , savePath + "/" +
					// p.getResource().replaceAll("." + t, "_m." + t), null);

					// ImageUtils.createThumbnailIn(savePath + p.getResource(),
					// savePath+p.getResource().replaceAll("." + t, "_s." + t) ,
					// 200, 200);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
		}

		CmsCommonPhotoQuery query = new CmsCommonPhotoQuery();
		// String sort = this.getRequest().getParameter("sort");
		// if (StringUtils.isNotEmpty(sort))
		query.setSortColumns("quanzhong desc");
		query.setPageSize(1600);
		query.setOwnnertype(Utils.TYPE_PHOTO_FOCUSOFSHOP);
		query.setOwnnerid(shop.getId());

		Page page = cmsCommonPhotoManager.findPage(query);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			map = new HashMap();
			map.put("pg", page);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			this.getRequest().setAttribute("pg", page);

			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/shop/focus.jsp", 1, "ok");
		}

	}

	/*
	 * 照片
	 */
	public String photos() {
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

		long delid = Utils.getLongParam(getRequest(), "delid");
		if (delid > 0) {

			this.cmsCommonPhotoManager.removeById(delid);
			return Utils.returnServlet(
					getRequest(),
					getResponse(),
					map,
					"!/kailian/KlSellerShop/photos.do?pageno="
							+ Utils.getPageno(getRequest()), 1, "ok");
		}

		log.info("xxxxxxxxx:" + Utils.getParam(this.getRequest(), "resource"));
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "resource"))) {
			String[] ss = Utils.getParam(getRequest(), "resource").split(",");
			for (int i = 0; i < ss.length; i++) {
				if (StringUtils.isEmpty(ss[i]))
					continue;

				long theid = Utils.getLongParam(getRequest(), "theid");
				CmsCommonPhoto p = this.cmsCommonPhotoManager.getById(theid);
				if (p == null) {
					p = new CmsCommonPhoto();
					p.setOwnnerid(shop.getId());
					p.setOwnnertype(Utils.TYPE_PHOTO_SHOP);
					p.setResource(ss[i]);
					p.setComment(Utils.getParam(getRequest(), "comment1"));
					p.setCategory(Utils.getLongParam(getRequest(), "category"));
					if (StringUtils.isEmpty(p.getComment()))
						p.setComment(shop.getShopName());

					this.cmsCommonPhotoManager.save(p);
				} else {
					p.setOwnnerid(shop.getId());
					p.setOwnnertype(Utils.TYPE_PHOTO_SHOP);
					p.setResource(ss[i]);
					p.setComment(Utils.getParam(getRequest(), "comment1"));
					p.setCategory(Utils.getLongParam(getRequest(), "category"));
					if (StringUtils.isEmpty(p.getComment()))
						p.setComment(shop.getShopName());

					this.cmsCommonPhotoManager.update(p);
				}

				// String savePath =
				// Utils.getSessionByRequest(getRequest()).getServletContext().getRealPath("/")
				// + "";
				// try {
				// String t = ImageUtils.getFormat(p.getResource());
				// ImageUtils.zoomAndScale(savePath +p.getResource(),
				// savePath+p.getResource().replaceAll("." + t, "_m." + t) ,
				// 600, 600);
				// ImageUtils.createThumbnailIn(savePath + p.getResource(),
				// savePath+p.getResource().replaceAll("." + t, "_s." + t) ,
				// 200, 200);
				// } catch (Exception e) {
				// // TODO Auto-generated catch block
				// e.printStackTrace();
				// }

			}
			return Utils.returnServlet(
					getRequest(),
					getResponse(),
					map,
					"!/kailian/KlSellerShop/photos.do?pageno="
							+ Utils.getPageno(getRequest()), 1, "ok");
		}

		CmsCommonPhotoQuery query = new CmsCommonPhotoQuery();
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setPageSize(16);
		query.setOwnnertype(Utils.TYPE_PHOTO_SHOP);
		query.setOwnnerid(shop.getId());
		query.setPageNumber(Utils.getPageno(getRequest()));

		Page page = cmsCommonPhotoManager.findPage(query);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			map = new HashMap();
			map.put("pg", page);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			this.getRequest().setAttribute("pg", page);

			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/shop/photos.jsp", 1, "ok");
		}
	}

	/*
	 * 店铺首页（后台）
	 */
	public String index() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "id");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/shop/saveshop.jsp");
		}

		KlSellerProductQuery pq = new KlSellerProductQuery();
		pq.setStatus(Utils.STATUS_PRODUCT_OK);
		pq.setShopId(id);
		Page page = this.klSellerProductManager.findPage(pq);
		// this.getRequest().setAttribute("page", page);
		map.put("page", page);

		CtPhotoQuery q1 = new CtPhotoQuery();
		q1.setOwnerid(id);
		q1.setOwnertype(Utils.TYPE_PHOTOOWNER_SHOP);
		List list = this.ctPhotoManager.queryTop(q1);
		// this.getRequest().setAttribute("photos", list);
		map.put("photos", list);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/shop/index.jsp", 1, "ok");
	}

	public String shopcomment() {
		Map map = new HashMap();

		CmsCommonCommentQuery q3 = new CmsCommonCommentQuery();
		q3.setTargetType(Utils.TYPE_TARGET_PRODUCT);
		q3.setTargetid2(this.klSellerShop.getId());
		Page comments = this.cmsCommonCommentManager.findPage(q3);
		map.put("comments", comments);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/shop/shopcomment.jsp", 1, "ok");

	}

	/*
	 * 店铺首页（网站端）
	 */
	public String shopindex() {
		if (this.klSellerShop == null)
			return null;

		Map map = new HashMap();

		if (this.klSellerShop == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -2, "参数错误");

		// 设备
		CmsCommonPhotoQuery q1 = new CmsCommonPhotoQuery();
		q1.setOwnnertype(Utils.TYPE_PHOTO_SHOP);
		q1.setOwnnerid(this.klSellerShop.getId());
		q1.setPageSize(11111);
		Page photos = this.cmsCommonPhotoManager.findPage(q1);
		map.put("eqs", photos);

		// 教练
		KlSellerCoachQuery q2 = new KlSellerCoachQuery();
		q2.setShopId(this.klSellerShop.getId());
		q2.setPageSize(333);
		Page teachers = this.klSellerCoachManager.findPage(q2);
		map.put("teachers", teachers);

		// 评论
		CmsCommonCommentQuery q3 = new CmsCommonCommentQuery();
		q3.setTargetType(Utils.TYPE_TARGET_PRODUCT);
		q3.setTargetid2(this.klSellerShop.getId());
		Page comments = this.cmsCommonCommentManager.findPage(q3);
		map.put("comments", comments);

		// 平均评论
		q3.setTargetType(Utils.TYPE_TARGET_SHOP + 10000);
		List ql = this.cmsCommonCommentManager.queryTop(q3);
		if (ql != null && ql.isEmpty() == false) {
			this.klSellerShop.setComment((CmsCommonComment) ql.get(0));
		}

		// 课程
		KlSellerProductQuery q4 = new KlSellerProductQuery();
		q4.setShopId(this.klSellerShop.getId());
		q4.setStatus(1);
		q4.setPageSize(1111);
		q4.setSortColumns("extInt3 desc");
		Page producs = this.klSellerProductManager.findPage(q4);
		map.put("products", producs);

		// 焦点图
		CmsCommonPhotoQuery query = new CmsCommonPhotoQuery();
		query.setSortColumns("quanzhong desc");
		query.setPageSize(1600);
		query.setOwnnertype(Utils.TYPE_PHOTO_FOCUSOFSHOP);
		query.setOwnnerid(this.klSellerShop.getId());

		List focus = this.cmsCommonPhotoManager.findPage(query).getResult();
		map.put("focus", focus);

		if (this.klSellerShop != null)
			this.klSellerShop.setComment(this.cmsCommonCommentManager
					.queryAvgByTypeAndId(Utils.TYPE_TARGET_SHOP,
							this.klSellerShop.getId()));
		map.put("shop", this.klSellerShop);
		
		if (Utils.getIntParam(getRequest(), "version") == 3)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page3/front/shop.jsp", 1, "ok");
		
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/shop/shopindex.jsp", 1, "ok");
	}
	
	
	/*
	 * 成交记录
	 */
	public String productsold() {
		Map map = new HashMap();
		KlShoppingShoppingcartproductQuery q = new KlShoppingShoppingcartproductQuery();
		//q.setProductid(id);
		q.setShopid(id);
		q.setStatusgt(19);
		q.setSortColumns("id desc");
		q.setPageNumber(Utils.getPageno(getRequest()));
		Page page = this.klShoppingShoppingcartproductManager.findPage(q);
		map.put("page", page);
	
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page3/front/sold.jsp", 1, "ok");
	}

	/*
	 * 店铺更多教练
	 */
	public String shopcoaches() {
		Logger log = Logger.getLogger(RequestFilter.class);
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("righttitle", "提示信息");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		KlSellerShop shop = this.klSellerShopManager.getById(Utils
				.getLongParam(getRequest(), "id"));
		if (shop != null)
			shop.setComment(this.cmsCommonCommentManager.queryAvgByTypeAndId(
					Utils.TYPE_TARGET_SHOP, shop.getId()));

		// 课程
		KlSellerProductQuery q4 = new KlSellerProductQuery();
		q4.setShopId(this.klSellerShop.getId());
		q4.setPageSize(4);
		q4.setStatus(1);
		Page producs = this.klSellerProductManager.findPage(q4);
		map.put("products", producs);

		// 教练
		KlSellerCoachQuery query = new KlSellerCoachQuery();
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setPageSize(12);
		query.setShopId(shop.getId());

		if (shop != null)
			shop.setComment(this.cmsCommonCommentManager.queryAvgByTypeAndId(
					Utils.TYPE_TARGET_SHOP, shop.getId()));
		map.put("shop", shop);

		Page page = this.klSellerCoachManager.findPage(query);
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			map = new HashMap();
			map.put("pg", page);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			// this.getRequest().setAttribute("pg", page);
			map.put("pg", page);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/coach/coaches.jsp", 1, "ok");
		}
	}

	/*
	 * 店铺教练资料
	 */
	public String shopcoach() {
		Logger log = Logger.getLogger(RequestFilter.class);
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("righttitle", "提示信息");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp");
		}

		// 课程
		KlSellerProductQuery q4 = new KlSellerProductQuery();
		q4.setShopId(this.klSellerShop.getId());
		q4.setPageSize(4);
		q4.setStatus(1);
		Page producs = this.klSellerProductManager.findPage(q4);
		map.put("products", producs);

		// 教练
		KlSellerCoach coach = this.klSellerCoachManager.getById(Utils
				.getLongParam(this.getRequest(), "coachid"));
		map.put("coach", coach);

		KlSellerShop shop = this.klSellerShopManager.getById(coach.getShopId());
		if (shop != null)
			shop.setComment(this.cmsCommonCommentManager.queryAvgByTypeAndId(
					Utils.TYPE_TARGET_SHOP, shop.getId()));
		map.put("shop", shop);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/coach/coach.jsp", 1, "ok");
	}

	/*
	 * 关店
	 */
//	public String close() {
//		if (this.klSellerShop != null) {
//			this.klSellerShop.setStatus(-100);
//			this.klSellerShopManager.update(klSellerShop);
//
//			String sql = "update kl_seller_product set status=status-100 where shopid="
//					+ this.klSellerShop.getId();
//			this.cmsCommonPointsManager.updateSql(sql);
//		}
//
//		return Utils.returnServlet(getRequest(), getResponse(), new HashMap(),
//				"/page/info.jsp", 1, "ok");
//	}

	/*
	 * 导出所有数据
	 */
	public String all() {
		KlSellerShopQuery q = new KlSellerShopQuery();
		q.setStatus(1);
		q.setPageSize(9999999);
		q.setSortColumns("id");
		List list = this.klSellerShopManager.findPage(q).getResult();
		this.getRequest().setAttribute("list", list);

		return Utils.returnServlet(getRequest(), getResponse(), new HashMap(),
				"/page/shop/excel.jsp", 1, "ok");
	}

}
