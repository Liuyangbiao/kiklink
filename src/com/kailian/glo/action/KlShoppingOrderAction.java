/*

 */

package com.kailian.glo.action;

import java.io.FileOutputStream;
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
import com.yebucuo.util.MessageUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.kailian.glo.vo.query.KlShoppingShoppingcartproductQuery;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;

import org.apache.commons.lang.StringUtils;
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

/**
 * @author  wangdapeng
 * @version 1.0
 * @since 1.0
 */


public class KlShoppingOrderAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/KlShoppingOrder/query.jsp";
	protected static final String LIST_JSP= "/kailian/KlShoppingOrder/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlShoppingOrder/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlShoppingOrder/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlShoppingOrder/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlShoppingOrder/list.do";
	
	private IKlShoppingOrderManager klShoppingOrderManager;
	private IKlSellerShopManager klSellerShopManager;
	private IKlShoppingShoppingcartproductManager klShoppingShoppingcartproductManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	
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

	public IKlSellerShopManager getKlSellerShopManager() {
		return klSellerShopManager;
	}

	public void setKlSellerShopManager(IKlSellerShopManager klSellerShopManager) {
		this.klSellerShopManager = klSellerShopManager;
	}


	private KlShoppingOrder klShoppingOrder;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klShoppingOrder = new KlShoppingOrder();
		} else {
			klShoppingOrder = (KlShoppingOrder)klShoppingOrderManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlShoppingOrderManager(IKlShoppingOrderManager manager) {
		this.klShoppingOrderManager = manager;
	}	
	
	public Object getModel() {
		return klShoppingOrder;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		KlShoppingOrderQuery query = newQuery(KlShoppingOrderQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setSortColumns("id desc");
		Page page = klShoppingOrderManager.findPage(query);
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
		KlShoppingOrderQuery query = newQuery(KlShoppingOrderQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingOrderManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//klShoppingOrder.setCreateUser(yebucuoKgAdminuserManager2.getById(klShoppingOrder.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		klShoppingOrder.setCreateTime(new Date());
//		klShoppingOrder.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingOrder.setModifyuser(theuserid);
		}
		klShoppingOrder.setCreatetimelong(System.currentTimeMillis());
		klShoppingOrder.setModifytimelong(System.currentTimeMillis());
		klShoppingOrder.setStatus(0);
		
		klShoppingOrderManager.save(klShoppingOrder);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingOrder);
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
			klShoppingOrder.setModifyuser(theuserid);
		}
		klShoppingOrder.setModifytimelong(System.currentTimeMillis());
		
		
		klShoppingOrderManager.update(this.klShoppingOrder);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingOrder);
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
						klShoppingOrder = klShoppingOrderManager.getById(Long.parseLong(id));
						if (klShoppingOrder != null) {
							//klShoppingOrder.setStatus(-1);
							//klShoppingOrderManager.update(klShoppingOrder);
							klShoppingOrderManager.removeById(klShoppingOrder.getId());
						}
					}
				}
				//klShoppingOrderManager.removeById(Long.parseLong(id));
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
	
	
	//更改状态
	public String updateStatus() {
		Map map = new HashMap();

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		
		if (this.klShoppingOrder == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "资料不存在");
	
		if ((user == null || user.getId().longValue() != this.klShoppingOrder.getUserid().longValue()))
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "没有权限");
		
		
		int oldstatus = this.klShoppingOrder.getStatus();
		
		this.klShoppingOrder.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.klShoppingOrderManager.update(klShoppingOrder);
		
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/KlShoppingOrder/userorders.do", 1, "操作成功");
		
	}
	
	
	
	/** 
	 * 订单列表 用户
	 * */
	public String userorders() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "订单列表");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		
		KlShoppingOrderQuery query = newQuery(KlShoppingOrderQuery.class,DEFAULT_SORT_COLUMNS);
		query.setPageNumber(Utils.getPageno(getRequest()));
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "waitpay")))
		{
			query.setStatusfrom(0);
			query.setStatusto(10);
		}
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "payed")))
			query.setStatus(20);
		
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		query.setSortColumns("id desc");
		query.setUserid(user.getId());
		if (query.getStatus() != null && query.getStatus() < 0)
			query.setStatus(null);
		Page page = this.klShoppingOrderManager.findPage(query);

		map.put("page", page);
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/order/userorders.jsp", 1, "ok");
		
	}
	
	
	public String del() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "订单删除");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
		}
		
		if (this.klShoppingOrder == null )
			{
			map.put("re", -1);
			map.put("word", "参数错误");
			map.put("lefttitle", "订单删除");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
			}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		if (user.getId().longValue() != this.klShoppingOrder.getUserid().longValue()){
			map.put("re", -1);
			map.put("word", "参数错误");
			map.put("lefttitle", "订单删除");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
			}
		
		this.klShoppingOrderManager.removeById(id);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/KlShoppingOrder/userorders.do", 1, "ok");
	}
	
	/**
	 * 导出excel
	 * @return
	 */
	public String excel() {
		String[] time = Utils.getParam(getRequest(), "time").split(",");
		String sql = "select * from kl_shopping_order where status = 20";
		if(time.length >= 1){
			if(time[0] != null && time.length == 2 && time[1] == null){
				sql += " and createtimelong >="+Utils.timetohaomiao(time[0], "yyyy-MM-dd");
			} else if(time[1] != null && time.length == 2 && time[0] == null){
				sql += "and createtimelong <="+Utils.timetohaomiao(time[1], "yyyy-MM-dd");
			} else {
				sql += " and createtimelong >="+Utils.timetohaomiao(time[0], "yyyy-MM-dd")+" and createtimelong <="+Utils.timetohaomiao(time[1], "yyyy-MM-dd");
			}
		}
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
		cell.setCellValue("订单编号");
		cell.setCellStyle(style);
		cell = row.createCell((short) 1);
		cell.setCellValue("订单金额");
		cell.setCellStyle(style);
		
		cell = row.createCell((short) 2);
		cell.setCellValue("订单状态");
		cell.setCellStyle(style);
		
		cell = row.createCell((short) 3);
		cell.setCellValue("课程编号");
		cell.setCellStyle(style);

		cell = row.createCell((short) 4);
		cell.setCellValue("课程名称");
		cell.setCellStyle(style);
		
		cell = row.createCell((short) 5);
		cell.setCellValue("课程价格");
		cell.setCellStyle(style);
		
		cell = row.createCell((short) 6);
		cell.setCellValue("课程数量");
		cell.setCellStyle(style);
		
		cell = row.createCell((short) 7);
		cell.setCellValue("商家编号");
		cell.setCellStyle(style);
		
		cell = row.createCell((short) 8);
		cell.setCellValue("商家名称");
		cell.setCellStyle(style);
		
		cell = row.createCell((short) 9);
		cell.setCellValue("购课人");
		cell.setCellStyle(style);
		
		cell = row.createCell((short) 10);
		cell.setCellValue("电话");
		cell.setCellStyle(style);
		
		List<KlShoppingOrder> list = this.klShoppingOrderManager.queryBySql(sql);
		for (int j = 0; j < list.size(); j++) {
			KlShoppingOrder p = list.get(j);
			
			KlShoppingShoppingcartproductQuery kssq = new KlShoppingShoppingcartproductQuery();
			kssq.setOrderid(p.getId());
			CmsUserInfo cui = this.cmsUserInfoManager.getById(p.getUserid());
			List<KlShoppingShoppingcartproduct> ls = this.klShoppingShoppingcartproductManager.findPage(kssq).getResult();
			for(KlShoppingShoppingcartproduct kssp : ls){
				row = sheet.createRow(++j);
				row.createCell((short)0).setCellValue(p.getId());
				row.createCell((short)1).setCellValue(p.getPrice());
				String status = "未知状态";
				if("10".equals(String.valueOf(p.getStatus().intValue()))){
					status = "未支付";
				} else if("20".equals(String.valueOf(p.getStatus().intValue()))){
					status = "已支付";
				} else if("30".equals(String.valueOf(p.getStatus().intValue()))){
					status = "已完成";
				} else if("-10".equals(String.valueOf(p.getStatus().intValue()))){
					status = "已结束";
				} else if("-20".equals(String.valueOf(p.getStatus().intValue()))){
					status = "支付失败";
				} else if("-30".equals(String.valueOf(p.getStatus().intValue()))){
					status = "已关闭";
				}
				row.createCell((short)2).setCellValue(status);//待处理
				row.createCell((short)3).setCellValue(kssp.getId());
				row.createCell((short)4).setCellValue(kssp.getProductName());
				row.createCell((short)5).setCellValue(kssp.getPerPrice());
				row.createCell((short)6).setCellValue(kssp.getCount());
				row.createCell((short)7).setCellValue(kssp.getShopid());
				row.createCell((short)8).setCellValue(kssp.getShopName());
				row.createCell((short)9).setCellValue(p.getUsername());
				row.createCell((short)10).setCellValue(cui.getMobile());
			}
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


