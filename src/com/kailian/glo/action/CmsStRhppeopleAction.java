/*

 */

package com.kailian.glo.action;

import java.io.FileOutputStream;
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
import com.yebucuo.util.SmsUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
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


public class CmsStRhppeopleAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsStRhppeople/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsStRhppeople/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsStRhppeople/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsStRhppeople/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsStRhppeople/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsStRhppeople/list.do";
	
	private ICmsStRehuopaiManager cmsStRehuopaiManager;
	private ICmsStRhppeopleManager cmsStRhppeopleManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	private IKlTopicCoachManager klTopicCoachManager;
	
	public IKlTopicCoachManager getKlTopicCoachManager() {
		return klTopicCoachManager;
	}

	public void setKlTopicCoachManager(IKlTopicCoachManager klTopicCoachManager) {
		this.klTopicCoachManager = klTopicCoachManager;
	}


	private CmsStRhppeople cmsStRhppeople;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public ICmsStRehuopaiManager getCmsStRehuopaiManager() {
		return cmsStRehuopaiManager;
	}

	public void setCmsStRehuopaiManager(ICmsStRehuopaiManager cmsStRehuopaiManager) {
		this.cmsStRehuopaiManager = cmsStRehuopaiManager;
	}

	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}

	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsStRhppeople = new CmsStRhppeople();
		} else {
			cmsStRhppeople = (CmsStRhppeople)cmsStRhppeopleManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsStRhppeopleManager(ICmsStRhppeopleManager manager) {
		this.cmsStRhppeopleManager = manager;
	}	
	
	public Object getModel() {
		return cmsStRhppeople;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsStRhppeopleQuery query = newQuery(CmsStRhppeopleQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		else
			query.setSortColumns("id desc");
		
		Page page = cmsStRhppeopleManager.findPage(query);
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
		CmsStRhppeopleQuery query = newQuery(CmsStRhppeopleQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsStRhppeopleManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsStRhppeople.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsStRhppeople.getModifyuser()));
		this.getRequest().setAttribute("v", this.cmsStRhppeople);
		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsStRhppeople.setCreateTime(new Date());
//		cmsStRhppeople.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsStRhppeople.setModifyuser(theuserid);
		}
		cmsStRhppeople.setCreatetimelong(System.currentTimeMillis());
		cmsStRhppeople.setModifytimelong(System.currentTimeMillis());
		cmsStRhppeople.setStatus(0);
		
		cmsStRhppeopleManager.save(cmsStRhppeople);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsStRhppeople);
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
			cmsStRhppeople.setModifyuser(theuserid);
		}
		cmsStRhppeople.setModifytimelong(System.currentTimeMillis());
		
		
		cmsStRhppeopleManager.update(this.cmsStRhppeople);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsStRhppeople);
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
						cmsStRhppeople = cmsStRhppeopleManager.getById(Long.parseLong(id));
						if (cmsStRhppeople != null) {
							//cmsStRhppeople.setStatus(-1);
							//cmsStRhppeopleManager.update(cmsStRhppeople);
							cmsStRhppeopleManager.removeById(cmsStRhppeople.getId());
						}
					}
				}
				//cmsStRhppeopleManager.removeById(Long.parseLong(id));
			}
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("re", 1);
			return writeAjaxResponse(Json.toJson(map));
		}
		else {
			return LIST_ACTION + "?pid=" + Utils.getIntParam(getRequest(), "pid") + "&ext4=" + Utils.getParam(getRequest(), "ext4");
		}
	}
	
	/** 修改状态 */
	public String updateStatus() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false ) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您没有权限");
		}
		
		if (this.cmsStRhppeople == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "资料不存在");
	
		int oldstatus = this.cmsStRhppeople.getStatus();
		
		this.cmsStRhppeople.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.cmsStRhppeopleManager.update(cmsStRhppeople);
		
		

		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "操作成功");
	}

	
	
	/*
	 * 准备注册
	 */
	public String prereg() {
		boolean ismob = "mob".equalsIgnoreCase(Utils.getParam(getRequest(), "mob"));
		Map map = new HashMap();
		map.put("pid",Utils.getParam(getRequest(), "pid"));
	
		CmsStRhppeopleQuery q = new CmsStRhppeopleQuery();
		q.setPid(Utils.getLongParam(getRequest(), "pid"));
		int count = this.cmsStRhppeopleManager.findPage(q).getTotalCount();
		
		CmsStRehuopai r = this.cmsStRehuopaiManager.getById(Utils.getLongParam(getRequest(), "pid"));
		if (r.getExtInt4() != null && r.getExtInt4() > 0 && r.getExtInt4().intValue() <= count ) {
			return Utils.returnServlet(getRequest(), getResponse(), map, ismob ? "/page/rhp/over_a.jsp" : "/page/rhp/over.jsp", -1, "活动报名已满");
		}
		
		
		return Utils.returnServlet(getRequest(), getResponse(), map,ismob?"/page/rhp/prereg_a.jsp": "/page/rhp/prereg.jsp", 1, "ok");
	}
	
	
	/*
	 * 报名男神女神
	 */
	public String regcoach() {
		this.cmsStRhppeople.setIsnewuser(0);
		
		Map map = new HashMap();
		boolean ismob = "mob".equalsIgnoreCase(Utils.getParam(getRequest(), "mob"));
		
		long pid = 0;
		long coachid = Utils.getLongParam(getRequest(), "coachid");
		String mobile = Utils.getParam(getRequest(), "mobile");
		String pname = Utils.getParam(getRequest(), "pname");
		
		CmsStRhppeopleQuery q = new CmsStRhppeopleQuery();
		q.setPid(pid);
		q.setExt4(coachid + "");
		int count = this.cmsStRhppeopleManager.findPage(q).getTotalCount();
		
		KlTopicCoach c = this.klTopicCoachManager.getById(coachid);
		if (c == null)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "教练信息不存在");
	
		if (c.getCount() == null || count >= c.getCount().intValue()) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "该教练预约已满,请选择其他教练");
		}
		
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		if (user != null) {
			user = this.cmsUserInfoManager.getById(user.getId());
			if (Utils.checkMobile(user.getMobile()) && Utils.checkMobile(mobile) == false)
				mobile = user.getMobile();
		}
		else {
			if (Utils.checkMobile(mobile) == false)
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "请输入您的手机号"); 
			if(StringUtils.isEmpty(pname))
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "请输入您的名字"); 
			CmsUserInfoQuery uq = new CmsUserInfoQuery();
			uq.setMobile(mobile);
			//uq.setStatus(1);
			List list = this.cmsUserInfoManager.findPage(uq).getResult();
			if (list.size() > 0) {
				user = (CmsUserInfo) list.get(0);
			}
			else {
				CmsUserInfo u = new CmsUserInfo();
				u = new CmsUserInfo();
				u.setMobile(mobile);
				u.setPasswd(u.getMobile().substring(7));
				u.setStatus(1);
				u.setUsername(this.cmsStRhppeople.getPname());
				u.setStatus(1);
				u.setThirdType("mobile");
				this.cmsUserInfoManager.save(u);
				SmsUtils.sendSms(mobile, "感谢小伙伴通过［开练网］关注运动课程，特赠送注册账号：" + u.getMobile() + "，密码：" + u.getPasswd()+"。马上登录www.kiklink.com，完善个人信息，发现更多好玩的运动，认识新朋友。");
				
				this.cmsStRhppeople.setIsnewuser(1);
				user = u;
			}
		}
		
		
		q.setUserid(user.getId());
		int c1 = this.cmsStRhppeopleManager.findPage(q).getTotalCount();
		if (c1 > 0) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "您已预约过该产品,请不要重复预约哦"); 
		
		this.cmsStRhppeople.setMobile(mobile);
		this.cmsStRhppeople.setShopname(c.getExt3());
		this.cmsStRhppeople.setUserid(user.getId());
		this.cmsStRhppeople.setPid(new Long(0));
		this.cmsStRhppeople.setExt4(coachid + "");
//		this.cmsStRhppeople.setExt5(Utils.getParam(getRequest(), "ext5"));
		long timetmp = System.currentTimeMillis() % 1000000;
		while (timetmp < 100000)
			timetmp = timetmp * 10;
		this.cmsStRhppeople.setExtInt3((int)timetmp);
		this.cmsStRhppeople.setCreatetimelong(System.currentTimeMillis());
		this.cmsStRhppeopleManager.save(this.cmsStRhppeople);
		
		
		
		
		SmsUtils.sendSms(mobile, c.getSms() + "预 约码" + timetmp);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "感谢报名,具体参与方式将以短信形式发送给您,请注意查收"); 

	}
	
//	
//	public String resms() {
//		CmsStRhppeopleQuery q = new CmsStRhppeopleQuery();
//		q.setPid(new Long(0));
//		q.setPageSize(1000);
//		//q.setMobile("13810278199");
//		List list = this.cmsStRhppeopleManager.findPage(q).getResult();
//		for (int i = 0; i < list.size(); i ++) {
//			CmsStRhppeople p = (CmsStRhppeople) list.get(i);
//			KlTopicCoach c = this.klTopicCoachManager.getById(Long.parseLong(p.getExt4()));
//			
//			long timetmp = System.currentTimeMillis() % 1000000;
//			while (timetmp < 100000)
//				timetmp = timetmp * 10;
//			p.setExtInt3((int)timetmp);
//			this.cmsStRhppeopleManager.update(p);
//			
//			
//			SmsUtils.sendSms(p.getMobile(), c.getSms()	+ "预 约码" + timetmp);
//		}
//		
//		return null;
//	}
//	
	
	/*
	 * 注册
	 */
	public String reg() {
		
		Map map = new HashMap();
		boolean ismob = "mob".equalsIgnoreCase(Utils.getParam(getRequest(), "mob"));
		
		
		
		CmsStRhppeopleQuery q = new CmsStRhppeopleQuery();
		q.setPid(Utils.getLongParam(getRequest(), "pid"));
		int count = this.cmsStRhppeopleManager.findPage(q).getTotalCount();
		
		CmsStRehuopai r = this.cmsStRehuopaiManager.getById(Utils.getLongParam(getRequest(), "pid"));
		if (r.getExtInt4() != null && r.getExtInt4() > 0 && r.getExtInt4().intValue() <= count ) {
			return Utils.returnServlet(getRequest(), getResponse(), map, ismob ? "/page/rhp/over.jsp" : "/page/rhp/over_a.jsp", -1, "活动报名已满");
		}
		
		
		//CmsStRehuopai r = this.cmsStRehuopaiManager.getById(Utils.getLongParam(getRequest(), "pid"));
		if (r == null)
			return Utils.returnServlet(getRequest(), getResponse(), map, ismob ? "/page/rhp/prereg_a.jsp":"/page/rhp/prereg.jsp", -1, "活动不存在或者已过期");
		
		String mobile = Utils.getParam(getRequest(), "mobile");
		if (Utils.checkMobile(Utils.getParam(getRequest(), "mobile")) == false) {
			return Utils.returnServlet(getRequest(), getResponse(), map, ismob ? "/page/rhp/prereg_a.jsp":"/page/rhp/prereg.jsp", -1, "请输入手机号");
		}
		
		if (StringUtils.isEmpty(this.cmsStRhppeople.getPname()))
			return Utils.returnServlet(getRequest(), getResponse(), map, ismob ? "/page/rhp/prereg_a.jsp":"/page/rhp/prereg.jsp", -1, "请输入名字");
		
		CmsStRhppeopleQuery q2 = new CmsStRhppeopleQuery();
		q2.setPid(Utils.getLongParam(getRequest(), "pid"));
		q2.setMobile(Utils.getParam(getRequest(), "mobile"));
		int ct = this.cmsStRhppeopleManager.findPage(q2).getTotalCount();
		if (ct > 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map, ismob ? "/page/rhp/over_a.jsp" : "/page/rhp/over.jsp", -1, "您已参加过报名");
		}
		
		
		CmsUserInfoQuery uq = new CmsUserInfoQuery();
		uq.setMobile(mobile);
		uq.setStatus(1);
		List list = this.cmsUserInfoManager.findPage(uq).getResult();
		CmsUserInfo u = null;
		if (list == null || list.isEmpty()) {
			//this.cmsStRhppeopleManager.save(cmsStRhppeople);
			u = new CmsUserInfo();
			u.setMobile(mobile);
			u.setPasswd(u.getMobile().substring(7));
			u.setStatus(1);
			u.setUsername(this.cmsStRhppeople.getPname());
			u.setStatus(1);
			u.setThirdType("mobile");
			this.cmsUserInfoManager.save(u);
			SmsUtils.sendSms(mobile, "感谢小伙伴通过［开练网］关注运动课程，特赠送注册账号：" + u.getMobile() + "，密码：" + u.getPasswd()+"。马上登录www.kiklink.com，完善个人信息，发现更多好玩的运动，认识新朋友。");
			
			this.cmsStRhppeople.setIsnewuser(1);
		}
		else {
			u = (CmsUserInfo) list.get(0);
			this.cmsStRhppeople.setIsnewuser(0);
		}
		
		this.cmsStRhppeople.setUserid(u.getId());
		this.cmsStRhppeople.setCreatetimelong(System.currentTimeMillis());
		this.cmsStRhppeopleManager.save(cmsStRhppeople);
		
		
		String cont = r.getExt5();
		SmsUtils.sendSms(this.cmsStRhppeople.getMobile(), cont);
		
		this.cmsStRhppeople.setExt3("xx");
		this.cmsStRhppeople.setAddition(mobile + "  " + cont); 
		this.cmsStRhppeopleManager.update(cmsStRhppeople);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, ismob ? "/page/rhp/over_a.jsp":"/page/rhp/over.jsp", 1, "ok");
		
	}
	
	
	public String excel() {
		CmsStRhppeopleQuery query = newQuery(CmsStRhppeopleQuery.class,DEFAULT_SORT_COLUMNS);
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
				cell.setCellValue("名字");
				cell.setCellStyle(style);
				cell = row.createCell((short) 1);
				cell.setCellValue("联系方式");
				cell.setCellStyle(style);
				cell = row.createCell((short) 2);
				cell.setCellValue("职业");
				cell.setCellStyle(style);
				cell = row.createCell((short) 3);
				cell.setCellValue("渠道");
				cell.setCellStyle(style);
		
				int i = 0;
		List<CmsStRhppeople> list = this.cmsStRhppeopleManager.findPage(query).getResult();
		for(CmsStRhppeople p : list) {
			row = sheet.createRow(++i);
			row.createCell((short)0).setCellValue(p.getPname());
			row.createCell((short)1).setCellValue(p.getMobile());
			row.createCell((short)2).setCellValue(p.getJob());
			row.createCell((short)3).setCellValue(p.getExt5());
			
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
	
	
//	//导出excel
//	public static void main(String[] args) throws Exception
//	{
//		// 第一步，创建一个webbook，对应一个Excel文件
//		HSSFWorkbook wb = new HSSFWorkbook();
//		// 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
//		HSSFSheet sheet = wb.createSheet("学生表一");
//		// 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
//		HSSFRow row = sheet.createRow((int) 0);
//		// 第四步，创建单元格，并设置值表头 设置表头居中
//		HSSFCellStyle style = wb.createCellStyle();
//		style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
//
//		HSSFCell cell = row.createCell((short) 0);
//		cell.setCellValue("学号");
//		cell.setCellStyle(style);
//		cell = row.createCell((short) 1);
//		cell.setCellValue("姓名");
//		cell.setCellStyle(style);
//		cell = row.createCell((short) 2);
//		cell.setCellValue("年龄");
//		cell.setCellStyle(style);
//		cell = row.createCell((short) 3);
//		cell.setCellValue("生日");
//		cell.setCellStyle(style);
//
//		// 第五步，写入实体数据 实际应用中这些数据从数据库得到，
//		List list = CreateSimpleExcelToDisk.getStudent();
//
//		for (int i = 0; i < list.size(); i++)
//		{
//			row = sheet.createRow((int) i + 1);
//			Student stu = (Student) list.get(i);
//			// 第四步，创建单元格，并设置值
//			row.createCell((short) 0).setCellValue((double) stu.getId());
//			row.createCell((short) 1).setCellValue(stu.getName());
//			row.createCell((short) 2).setCellValue((double) stu.getAge());
//			cell = row.createCell((short) 3);
//			cell.setCellValue(new SimpleDateFormat("yyyy-mm-dd").format(stu
//					.getBirth()));
//		}
//		// 第六步，将文件存到指定位置
//		try
//		{
//			FileOutputStream fout = new FileOutputStream("E:/students.xls");
//			wb.write(fout);
//			fout.close();
//		}
//		catch (Exception e)
//		{
//			e.printStackTrace();
//		}
//	}
	
	
	
	
}


