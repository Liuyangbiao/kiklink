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


public class KlTrainningRecordAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/kailian/KlTrainningRecord/query.jsp";
	protected static final String LIST_JSP= "/kailian/KlTrainningRecord/list.jsp";
	protected static final String CREATE_JSP = "/kailian/KlTrainningRecord/create.jsp";
	protected static final String EDIT_JSP = "/kailian/KlTrainningRecord/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/KlTrainningRecord/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/KlTrainningRecord/list.do";
	
	private IKlTrainningRecordManager klTrainningRecordManager;
	private ICmsCommonPhotoManager cmsCommonPhotoManager ;
	
	public ICmsCommonPhotoManager getCmsCommonPhotoManager() {
		return cmsCommonPhotoManager;
	}

	public void setCmsCommonPhotoManager(
			ICmsCommonPhotoManager cmsCommonPhotoManager) {
		this.cmsCommonPhotoManager = cmsCommonPhotoManager;
	}

	private KlTrainningRecord klTrainningRecord;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	
	public void setParam(String param){
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			klTrainningRecord = new KlTrainningRecord();
		} else {
			klTrainningRecord = (KlTrainningRecord)klTrainningRecordManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setKlTrainningRecordManager(IKlTrainningRecordManager manager) {
		this.klTrainningRecordManager = manager;
	}	
	
	public Object getModel() {
		return klTrainningRecord;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		KlTrainningRecordQuery query = newQuery(KlTrainningRecordQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klTrainningRecordManager.findPage(query);
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
		KlTrainningRecordQuery query = newQuery(KlTrainningRecordQuery.class,DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = klTrainningRecordManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}
	
	/** 查看对象*/
	public String show() {
		//klTrainningRecord.setCreateUser(yebucuoKgAdminuserManager2.getById(klTrainningRecord.getModifyuser()));

		
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
//		klTrainningRecord.setCreateTime(new Date());
//		klTrainningRecord.setDeleted("0");
		
		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			klTrainningRecord.setModifyuser(theuserid);
		}
		klTrainningRecord.setCreatetimelong(System.currentTimeMillis());
		klTrainningRecord.setModifytimelong(System.currentTimeMillis());
		klTrainningRecord.setStatus(0);
		
		klTrainningRecordManager.save(klTrainningRecord);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klTrainningRecord);
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
			klTrainningRecord.setModifyuser(theuserid);
		}
		klTrainningRecord.setModifytimelong(System.currentTimeMillis());
		
		
		klTrainningRecordManager.update(this.klTrainningRecord);
		
		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", klTrainningRecord);
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
						klTrainningRecord = klTrainningRecordManager.getById(Long.parseLong(id));
						if (klTrainningRecord != null) {
							//klTrainningRecord.setStatus(-1);
							//klTrainningRecordManager.update(klTrainningRecord);
							klTrainningRecordManager.removeById(klTrainningRecord.getId());
						}
					}
				}
				//klTrainningRecordManager.removeById(Long.parseLong(id));
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
	 * 训练记录
	 */
	public String myrecords() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false ) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			map.put("lefttitle", "训练记录");
			return Utils.returnServlet(getRequest(),getResponse(), map, "/page/info.jsp"); 
		}
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest()).getAttribute("user");
		
		String content = Utils.getParam(getRequest(), "content");
		if (StringUtils.isNotEmpty(content)) {
			KlTrainningRecord r = new KlTrainningRecord();
			r.setUserid(user.getId());
			r.setUsername(user.getUsername());
			r.setPhoto(user.getPhoto());
			r.setContent(content);
			r.setCreatetimelong(System.currentTimeMillis());
			r.setCreateuser(user.getId());
			r.setAddition(Utils.getParam(getRequest(), "photos"));
		
			this.klTrainningRecordManager.save(r);
			
			/*
			String photos = Utils.getParam(getRequest(), "photos");
			if (StringUtils.isNotEmpty(photos)) {
				String[] ss = photos.split(",");
				for (int i = 0; i < ss.length; i ++) {
					CmsCommonPhoto p = new CmsCommonPhoto();
					p.setTargetId(this.klTrainningRecord.getId());
					p.setTargetType(Utils.TYPE_TARGET_TRANNINGRECORD);
					p.setCreatetimelong(System.currentTimeMillis());
					p.setResource(ss[i]);
					p.set
				}
			}
			*/
		}
		

		KlTrainningRecordQuery query = new KlTrainningRecordQuery();
		query.setSortColumns("id desc");
		Logger logger = Logger.getLogger(getClass());
		logger.info("111111111ddddd:" + user.getId());
		query.setUserid(user.getId());
		
		Page page = klTrainningRecordManager.findPage(query);
		map.put("page", page);

		return Utils.returnServlet(getRequest(), getResponse(), map, "/page/record/myrecords.jsp", 1, "ok");
	}
	
	
	

}


