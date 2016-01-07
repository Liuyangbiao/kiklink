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
import com.yebucuo.util.ImageUtils;
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
 * @author wangdapeng
 * @version 1.0
 * @since 1.0
 */

public class CmsGroupAction extends BaseStruts2Action implements Preparable,
		ModelDriven {
	// 默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null;

	// forward paths
	protected static final String QUERY_JSP = "/kailian/CmsGroup/query.jsp";
	protected static final String LIST_JSP = "/kailian/CmsGroup/list.jsp";
	protected static final String CREATE_JSP = "/kailian/CmsGroup/create.jsp";
	protected static final String EDIT_JSP = "/kailian/CmsGroup/edit.jsp";
	protected static final String SHOW_JSP = "/kailian/CmsGroup/show.jsp";
	protected static final String OK_JSP = "/admin/admincommon/updateok.jsp";
	// redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/kailian/CmsGroup/list.do";

	private ICmsGroupManager cmsGroupManager;
	private ICmsGroupUserManager cmsGroupUserManager;
	private ICmsGroupTopicManager cmsGroupTopicManager;
	private ICmsGroupCommentetcManager cmsGroupCommentetcManager;
	private ICmsSurveyManager cmsSurveyManager;
	private ICmsUserInfoManager cmsUserInfoManager;
	private ICmsSurveyOptionManager cmsSurveyOptionManager;
	private ICmsSurveyRecordManager cmsSurveyRecordManager;

	public ICmsUserInfoManager getCmsUserInfoManager() {
		return cmsUserInfoManager;
	}

	public void setCmsUserInfoManager(ICmsUserInfoManager cmsUserInfoManager) {
		this.cmsUserInfoManager = cmsUserInfoManager;
	}

	public ICmsSurveyManager getCmsSurveyManager() {
		return cmsSurveyManager;
	}

	public void setCmsSurveyManager(ICmsSurveyManager cmsSurveyManager) {
		this.cmsSurveyManager = cmsSurveyManager;
	}

	public ICmsSurveyOptionManager getCmsSurveyOptionManager() {
		return cmsSurveyOptionManager;
	}

	public void setCmsSurveyOptionManager(
			ICmsSurveyOptionManager cmsSurveyOptionManager) {
		this.cmsSurveyOptionManager = cmsSurveyOptionManager;
	}

	public ICmsSurveyRecordManager getCmsSurveyRecordManager() {
		return cmsSurveyRecordManager;
	}

	public void setCmsSurveyRecordManager(
			ICmsSurveyRecordManager cmsSurveyRecordManager) {
		this.cmsSurveyRecordManager = cmsSurveyRecordManager;
	}

	public void setCmsGroupUserManager(ICmsGroupUserManager cmsGroupUserManager) {
		this.cmsGroupUserManager = cmsGroupUserManager;
	}

	public void setCmsGroupTopicManager(
			ICmsGroupTopicManager cmsGroupTopicManager) {
		this.cmsGroupTopicManager = cmsGroupTopicManager;
	}

	public void setCmsGroupCommentetcManager(
			ICmsGroupCommentetcManager cmsGroupCommentetcManager) {
		this.cmsGroupCommentetcManager = cmsGroupCommentetcManager;
	}

	private CmsGroup cmsGroup;
	java.lang.Long id = null;
	private String[] items;
	private String param;

	public void setParam(String param) {
		this.param = param;
	}

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			cmsGroup = new CmsGroup();
		} else {
			cmsGroup = (CmsGroup) cmsGroupManager.getById(id);
		}
	}

	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setCmsGroupManager(ICmsGroupManager manager) {
		this.cmsGroupManager = manager;
	}

	public Object getModel() {
		return cmsGroup;
	}

	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}

	/** 执行搜索 */
	public String list() {
		CmsGroupQuery query = newQuery(CmsGroupQuery.class,
				DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsGroupManager.findPage(query);
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
		CmsGroupQuery query = newQuery(CmsGroupQuery.class,
				DEFAULT_SORT_COLUMNS);
		String sort = this.getRequest().getParameter("sort");
		if (StringUtils.isNotEmpty(sort))
			query.setSortColumns(sort);
		Page page = cmsGroupManager.findPage(query);
		Map map = new HashMap();
		map.put("total", page.getTotalCount());
		map.put("rows", page.getResult());
		return writeAjaxResponse(Json.toJson(map));
	}

	/** 查看对象 */
	public String show() {
		// cmsGroup.setCreateUser(yebucuoKgAdminuserManager2.getById(cmsGroup.getModifyuser()));

		return SHOW_JSP;
	}

	/** 进入新增页面 */
	public String create() {
		return CREATE_JSP;
	}

	/** 保存新增对象 */
	public String save() {
		// cmsGroup.setCreateTime(new Date());
		// cmsGroup.setDeleted("0");

		long theuserid = Utils.getSessionUserId(getRequest());
		if (theuserid >= 0) {
			cmsGroup.setModifyuser(theuserid);
		}
		cmsGroup.setCreatetimelong(System.currentTimeMillis());
		cmsGroup.setModifytimelong(System.currentTimeMillis());
		cmsGroup.setStatus(0);

		cmsGroupManager.save(cmsGroup);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsGroup);
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
			cmsGroup.setModifyuser(theuserid);
		}
		cmsGroup.setModifytimelong(System.currentTimeMillis());

		cmsGroupManager.update(this.cmsGroup);

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("obj", cmsGroup);
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
						cmsGroup = cmsGroupManager.getById(Long.parseLong(id));
						if (cmsGroup != null) {
							// cmsGroup.setStatus(-1);
							// cmsGroupManager.update(cmsGroup);
							cmsGroupManager.removeById(cmsGroup.getId());
						}
					}
				}
				// cmsGroupManager.removeById(Long.parseLong(id));
			}

		if ("ajax".equalsIgnoreCase(Utils.getParam(getRequest(), "ajax"))) {
			Map map = new HashMap();
			map.put("re", 1);
			return writeAjaxResponse(Json.toJson(map));
		} else {
			return LIST_ACTION;
		}
	}

	// /////////////////////////////////////////////////////////////////////
	/*
	 * 小组首页
	 */
	// public String index() {
	// Map map = new HashMap();
	// List list = this.cmsGroupManager.queryTop(5, "flag desc");
	// map.put("list", list);
	//
	// CmsGroupTopicQuery query = new CmsGroupTopicQuery();
	// query.setSortColumns("id desc");
	// Page page = this.cmsGroupTopicManager.findPage(query);
	// /*
	// * CmsGroupQuery query =
	// * newQuery(CmsGroupQuery.class,DEFAULT_SORT_COLUMNS); String sort =
	// * this.getRequest().getParameter("sort"); if
	// * (StringUtils.isNotEmpty(sort)) query.setSortColumns(sort); Page page
	// * = cmsGroupManager.findPage(query);
	// */
	// map.put("page", page);
	// return Utils.returnServlet(getRequest(), getResponse(), map,
	// "/group/index.jsp", 1, "ok");
	//
	// }

	/*
	 * 我的小组话题
	 */
	public String myGroupTopic() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/group/myindex.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		CmsGroupTopicQuery q = new CmsGroupTopicQuery();
		q.setMyid(user.getId());
		q.setSortColumns("id desc");
		// q.setPageNumber(Utils.getIntParam(this.getRequest(), "pageNumber"));
		q.setPageNumber(Utils.getPageno(getRequest()));
		Page p = this.cmsGroupTopicManager.findPage(q);
		map.put("page", p);

		List list = this.cmsGroupManager.queryTop(5, "flag desc");
		map.put("list", list);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/group/myindex.jsp", 1, "ok");
	}

	/*
	 * 小组话题
	 */
	public String getTopic() {
		Map map = new HashMap();
		CmsGroupTopic t = this.cmsGroupTopicManager.getById(Utils.getLongParam(
				getRequest(), "topicid"));
		if (t == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/group/topic.jsp", -1, "未找到话题");
		}

		CmsGroupTopicQuery tq = new CmsGroupTopicQuery();
		tq.setGroupid(t.getGroupid());
		Page p = this.cmsGroupTopicManager.findPage(tq);
		map.put("newtopics", p.getResult());

		CmsGroup g = this.cmsGroupManager.getById(t.getGroupid());
		map.put("group", g);

		CmsGroupCommentetcQuery cq = new CmsGroupCommentetcQuery();
		cq.setTopicid(t.getId());
		cq.setSortColumns("id desc");
		// cq.setPageNumber(Utils.getIntParam(getRequest(), "pageNumber"));
		cq.setPageNumber(Utils.getPageno(getRequest()));
		cq.setType(Utils.TYPE_ETC_COMMENT);
		Page p1 = this.cmsGroupCommentetcManager.findPage(cq);
		map.put("comments", p1);
		map.put("topic", t);

		// 如果是调查
		if (t.getExtInt2() != null && t.getExtInt2() != 0) {
			CmsSurveyQuery sq = new CmsSurveyQuery();
			sq.setSurveyId(t.getId());
			Page p2 = this.cmsSurveyManager.findPage(sq);
			if (p2.getTotalCount() > 0) {
				CmsSurvey s = (CmsSurvey) p2.getResult().get(0);

				CmsSurveyOptionQuery oq = new CmsSurveyOptionQuery();
				oq.setSurveyId(s.getId());
				Page p3 = this.cmsSurveyOptionManager.findPage(oq);
				map.put("options", p3.getResult());

			}

		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/topic.jsp", 1, "ok");

	}

	/*
	 * 回复话题
	 */
	public String replyTopic() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "topicid,content,sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp");
		}
		
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
//		if (user == null) {
//			return Utils.returnServlet(getRequest(), getResponse(), map,
//					"/page/user/prelogin.jsp", -1, "您没有登录");
//		}


		CmsGroupTopic t = this.cmsGroupTopicManager.getById(Utils.getLongParam(
				getRequest(), "topicid"));
		this.cmsGroup = this.cmsGroupManager.getById(t.getGroupid());
//		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
//				.getAttribute("user");

		CmsGroupUserQuery guq = new CmsGroupUserQuery();
		guq.setUserid(user.getId());
		guq.setGroupid(this.cmsGroup.getId());
		Page pp = this.cmsGroupUserManager.findPage(guq);
		if (pp.getTotalCount() <= 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "您还没加入该小组呢");
		}
		CmsGroupUser gu = (CmsGroupUser) pp.getResult().get(0);
		if (gu.getStatus() != null && gu.getStatus() < 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "您被禁言"); 
		}
		
		if (t != null) {
			t.setReplyCount(t.getReplyCount() + 1);
			this.cmsGroupTopicManager.update(t);

			CmsGroup g = this.cmsGroup;

			if (g != null) {
				g.setReplyCount(g.getReplyCount() + 1);
				this.cmsGroupManager.update(g);
			}
		}

		CmsGroupCommentetc c = new CmsGroupCommentetc();
		c.setTopicid(Utils.getLongParam(getRequest(), "topicid"));
		c.setTopicTitle(Utils.getParam(getRequest(), "topictitle"));
		c.setUserid(user.getId());
		c.setUserName(user.getUsername());
		c.setUserPhoto(user.getPhoto());
		c.setCreatetimelong(System.currentTimeMillis());
		c.setType(Utils.TYPE_ETC_COMMENT);
		c.setContent(Utils.getParam(getRequest(), "content"));
		this.cmsGroupCommentetcManager.save(c);

		user = this.cmsUserInfoManager.getById(user.getId());
		if (user.getReplyCount() == null)
			user.setReplyCount(1);
		else
			user.setReplyCount(user.getReplyCount() + 1);
		this.cmsUserInfoManager.update(user);
		map.put("user", user);

		return Utils.returnServlet(getRequest(), this.getResponse(), map,
				"!/kailian/CmsGroup/getTopic.do?topicid=" + c.getTopicid(), 1,
				"ok");

	}

	/*
	 * 我的主页
	 */
	public String userIndex() {
		Map map = new HashMap();

		CmsGroupQuery q = new CmsGroupQuery();
		q.setType(2);
		long ct = this.cmsGroupManager.queryCount(q);
		List list1 = this.cmsGroupManager.queryTop(q);
		this.getRequest().setAttribute("ct", ct);
		this.getRequest().setAttribute("tl", list1);
		CmsUserInfo user;

		long userid = Utils.getLongParam(getRequest(), "userid");
		if (userid <= 0) {
			map = Utils.checkParamerts(getRequest(), "sessionuser");
			if (map.isEmpty() == false) {
				map.put("re", -1);
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/group/userindex.jsp");
			}
			user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
					.getAttribute("user");
			userid = user.getId();
			user = this.cmsUserInfoManager.getById(userid);

			// 常去小组

		} else {
			user = this.cmsUserInfoManager.getById(userid);
			// 小组信息
			CmsGroupUserQuery guq = new CmsGroupUserQuery();
			guq.setUserid(userid);
			guq.setGroupid(Utils.getLongParam(getRequest(), "groupid"));
			List l = this.cmsGroupUserManager.queryTop(guq);
			if (l.size() > 0)
				map.put("groupuser", l.get(0));
		}

		// CmsGroupUserQuery gq = new CmsGroupUserQuery();
		// gq.setUserid(userid);
		// Page p1 = this.cmsGroupUserManager.findPage(gq);
		CmsGroupQuery gq = new CmsGroupQuery();
		gq.setInuserid(user.getId());
		Page p1 = this.cmsGroupManager.findPage(gq);

		CmsGroupTopicQuery tq = new CmsGroupTopicQuery();
		tq.setMylike(userid);
		Page p2 = this.cmsGroupTopicManager.findPage(tq);

		tq = new CmsGroupTopicQuery();
		tq.setMyid(null);
		tq.setMyreply(userid);
		Page p3 = this.cmsGroupTopicManager.findPage(tq);

		tq = new CmsGroupTopicQuery();
		tq.setMyreply(null);
		tq.setMysuggest(userid);
		Page p4 = this.cmsGroupTopicManager.findPage(tq);

		tq = new CmsGroupTopicQuery();
		tq.setMysuggest(null);
		tq.setUserid(userid);
		Page p5 = this.cmsGroupTopicManager.findPage(tq);

		map.put("groups", p1.getResult());
		map.put("likes", p2.getResult());
		map.put("replys", p3.getResult());
		map.put("suggests", p4.getResult());
		map.put("posts", p5.getResult());
		map.put("user", user);
		map.put("sessionuser",
				Utils.getSessionByRequest(getRequest()).getAttribute("sessionuser"));

		List list = this.cmsGroupManager.queryTop(5, "flag desc");
		map.put("list", list);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/userindex.jsp", 1, "ok");
	}

	/*
	 * 用户的话题
	 */
	public String userTopic() {
		Map map = new HashMap();
		long userid = Utils.getLongParam(getRequest(), "userid");
		String type = Utils.getParam(getRequest(), "type1");
		CmsGroupTopicQuery tq = new CmsGroupTopicQuery();
		tq.setPageNumber(Utils.getPageno(getRequest()));

		if ("suggest".equalsIgnoreCase(type))
			tq.setMysuggest(userid);
		else if ("like".equalsIgnoreCase(type))
			tq.setMylike(userid);
		else if ("reply".equalsIgnoreCase(type))
			tq.setMyreply(userid);
		else
			tq.setUserid(userid);

		Page page = this.cmsGroupTopicManager.findPage(tq);
		map.put("page", page);

		map.put("user", this.cmsUserInfoManager.getById(userid));

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/topics.jsp", 1, "ok");
	}

	/*
	 * 小组主页
	 */
	public String groupIndex() {
		Map map = new HashMap();
		if (this.cmsGroup == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/group/groupindex.jsp", -1, "小组不存在");
		}

		map.put("group", this.cmsGroup);

		// 新用户
		CmsGroupUserQuery uq = new CmsGroupUserQuery();
		uq.setGroupid(Utils.getLongParam(getRequest(), "id"));
		// uq.setGroupid(id);
		uq.setSortColumns("id desc");
		Page p = this.cmsGroupUserManager.findPage(uq);
		map.put("newusers", p.getResult());

		// 话题
		CmsGroupTopicQuery tq = new CmsGroupTopicQuery();
		tq.setGroupid(id);
		tq.setSortColumns("extInt1 desc,id desc");
		tq.setPageNumber(Utils.getPageno(getRequest()));
		Page p2 = this.cmsGroupTopicManager.findPage(tq);
		map.put("topics", p2);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/groupindex.jsp", 1, "ok");
	}

	/*
	 * 加入小组
	 */
	public String joinGroup() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/group/pretopic.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		CmsGroupUserQuery guq = new CmsGroupUserQuery();
		guq.setUserid(user.getId());
		guq.setGroupid(this.cmsGroup.getId());
		Page pp = this.cmsGroupUserManager.findPage(guq);
		if (pp.getTotalCount() > 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/user/login.jsp", 1, "您之前已经加入该小组");
		}

		CmsGroupUser gu = new CmsGroupUser();
		gu.setUserid(user.getId());
		gu.setGroupid(this.cmsGroup.getId());
		gu.setGroupname(this.cmsGroup.getName());
		gu.setUsername(user.getUsername());
		gu.setUserlevel(Utils.LEVEL_ORG_USER);
		gu.setCreatetimelong(System.currentTimeMillis());
		this.cmsGroupUserManager.save(gu);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/user/login.jsp", 1, "加入成功");
	}

	/*
	 * 退出小组
	 */
	public String cannelGroup() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/group/pretopic.jsp");
		}
		if (this.cmsGroup == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "小组不存在");

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		CmsGroupUserQuery guq = new CmsGroupUserQuery();
		guq.setUserid(user.getId());
		guq.setGroupid(this.cmsGroup.getId());
		Page pp = this.cmsGroupUserManager.findPage(guq);
		if (pp.getTotalCount() <= 0) {

		} else {
			for (int i = 0; i < pp.getResult().size(); i++) {
				CmsGroupUser gu = (CmsGroupUser) pp.getResult().get(i);
				if (gu.getUserlevel().intValue() == Utils.LEVEL_ORG_CREATOR
						|| gu.getUserlevel().intValue() == Utils.LEVEL_ORG_ADMIN)
					return Utils.returnServlet(getRequest(), getResponse(),
							map, "/page/info2.jsp", -1, "高级用户无法退组");
				else
					this.cmsGroupUserManager.removeById(gu.getId());
			}
		}

		return Utils.returnServlet(this.getRequest(), getResponse(), map,
				"/page/info2.jsp", 1, "操作成功");
	}

	/*
	 * 小组成员
	 */
	public String groupUsers() {
		Map map = new HashMap();
		if (this.cmsGroup == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/group/groupusers.jsp", -1, "小组不存在");
		}
		map.put("group", this.cmsGroup);
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		CmsGroupUserQuery uq = new CmsGroupUserQuery();
		uq.setGroupid(id);
		uq.setUserlevel(Utils.LEVEL_ORG_CREATOR);
		Page p = this.cmsGroupUserManager.findPage(uq);
		map.put("creators", p.getResult());

		uq.setUserlevel(Utils.LEVEL_ORG_ADMIN);
		p = this.cmsGroupUserManager.findPage(uq);
		map.put("admins", p.getResult());

		uq.setUserlevel(Utils.LEVEL_ORG_USER);
		uq.setPageNumber(Utils.getPageno(getRequest()));
		p = this.cmsGroupUserManager.findPage(uq);
		
		if (user != null) {
		uq.setUserlevel(null);
		uq.setUserid(user.getId());
		uq.setGroupid(this.cmsGroup.getId());
		List list = this.cmsGroupUserManager.queryTop(uq);
		if (list.size() > 0)
			map.put("groupuser", list.get(0));
		}

		map.put("users", p);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/groupusers.jsp", 1, "ok");
	}

	/*
	 * 修改组员权限
	 */
	public String changeGroupUserLevel() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			map.put("word", "您没有登录");
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp");
		}
		
		if (this.cmsGroup == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "小组不存在");
		
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
	
		CmsGroupUserQuery uq = new CmsGroupUserQuery();
		uq.setUserid(Utils.getLongParam(getRequest(), "userid"));
		uq.setGroupid(this.cmsGroup.getId());
		List list = this.cmsGroupUserManager.queryTop(uq);
		if (list == null || list.size() < 1) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info2.jsp", -2, "用户不存在");
		}
		CmsGroupUser bechange = (CmsGroupUser) list.get(0);
		
		
		uq.setUserid(user.getId());
		list = this.cmsGroupUserManager.queryTop(uq);
		if (list == null || list.size() < 1) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info2.jsp", -2, "您没有权限");
		}
		CmsGroupUser admin = (CmsGroupUser) list.get(0);
	
		
		int tolevel = Utils.getIntParam(getRequest(), "tolevel");
		if (tolevel >= admin.getUserlevel()) {
			return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info2.jsp", -2, "您没有权限");
		}
		bechange.setUserlevel(tolevel);
		if (Utils.getIntParam(getRequest(), "jinyan") > 0)
			bechange.setStatus(-1);
		else
			bechange.setStatus(1);
		
		this.cmsGroupUserManager.update(bechange);
		
		return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/CmsGroup/groupUsers.do?id=" + this.id, 1, "ok");
	}
	
	
	/*
	 * 发布话题准备
	 */
	public String preTopic() {
		Map map = new HashMap();
		if (this.cmsGroup == null
				|| this.cmsGroup.getStatus() <= Utils.STATUS_GROUP_NOSPEAKING) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "小组不存在或被禁言");
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		if (user == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/user/prelogin.jsp", -1, "您没有登录");
		}

		CmsGroupUserQuery guq = new CmsGroupUserQuery();
		guq.setUserid(user.getId());
		guq.setGroupid(this.cmsGroup.getId());
		Page pp = this.cmsGroupUserManager.findPage(guq);
		if (pp.getTotalCount() <= 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "您还没加入该小组呢");
		}
		CmsGroupUser groupuser = (CmsGroupUser) pp.getResult().get(0);
		map.put("groupuser", pp.getResult().get(0));

		map.put("group", this.cmsGroup);

		long topicid = Utils.getLongParam(getRequest(), "topicid");
		if (topicid > 0) {
			CmsGroupTopic topic = this.cmsGroupTopicManager.getById(topicid);
			if (topic != null) {
				if (StringUtils.isEmpty(Utils.getParam(getRequest(), "action")) && topic.getUserid().longValue() != user.getId().longValue()) {
					return Utils.returnServlet(getRequest(), getResponse(),
							map, "/page/info2.jsp", -2, "没有权限");
				} else {
					map.put("topic", topic);
				}
			}
	
			//删除
			if ("del".equalsIgnoreCase(Utils.getParam(getRequest(), "action"))) {
				if (topic.getUserid().longValue() != user.getId().longValue() && groupuser.getUserlevel().intValue() < 5) {
					//return Utils.returnServlet("/page/info2.jsp", response, map, url, re, word)
					return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info2.jsp", -1, "您没有权限");
				}
				
				this.cmsGroupTopicManager.removeById(topic.getId());
				return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info2.jsp", 1, "话题已删除");
			}
			
			//置顶
			if ("zhiding".equalsIgnoreCase(Utils.getParam(getRequest(), "action"))) {
				if ( groupuser.getUserlevel().intValue() < 5) {
					//return Utils.returnServlet("/page/info2.jsp", response, map, url, re, word)
					return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info2.jsp", -1, "您没有权限");
				}
				
				topic.setExtInt1(10);
				this.cmsGroupTopicManager.update(topic);
				return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/CmsGroup/groupIndex.do?id=" + topic.getGroupid(), 1, "ok");
			}
			
			if ("quxiaozhiding".equalsIgnoreCase(Utils.getParam(getRequest(), "action"))) {
				if ( groupuser.getUserlevel().intValue() < 5) {
					//return Utils.returnServlet("/page/info2.jsp", response, map, url, re, word)
					return Utils.returnServlet(getRequest(), getResponse(), map, "/page/info2.jsp", -1, "您没有权限");
				}
				
				topic.setExtInt1(null);
				this.cmsGroupTopicManager.update(topic);
				return Utils.returnServlet(getRequest(), getResponse(), map, "!/kailian/CmsGroup/groupIndex.do?id=" + topic.getGroupid(), 1, "ok");
			}
		}
		
		
	
		
		

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/pretopic.jsp", 1, "ok");
	}

	/*
	 * 发布话题
	 */
	public String pubTopic() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "groupid,sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp");
		}

		if (StringUtils.isEmpty(Utils.getParam(getRequest(), "title")))
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "请输入标题");
		if (StringUtils.isEmpty(Utils.getParam(getRequest(), "content")))
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "请输入内容");

		this.cmsGroup = this.cmsGroupManager.getById(Utils.getLongParam(
				getRequest(), "groupid"));
		if (this.cmsGroup == null
				|| this.cmsGroup.getStatus() <= Utils.STATUS_GROUP_NOSPEAKING) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "小组不存在或被禁言");
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		CmsGroupUserQuery guq = new CmsGroupUserQuery();
		guq.setUserid(user.getId());
		guq.setGroupid(this.cmsGroup.getId());
		Page pp = this.cmsGroupUserManager.findPage(guq);
		if (pp.getTotalCount() <= 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "您还没加入该小组呢");
		}
		CmsGroupUser gu = (CmsGroupUser) pp.getResult().get(0);
		if (gu.getStatus() != null && gu.getStatus() < 0) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp", -1, "您被禁言"); 
		}
		

		long topicid = Utils.getLongParam(getRequest(), "topicid");
		if (topicid <= 0) {
			CmsGroupTopic t = new CmsGroupTopic();
			t.setFlowerCount(0);
			t.setEggCount(0);
			t.setReplyCount(0);
			t.setTitle(Utils.getParam(getRequest(), "title"));
			t.setContent(Utils.getParam(getRequest(), "content"));
			t.setGroupid(Utils.getLongParam(getRequest(), "groupid"));
			t.setUserid(user.getId());
			t.setExt1(user.getUsername());
			t.setExt2(this.cmsGroup.getName());
			t.setExtInt3(0);
			t.setCreatetimelong(System.currentTimeMillis());
			
			String xuanxiang = Utils.getParam(getRequest(), "xuanxiang");
			if (StringUtils.isNotEmpty(xuanxiang)) 
				t.setExtInt2(1);
			
			this.cmsGroupTopicManager.save(t);

			user = this.cmsUserInfoManager.getById(user.getId());
			if (user.getCreateTopicCount() == null)
				user.setCreateTopicCount(1);
			else
				user.setCreateTopicCount(user.getCreateTopicCount() + 1);
			this.cmsUserInfoManager.update(user);

			// 这里添加照片

			this.cmsGroup.setTopicCount(this.cmsGroup.getTopicCount() + 1);
			this.cmsGroupManager.update(this.cmsGroup);
			
			
			
			//调查
			//String xuanxiang = Utils.getParam(getRequest(), "xuanxiang");
			if (StringUtils.isNotEmpty(xuanxiang)) {
				String[] ss = xuanxiang.split("\r\n");
				if (ss.length > 0) {
					CmsSurvey cs = new CmsSurvey();
					cs.setSurveyId(t.getId());
					cs.setSurveyType(Utils.getIntParam(getRequest(), "stype"));
					cs.setCnname(t.getTitle());
					cs.setStatus(1);
					this.cmsSurveyManager.save(cs);
					for (int i = 0; i < ss.length;i ++) {
						CmsSurveyOption o = new CmsSurveyOption();
						o.setSurveyId(cs.getId());
						o.setOptionName(ss[i]);
						o.setStatus(0);		//数量
						this.cmsSurveyOptionManager.save(o);
					}
				
//					t.setExtInt2(1);
//					this.cmsGroupTopicManager.update(t);
				}
			}
			

			return Utils.returnServlet(
					getRequest(),
					getResponse(),
					map,
					"!/kailian/CmsGroup/groupIndex.do?id="
							+ this.cmsGroup.getId(), 1, "话题发布成功");
		} else {
			CmsGroupTopic topic = this.cmsGroupTopicManager.getById(topicid);
			if (topic == null
					|| topic.getUserid().longValue() != user.getId()
							.longValue())
				return Utils.returnServlet(getRequest(), getResponse(), map,
						"/page/info2.jsp", -1, "话题不存在");

			topic.setTitle(Utils.getParam(getRequest(), "title"));
			topic.setContent(Utils.getParam(getRequest(), "content"));
			topic.setModifytimelong(System.currentTimeMillis());
			topic.setModifyuser(user.getId());
			topic.setExtInt2(Utils.getIntParam(this.getRequest(), "open"));
			
			this.cmsGroupTopicManager.update(topic);
			return Utils.returnServlet(
					getRequest(),
					getResponse(),
					map,
					"!/kailian/CmsGroup/groupIndex.do?id="
							+ this.cmsGroup.getId(), 1, "话题修改成功");
		}
		/*
		 * // 调查 boolean survay = false; for (int i = 1; i <= 5; i++) { if
		 * (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "option" + i)))
		 * { survay = true; break; } } if (survay == false) {
		 * t.setType(Utils.TYPE_TOPIC_NORMAL);
		 * this.cmsGroupTopicManager.save(t); } else {
		 * t.setType(Utils.TYPE_TOPIC_SURVAY);
		 * this.cmsGroupTopicManager.save(t);
		 * 
		 * CmsSurvey s = new CmsSurvey();
		 * s.setSurveyType(Utils.TYPE_TOPIC_SURVAY);
		 * 
		 * s.setCnname("小组调查"); s.setSurveyId(t.getId());
		 * this.cmsSurveyManager.save(s);
		 * 
		 * for (int i = 0; i < 5; i++) { String ss =
		 * Utils.getParam(getRequest(), "option" + i); if
		 * (StringUtils.isNotEmpty(ss)) { CmsSurveyOption o = new
		 * CmsSurveyOption(); o.setSurveyId(s.getId()); o.setOptionName(ss);
		 * this.cmsSurveyOptionManager.save(o); } } }
		 */

	}

	/*
	 * 选择了一个选项
	 */
	public String chooseOption() {
		Map map = Utils.checkParamerts(getRequest(), "sessionuser,optionId,topicid");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"!/kailian/CmsUserInfo/prelogin.do");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		CmsGroupTopic topic = this.cmsGroupTopicManager.getById(Utils.getLongParam(getRequest(), "topicid"));
		
		CmsSurveyOption o = this.cmsSurveyOptionManager.getById(Utils
				.getLongParam(getRequest(), "optionId"));
		if (o != null) {
			CmsSurveyRecordQuery q = new CmsSurveyRecordQuery();
			q.setCreateuser(user.getId());
			q.setOptionId(topic.getId());
			long ct = this.cmsSurveyRecordManager.queryCount(q);
			if (ct > 0) {
				return Utils.returnServlet(
						getRequest(),
						getResponse(),
						map,
						"!/kailian/CmsGroup/getTopic.do?topicid="
								+ Utils.getParam(getRequest(), "topicid"), -2, "请勿重复投票");
			}
			
			
			o.setStatus(o.getStatus() + 1);
//			if (StringUtils.isEmpty(o.getAddition()))
//				o.setAddition("1");
//			else
//				o.setAddition("" + (1 + Integer.parseInt(o.getAddition())));

			this.cmsSurveyOptionManager.update(o);
			
			CmsSurveyRecord r = new CmsSurveyRecord();
			r.setCreateuser(user.getId());
			r.setOptionId(topic.getId());//临时的
			r.setCreatetimelong(System.currentTimeMillis());
			this.cmsSurveyRecordManager.save(r);
		}
		
		if (topic != null)
		{
			if (topic.getExtInt3() == null)
				topic.setExtInt3(1);
			else
				topic.setExtInt3(topic.getExtInt3() + 1);
			
		}

		return Utils.returnServlet(
				getRequest(),
				getResponse(),
				map,
				"!/kailian/CmsGroup/getTopic.do?topicid="
						+ Utils.getParam(getRequest(), "topicid"), 1, "投票成功");
	}

	/*
	 * 新建小组准备
	 */
	public String preNewGroup() {
		Map map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"!/kailian/CmsUserInfo/prelogin.do");
		}
		List list = this.cmsGroupManager.queryTop(5, "flag desc");
		map.put("list", list);
		// this.getRequest().setAttribute("map", map);
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/create.jsp", 1, "ok");
	}

	/*
	 * 修改小组
	 */
	public String preEdit() {
		Map map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"!/kailian/CmsUserInfo/prelogin.do");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		if (this.cmsGroup == null)
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "小组不存在");
		if (this.cmsGroup.getCreateuser().longValue() != user.getId()
				.longValue())
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "只有创建者可以编辑小组内容");

		map.put("group", this.cmsGroup);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/create.jsp", 1, "ok");
	}

	/*
	 * 新建小组
	 */
	public String newGroup() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(),
				"name,type,content,photo,sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/group/create.jsp");
		}

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");

		if (Utils.getLongParam(getRequest(), "id") > 0
				&& this.cmsGroup != null
				&& this.cmsGroup.getCreateuser().longValue() != user.getId()
						.longValue())
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info.jsp", -1, "只有创建者可以编辑小组内容");

		this.cmsGroup.setId(Utils.getLongParam(getRequest(), "id"));
		this.cmsGroup.setCreateuser(user.getId());
		this.cmsGroup.setUserCount(1);
		this.cmsGroup.setTopicCount(0);
		this.cmsGroup.setPhoto(Utils.getParam(getRequest(), "photo"));
		this.cmsGroup.setReplyCount(0);
		this.cmsGroup.setStatus(Utils.STATUS_GROUP_OK);
		this.cmsGroup.setCreatetimelong(System.currentTimeMillis());
		this.cmsGroup.setExt1(user.getUsername());
		
		if (Utils.getLongParam(getRequest(), "id") > 0)
			this.cmsGroupManager.update(cmsGroup);
		else {
			this.cmsGroup.setId(null);
			this.cmsGroupManager.save(cmsGroup);
		}
		/*
		 * String savePath =
		 * Utils.getSessionByRequest(getRequest()).getServletContext().getRealPath("/") +
		 * ""; try { String t =
		 * ImageUtils.getFormat(klSellerProduct.getPhoto());
		 * ImageUtils.zoomAndScale(savePath + klSellerProduct.getPhoto(),
		 * savePath+klSellerProduct.getPhoto(), 180, 120); } catch (Exception e)
		 * { // TODO Auto-generated catch block e.printStackTrace(); }
		 */
		if (StringUtils.isNotEmpty(this.cmsGroup.getPhoto())) {
			String savePath = Utils.getSessionByRequest(getRequest())
					.getServletContext().getRealPath("/")
					+ "";
			String t = ImageUtils.getFormat(cmsGroup.getPhoto());
			ImageUtils.zoomAndScale(savePath + cmsGroup.getPhoto(), savePath
					+ "/attached/group/" + cmsGroup.getId() + ".jpg", 60, 60);
		}

		// 加入权限
		if (Utils.getLongParam(getRequest(), "id") < 0) {
			CmsGroupUser gu = this.cmsGroupManager.addUserToGroup(cmsGroup,
					user, Utils.LEVEL_ORG_CREATOR);
			this.cmsGroupUserManager.save(gu);
		}

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/group/create.jsp", 1, "小组创建成功 ");

	}

	/*
	 * 顶话题
	 */
	public String getding() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/page/info2.jsp");
		}
		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		if (Utils.getLongParam(getRequest(), "topicid") > 0) {
			CmsGroupTopic t = this.cmsGroupTopicManager.getById(Utils
					.getLongParam(getRequest(), "topicid"));
			if (t == null) {
				map.put("re", -1);
				map.put("word", "话题不存在");
			}

			CmsGroupCommentetcQuery q = new CmsGroupCommentetcQuery();
			q.setUserid(user.getId());
			q.setTopicid(t.getId());
			List list = this.cmsGroupCommentetcManager.queryTop(q);
			for (int i = 0; i < list.size(); i++) {
				CmsGroupCommentetc c = (CmsGroupCommentetc) list.get(i);
				map.put("type" + c.getType(), "1");
			}

			// 是否在小组中
			CmsGroupUserQuery uq = new CmsGroupUserQuery();
			uq.setUserid(user.getId());
			uq.setGroupid(t.getGroupid());
			list = this.cmsGroupUserManager.queryTop(uq);
			if (list != null && list.size() > 0) {
				map.put("groupuser", (CmsGroupUser)list.get(0));
			}

			long count = this.cmsGroupUserManager.queryCount(uq);
			map.put("in", count);

			if (t.getUserid().longValue() == user.getId().longValue()) {
				map.put("mine", "1");
			}
		}
		if (Utils.getLongParam(getRequest(), "groupid") > 0) {
			// 是否在小组中
			CmsGroupUserQuery uq = new CmsGroupUserQuery();
			uq.setUserid(user.getId());
			uq.setGroupid(Utils.getLongParam(getRequest(), "groupid"));
			List list = this.cmsGroupUserManager.queryTop(uq);
			if (list != null && list.size() > 0) {
				map.put("groupuser", (CmsGroupUser)list.get(0));
			}
			long count = this.cmsGroupUserManager.queryCount(uq);
			map.put("in", count);
		}
		if (StringUtils.isNotEmpty(Utils.getParam(getRequest(), "joined"))) {
			// 已加入小组
			CmsGroupUserQuery q = new CmsGroupUserQuery();
			q.setUserid(user.getId());
			q.setPageSize(333333);
			List list = this.cmsGroupUserManager.queryTop(q);
			map.put("joined", list);
		}

		map.put("userid", user.getId());
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info2.jsp", 1, "ok");
	}

	public String ding() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "sessionuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/user/login.jsp");
		}

		CmsGroupTopic t = this.cmsGroupTopicManager.getById(Utils.getLongParam(
				getRequest(), "topicid"));
		if (t == null) {
			map.put("re", -1);
			map.put("word", "话题不存在");
		}

		int type = Utils.getIntParam(getRequest(), "type");
		if (type <= 0)
			type = Utils.TYPE_ETC_FLOWER;

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		CmsGroupCommentetcQuery q = new CmsGroupCommentetcQuery();
		q.setUserid(user.getId());
		q.setType(type);
		List list = this.cmsGroupCommentetcManager.queryTop(q);

		CmsGroupCommentetc c = new CmsGroupCommentetc();
		c.setUserid(user.getId());
		c.setGroupid(t.getGroupid());
		c.setTopicid(t.getId());
		c.setUserName(user.getUsername());
		c.setTopicTitle(t.getTitle());
		c.setType(type);
		this.cmsGroupCommentetcManager.save(c);

		int f = t.getFlowerCount() == null ? 0 : t.getFlowerCount();
		t.setFlowerCount(f + 1);
		this.cmsGroupTopicManager.update(t);

		// return Utils.returnServlet(getRequest(), getResponse(), map,
		// "!/kailian/CmsGroup/index.do", 1, "ok");
		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/info2.jsp", 1, "ok");
	}

	/*
	 * 禁言
	 */
	public String jinyan() {
		Map map = null;
		map = Utils.checkParamerts(getRequest(), "adminuser");
		if (map.isEmpty() == false) {
			map.put("re", -1);
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/user/login.jsp");
		}

		if (this.cmsGroup == null) {
			return Utils.returnServlet(getRequest(), getResponse(), map,
					"/user/login.jsp", -1, "小组不存在");
		}

		this.cmsGroup.setStatus(Utils.getIntParam(getRequest(), "status"));
		this.cmsGroupManager.update(this.cmsGroup);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/user/login.jsp", 1, "ok");
	}

	/*
	 * 首页
	 */
	public String index() {
		Map map = new HashMap();
		List list = this.cmsGroupManager.queryTop(5, "flag desc");
		map.put("suggests", list);

		CmsGroupQuery q = new CmsGroupQuery();
		q.setPageNumber(Utils.getPageno(getRequest()));
		q.setSortColumns("id desc");
		Page page = this.cmsGroupManager.findPage(q);
		for (int i = 0; i < page.getResult().size(); i++) {
			CmsGroup g = (CmsGroup) page.getResult().get(i);
			CmsGroupTopicQuery tq = new CmsGroupTopicQuery();
			tq.setGroupid(g.getId());
			tq.setSortColumns("id desc");
			List l = this.cmsGroupTopicManager.queryTop(tq);
			if (l != null && l.size() > 0)
				g.setTopic((CmsGroupTopic) l.get(0));

			page.getResult().set(i, g);
		}
		map.put("page", page);

		CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(getRequest())
				.getAttribute("user");
		map.put("user", user);

		return Utils.returnServlet(getRequest(), getResponse(), map,
				"/page/group/index.jsp", 1, "ok");
	}

}
