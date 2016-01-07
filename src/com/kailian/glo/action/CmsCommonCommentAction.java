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
import com.yebucuo.util.JSTLTagUtils;
import com.yebucuo.util.MessageUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
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

/**
 * @author  wangdapeng
 * @version 1.0
 * @since 1.0
 */


public class CmsCommonCommentAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsCommonComment/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsCommonComment/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsCommonComment/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsCommonComment/edit.jsp";
	protected static final String EDIT_JSP2 = "/kailian/CmsCommonComment/edit2.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsCommonComment/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsCommonComment/list.do";
	
	private ICmsCommonCommentManager cmsCommonCommentManager;
	private IKlSellerProductManager klSellerProductManager;
	
	public IKlSellerProductManager getKlSellerProductManager() {
		return klSellerProductManager;
	}

	public void setKlSellerProductManager(
			IKlSellerProductManager klSellerProductManager) {
		this.klSellerProductManager = klSellerProductManager;
	}


	private CmsCommonComment cmsCommonComment;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsCommonComment = new CmsCommonComment();
		} else {
			cmsCommonComment = (CmsCommonComment)cmsCommonCommentManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsCommonCommentManager(ICmsCommonCommentManager manager) {
		this.cmsCommonCommentManager = manager;
	}	
	
	public Object getModel() {
		return cmsCommonComment;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsCommonCommentQuery query = newQuery(CmsCommonCommentQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsCommonCommentManager.findPage(query);
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
		CmsCommonCommentQuery query = newQuery(CmsCommonCommentQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsCommonCommentManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsCommonComment.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsCommonComment.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsCommonComment.setCreateTime(new Date());
//		cmsCommonComment.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsCommonComment.setModifyuser(theuserid);
		}
		cmsCommonComment.setCreatetimelong(System.currentTimeMillis());
		cmsCommonComment.setModifytimelong(System.currentTimeMillis());
		cmsCommonComment.setStatus(0);
		
		cmsCommonCommentManager.save(cmsCommonComment);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsCommonComment);
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
	public String edit2() {
		return EDIT_JSP2;
	}
	
	/**保存更新对象*/
	public String update() {
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsCommonComment.setModifyuser(theuserid);
		}
		cmsCommonComment.setModifytimelong(System.currentTimeMillis());
		
		
		cmsCommonCommentManager.update(this.cmsCommonComment);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsCommonComment);
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
						cmsCommonComment = cmsCommonCommentManager.getById(Long.parseLong(id));
						if (cmsCommonComment != null) {
							//cmsCommonComment.setStatus(-1);
							//cmsCommonCommentManager.update(cmsCommonComment);
							cmsCommonCommentManager.removeById(cmsCommonComment.getId());
						}
					}
				}
				//cmsCommonCommentManager.removeById(Long.parseLong(id));
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
	 * 发布评论
	 */
	public String savecomment() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您没有登录");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		
		CmsCommonComment c = new CmsCommonComment();
		c.setTargetId(Utils.getLongParam(getRequest(), "targetid"));
		c.setTargetid2(Utils.getLongParam(getRequest(), "targetid2"));
		c.setTargetType(Utils.getIntParam(getRequest(), "targettype"));
		c.setComment(Utils.getParam(getRequest(), "cont"));
		c.setPointDescriptionMatch(Utils.getFloatParam(getRequest(), "pointDescriptionMatch"));
		c.setPointAppointmentSuccessful(Utils.getFloatParam(getRequest(), "pointAppointmentSuccessful"));
		c.setPointPerfational(Utils.getFloatParam(getRequest(), "pointPerfational")	);
		c.setPointServiceAttitude(Utils.getFloatParam(getRequest(), "pointServiceAttitude"));
		c.setUserid(user.getId());
		c.setUsername(user.getUsername());
		c.setUserphoto(user.getPhoto());
		c.setCreatetimelong(System.currentTimeMillis());
		c.setPoint((c.getPointAppointmentSuccessful() + c.getPointDescriptionMatch() + c.getPointPerfational() + c.getPointServiceAttitude())/4);
		
		CmsCommonCommentQuery q = new CmsCommonCommentQuery();
		q.setTargetid2(c.getTargetid2());
		q.setTargetType(c.getTargetType());
		List list = this.cmsCommonCommentManager.queryTop(q);
		if (list != null && list.size() > 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2 , "您已经发表过评论"	);
		}
		
		if (c.getTargetType().intValue() == Utils.TYPE_TARGET_PRODUCT) {
			KlSellerProduct p = this.klSellerProductManager.getById(c.getTargetId());
			if (p != null) {
				c.setTargetid2(p.getShopId());
			}
		}
		
		this.cmsCommonCommentManager.save(c);
		
		//更新平均值
		this.avg(c);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "ok");
	}
	
	
	/*
	 * 平均数
	 */
	public void avg(CmsCommonComment com) {
		Logger log = Logger.getLogger(getClass());
		log.info("xxxxxx1");
		
		CmsCommonCommentQuery q = new CmsCommonCommentQuery();
		q.setTargetId(com.getTargetId());
		q.setTargetType(com.getTargetType() + 10000);
		List list = this.cmsCommonCommentManager.queryTop(q);
		CmsCommonComment avg = null;
		if (list != null && list.isEmpty() == false)
			avg = (CmsCommonComment) list.get(0);
		else 
		{
			avg = new CmsCommonComment();
			avg.setTargetId(com.getTargetId());
			avg.setTargetType(com.getTargetType() + 10000);
		}
		log.info("xxxxxxxxxxx  2");
		
		
		q.setTargetType(com.getTargetType());
		CmsCommonComment tmp = this.cmsCommonCommentManager.queryAvg(q);
		if (tmp != null) {
			log.info("xxxxxxxxxxsize is:" + list.size());
			avg.setPointAppointmentSuccessful(tmp.getPointAppointmentSuccessful());
			avg.setPointDescriptionMatch(tmp.getPointDescriptionMatch());
			avg.setPointPerfational(tmp.getPointPerfational());
			avg.setPointServiceAttitude(tmp.getPointServiceAttitude());
			avg.setTargetid2(tmp.getTargetid2());
			
			avg.setPoint((avg.getPointAppointmentSuccessful() + avg.getPointDescriptionMatch() + avg.getPointPerfational() + avg.getPointServiceAttitude())/4);

		}
		log.info("xxxxxxxxxxxxxxxx  3");
		
		this.cmsCommonCommentManager.saveOrUpdate(avg);
	}
	
	

}


