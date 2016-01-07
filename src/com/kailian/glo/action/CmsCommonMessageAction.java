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
import com.yebucuo.sigleton.CountSingleton;
import com.yebucuo.util.PointUtils;
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


public class CmsCommonMessageAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsCommonMessage/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsCommonMessage/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsCommonMessage/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsCommonMessage/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsCommonMessage/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsCommonMessage/list.do";
	
	private ICmsCommonMessageManager cmsCommonMessageManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	
	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}


	private CmsCommonMessage cmsCommonMessage;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsCommonMessage = new CmsCommonMessage();
		} else {
			cmsCommonMessage = (CmsCommonMessage)cmsCommonMessageManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsCommonMessageManager(ICmsCommonMessageManager manager) {
		this.cmsCommonMessageManager = manager;
	}	
	
	public Object getModel() {
		return cmsCommonMessage;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		CmsCommonMessageQuery query = newQuery(CmsCommonMessageQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsCommonMessageManager.findPage(query);
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
		CmsCommonMessageQuery query = newQuery(CmsCommonMessageQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsCommonMessageManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//cmsCommonMessage.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsCommonMessage.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsCommonMessage.setCreateTime(new Date());
//		cmsCommonMessage.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsCommonMessage.setModifyuser(theuserid);
		}
		cmsCommonMessage.setCreatetimelong(System.currentTimeMillis());
		cmsCommonMessage.setModifytimelong(System.currentTimeMillis());
		cmsCommonMessage.setStatus(0);
		
		cmsCommonMessageManager.save(cmsCommonMessage);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsCommonMessage);
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
			cmsCommonMessage.setModifyuser(theuserid);
		}
		cmsCommonMessage.setModifytimelong(System.currentTimeMillis());
		
		
		cmsCommonMessageManager.update(this.cmsCommonMessage);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsCommonMessage);
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
						cmsCommonMessage = cmsCommonMessageManager.getById(Long.parseLong(id));
						if (cmsCommonMessage != null) {
							//cmsCommonMessage.setStatus(-1);
							//cmsCommonMessageManager.update(cmsCommonMessage);
							cmsCommonMessageManager.removeById(cmsCommonMessage.getId());
						}
					}
				}
				//cmsCommonMessageManager.removeById(Long.parseLong(id));
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
	
	
	//发布消息
	public String postmessage() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("righttitle", "发布信息");
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您还没有登录");
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		CmsUserInfo touser = this.cmsUserInfoManager.getById(Utils.getLongParam(getRequest(), "targetid"));
		
		CmsCommonMessage m = new CmsCommonMessage();
		m.setFromuserid(user.getId());
		m.setFromusername(user.getUsername());
		m.setFromuserphoto(user.getPhoto());
		m.setTouserid(touser.getId());
		m.setTousername(touser.getUsername());
		m.setTouserphoto(touser.getPhoto());
		m.setContent(Utils.getParam(getRequest(), "content"));
		m.setCreatetimelong(System.currentTimeMillis());
		
		m.setContenttype(Utils.TYPE_MESSAGE_WORD);
		m.setMessagetype(Utils.TYPE_FROM_USER);
		m.setStatus(1);
		
		this.cmsCommonMessageManager.save(m);
		
		
		CountSingleton.addCount(user.getId(), "user", "message", 1);
		PointUtils.setpoint(getRequest(), PointUtils.REASON_SENDMESSAGE);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "ok");
		
	}
	
	
	//消息列表
	public String messages() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("righttitle", "消息列表");
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您还没有登录");
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		if (user != null)
			CountSingleton.clearCount(user.getId(), "user", "message");
		
		int pageno = Utils.getIntParam(getRequest(), "pageno");
		int mtype = Utils.getIntParam(getRequest(), "mtype");
		
		CmsCommonMessageQuery q1 = new CmsCommonMessageQuery();
		q1.setTouserid(user.getId());
		q1.setMessagetype(Utils.TYPE_FROM_SYSTEM);
		q1.setStatus(1);
		q1.setSortColumns("id desc");
		
		if (mtype == 1 && pageno > 0)
			q1.setPageNumber(pageno);
		Page p1 = this.cmsCommonMessageManager.findPage(q1);
		
		CmsCommonMessageQuery q2 = new CmsCommonMessageQuery();
		q2.setTouserid(user.getId());
		q2.setMessagetype(Utils.TYPE_FROM_USER);
		q2.setStatus(1);
		q2.setSortColumns("id desc");
		if (mtype < 1 && pageno > 0)
			q2.setPageNumber(pageno);
		Page p2 = this.cmsCommonMessageManager.findPage(q2);
	
		CmsCommonMessageQuery q3 = new CmsCommonMessageQuery();
		q3.setTouserid(user.getId());
		q3.setStatus(-1);
		q3.setSortColumns("id desc");
		if (mtype == 2 && pageno > 0)
			q3.setPageNumber(pageno);
		Page p3 = this.cmsCommonMessageManager.findPage(q3);
		
		
		map.put("p1", p1);
		map.put("p2", p2);
		map.put("p3", p3);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/message/messages.jsp", 1, "ok");
	}
	
	
	//删除或者恢复信息
	public String status() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("righttitle", "消息列表");
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您还没有登录");
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		
		//this.cmsCommonMessage = this.cmsCommonMessageManager.getById(Utils.getLongParam(getRequest(), "id"));
		if (this.cmsCommonMessage == null || user.getId().longValue() != this.cmsCommonMessage.getTouserid().longValue()) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "消息不存在  " + user.getId() + "  " + this.cmsCommonMessage.getTouserid());

		this.cmsCommonMessage.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.cmsCommonMessageManager.update(this.cmsCommonMessage);
			return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/CmsCommonMessage/messages.do", 1, "操作成功");
	}

}
















