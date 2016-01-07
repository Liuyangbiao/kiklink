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
import com.yebucuo.util.MessageUtils;
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.kailian.glo.vo.query.KlSellerProductQuery;
import com.kailian.glo.vo.query.KlShoppingCardQuery;
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


public class KlShoppingCardAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/KlShoppingCard/query.jsp";
	protected static final String LIST_JSP= "/kailian/KlShoppingCard/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlShoppingCard/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlShoppingCard/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlShoppingCard/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlShoppingCard/list.do";
	protected static final String ACTIVATE = "!/kailian/KlShoppingCard/myCards.do";
	
	protected static final String CARDS = "/page/card/card.jsp";
	
	private IKlShoppingCardManager klShoppingCardManager;
	
	private ICmsUserInfoManager cmsUserInfoManager;
	
	private KlShoppingCard klShoppingCard;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klShoppingCard = new KlShoppingCard();
		} else {
			klShoppingCard = (KlShoppingCard)klShoppingCardManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlShoppingCardManager(IKlShoppingCardManager manager) {
		this.klShoppingCardManager = manager;
	}	
	
	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}

	public Object getModel() {
		return klShoppingCard;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/**
	 * 我的开练卡
	 * @return
	 */
	public String myCards(){
		Map map = new HashMap();
		HttpSession session = Utils.getSessionByRequest(this.getRequest());
		KlShoppingCardQuery query = newQuery(KlShoppingCardQuery.class, DEFAULT_SORT_COLUMNS);
		CmsUserInfo cui = (CmsUserInfo)session.getAttribute("user");
		if(cui == null)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "登录超时，请重新登录!");
		query.setUserid(cui.getId());
		query.setExtInt5(1);//已付费
		Page list = this.klShoppingCardManager.findPage(query);
		CmsUserInfo user = this.cmsUserInfoManager.getById(cui.getId());
		map.put("cards", list);
		map.put("user", user);
		return Utils.returnServlet(getRequest(), getResponse(), map, CARDS, 1, "操作成功");
	}
	
	/**
	 * 激活开练卡
	 */
	public String activate(){
		Long l = Utils.getLongParam(getRequest(), "id");
		KlShoppingCard uksc = new KlShoppingCard();
		Map map = new HashMap();
		if(l == -1){//手动输入激活
			KlShoppingCardQuery q = new KlShoppingCardQuery();
			q.setCardNo(Utils.getParam(getRequest(), "cno"));
			q.setCardPwd(Utils.getParam(getRequest(), "cpwd"));
			List ls = this.klShoppingCardManager.queryTop(q);
			if(ls.size() <=0)
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "请输入有效的卡号及密码！");
			else
				uksc = (KlShoppingCard) ls.get(0);
		} else {//点击链接激活
			uksc = this.klShoppingCardManager.getById(Utils.getLongParam(getRequest(), "id"));
		}
		if(uksc.getOverdue() < System.currentTimeMillis())
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "卡已过有效期！");
		if(uksc.getStatus().intValue() == -1)
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -1, "卡已激活，请勿重复激活！");
		uksc.setStatus(-1);//已使用
		uksc.setUserid(((CmsUserInfo) Utils.getSessionByRequest(this.getRequest())).getId());
		this.klShoppingCardManager.update(uksc);
		HttpSession session = Utils.getSessionByRequest(this.getRequest());
		CmsUserInfo userInfo = (CmsUserInfo)session.getAttribute("user");
		userInfo = this.cmsUserInfoManager.getById(userInfo.getId());
		userInfo.setMoneyleft(uksc.getCardprice()+(userInfo.getMoneyleft() == null ? 0:userInfo.getMoneyleft()));
		this.cmsUserInfoManager.update(userInfo);
		return ACTIVATE;
	}
	
	/** 执行搜索 */
	public String list() {
		KlShoppingCardQuery query = newQuery(KlShoppingCardQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingCardManager.findPage(query);
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
		KlShoppingCardQuery query = newQuery(KlShoppingCardQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klShoppingCardManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//klShoppingCard.setCreateUser(yebucuoKgAdminuserManager2.getById(klShoppingCard.getModifyuser()));
		this.getRequest().setAttribute("v", this.klShoppingCard);
		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		klShoppingCard.setCreateTime(new Date());
//		klShoppingCard.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klShoppingCard.setModifyuser(theuserid);
		}
		klShoppingCard.setCreatetimelong(System.currentTimeMillis());
		klShoppingCard.setModifytimelong(System.currentTimeMillis());
		klShoppingCard.setStatus(0);
		
		klShoppingCardManager.save(klShoppingCard);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingCard);
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
			klShoppingCard.setModifyuser(theuserid);
		}
		klShoppingCard.setModifytimelong(System.currentTimeMillis());
		
		
		klShoppingCardManager.update(this.klShoppingCard);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klShoppingCard);
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
						klShoppingCard = klShoppingCardManager.getById(Long.parseLong(id));
						if (klShoppingCard != null) {
							//klShoppingCard.setStatus(-1);
							//klShoppingCardManager.update(klShoppingCard);
							klShoppingCardManager.removeById(klShoppingCard.getId());
						}
					}
				}
				//klShoppingCardManager.removeById(Long.parseLong(id));
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
	
	/** 修改状态 */
	public String updateStatus() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false ) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "您没有权限");
		}
		
		if (this.klShoppingCard == null) 
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", -2, "资料不存在");
	
		int oldstatus = this.klShoppingCard.getStatus();
		
		this.klShoppingCard.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.klShoppingCardManager.update(klShoppingCard);
		
		

		
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "操作成功");
	}

}


