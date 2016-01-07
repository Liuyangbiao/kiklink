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
//import com.yebucuo.glo.service.IYebucuoKgAdminuserManager;
import com.yebucuo.util.Utils;
import com.kailian.glo.vo.query.CmsBiaodanConfigQuery;
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


public class CmsBiaodanDetailAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/CmsBiaodanDetail/query.jsp";
	protected static final String LIST_JSP= "/kailian/CmsBiaodanDetail/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsBiaodanDetail/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsBiaodanDetail/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsBiaodanDetail/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	protected static final String NEWDATA_JSP = "/kailian/CmsBiaodan/newdata.jsp";

	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsBiaodanDetail/list.do";
	
	private ICmsBiaodanDetailManager cmsBiaodanDetailManager;
	
	private CmsBiaodanDetail cmsBiaodanDetail;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	private ICmsBiaodanConfigManager cmsBiaodanConfigManager;
	
	public void setCmsBiaodanConfigManager(
			ICmsBiaodanConfigManager cmsBiaodanConfigManager) {
		this.cmsBiaodanConfigManager = cmsBiaodanConfigManager;
	}
	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsBiaodanDetail = new CmsBiaodanDetail();
		} else {
			cmsBiaodanDetail = (CmsBiaodanDetail)cmsBiaodanDetailManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsBiaodanDetailManager(ICmsBiaodanDetailManager manager) {
		this.cmsBiaodanDetailManager = manager;
	}	
	
	public Object getModel() {
		return cmsBiaodanDetail;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		
		CmsBiaodanDetailQuery query = newQuery(CmsBiaodanDetailQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsBiaodanDetailManager.findPage(query);
		
		CmsBiaodanConfigQuery q = new CmsBiaodanConfigQuery();
		q.setInputListId(query.getInputListId());
		q.setPageSize(11111);
		List cs = this.cmsBiaodanConfigManager.queryTop(q);
		this.getRequest().setAttribute("cs", cs);
		
		
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
		CmsBiaodanDetailQuery query = newQuery(CmsBiaodanDetailQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsBiaodanDetailManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		//return writeAjaxResponse(Json.toJson(map));
		//return writeAjaxResponse(Utils.toJson(map));
		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info.jsp", 1, "ok");
	}
	
	/** 查看对象*/
	public String show() {
		//cmsBiaodanDetail.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsBiaodanDetail.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	public String show2() {
		//cmsBiaodanDetail.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsBiaodanDetail.getModifyuser()));

		
		return "/page/channel/tiyan.jsp";
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		cmsBiaodanDetail.setCreateTime(new Date());
//		cmsBiaodanDetail.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsBiaodanDetail.setModifyuser(theuserid);
		}
		cmsBiaodanDetail.setCreatetimelong(System.currentTimeMillis());
		cmsBiaodanDetail.setModifytimelong(System.currentTimeMillis());
		cmsBiaodanDetail.setStatus(0);
		
		cmsBiaodanDetailManager.save(cmsBiaodanDetail);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsBiaodanDetail);
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
			cmsBiaodanDetail.setModifyuser(theuserid);
		}
		cmsBiaodanDetail.setModifytimelong(System.currentTimeMillis());
		
		
		cmsBiaodanDetailManager.update(this.cmsBiaodanDetail);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsBiaodanDetail);
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
						cmsBiaodanDetail = cmsBiaodanDetailManager.getById(Long.parseLong(id));
						if (cmsBiaodanDetail != null) {
							//cmsBiaodanDetail.setStatus(-1);
							//cmsBiaodanDetailManager.update(cmsBiaodanDetail);
							cmsBiaodanDetailManager.removeById(cmsBiaodanDetail.getId());
						}
					}
				}
				//cmsBiaodanDetailManager.removeById(Long.parseLong(id));
			}
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("re", 1);
			return writeAjaxResponse(Json.toJson(map));
		}
		else {
			return LIST_ACTION + "?inputListId=" + Utils.getParam(getRequest(), "inputListId");
		}
	}
	
	/** 添加数据 */
	public String newdata() {
		CmsBiaodanConfigQuery q = new CmsBiaodanConfigQuery();
		q.setInputListId(Utils.getLongParam(getRequest(), "bid"));
		q.setPageSize(10000);
		Page page = this.cmsBiaodanConfigManager.findPage(q);
		this.getRequest().setAttribute("list", page.getResult());
		/*
		CmsBiaodanDetail d = this.cmsBiaodanDetailManager.getById(Utils.getLongParam(getRequest(), "did"));
		this.getRequest().setAttribute("model", d);
		*/
		return NEWDATA_JSP;
	}
	
	/** 保存数据 */
	public String savedetail() {
		CmsBiaodanDetail d ;
		if (this.cmsBiaodanDetail == null)
			d = new CmsBiaodanDetail();
		else 
			d = this.cmsBiaodanDetail;
		
		d.setInputListId(Utils.getLongParam(getRequest(), "biaodanid"));
		d.setRank(Utils.getIntParam(getRequest(), "rank"));
		d.setTitle(Utils.getParam(getRequest(), "title"));
		
		Map map = new HashMap();
	
		String inputnames = Utils.getParam(getRequest(), "inputnames");
		if (StringUtils.isNotEmpty(inputnames)) {
			String[] ss = inputnames.split(",");
			for (int i = 0; i < ss.length; i ++) {
				if (StringUtils.isNotEmpty(ss[i])) {
					String key = ss[i];
					String value = Utils.getParam(getRequest(), key);
					map.put(key, value);
					
				}
			}
		}
		
		d.setContent(Json.toJson(map));
		this.cmsBiaodanDetailManager.saveOrUpdate(d);
		
		return OK_JSP;
	}

}


