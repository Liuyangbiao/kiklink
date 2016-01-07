/*

 */

package com.kailian.glo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kailian.glo.dao.ICmsDeleteBackupDao;
import com.kailian.glo.model.CmsDeleteBackup;
import com.kailian.glo.model.CmsCommonComment;

import com.kailian.glo.model.CmsCommonComment;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsCommonCommentQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsCommonCommentManager;
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


@Service("cmsCommonCommentManager")
@Transactional
public class CmsCommonCommentManagerImpl extends BaseManager<CmsCommonComment,java.lang.Long> implements ICmsCommonCommentManager{

	private ICmsCommonCommentDao cmsCommonCommentDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsCommonCommentDao(ICmsCommonCommentDao dao) {
		this.cmsCommonCommentDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsCommonCommentDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsCommonCommentQuery query) {
		return cmsCommonCommentDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsCommonComment getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsCommonComment cmsCommonComment = this.getById(id);
		if (cmsCommonComment != null) {
			Map map = new HashMap();
			map.put("object", cmsCommonComment);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsCommonComment");
			cmsDeleteBackup.setContent(json);
			cmsDeleteBackup.setCreatetimelong(System.currentTimeMillis());
			cmsDeleteBackup.setModifytimelong(0L);
			cmsDeleteBackup.setStatus(0);
			this.cmsDeleteBackupDao.save(cmsDeleteBackup);
		}
		
		super.removeById(id);
	}
	
	/** 插入数据 */
	@Transactional
	public void save(CmsCommonComment entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsCommonComment entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsCommonComment entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsCommonComment> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsCommonComment entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsCommonComment> queryTop(int count, String sort) {
	return this.cmsCommonCommentDao.queryTop(count, sort);
}

public List<CmsCommonComment> queryTop(CmsCommonCommentQuery query) {
	return this.cmsCommonCommentDao.queryTop(query);
}

public CmsCommonComment queryAvg(CmsCommonCommentQuery query) {
	List list = this.cmsCommonCommentDao.queryAvg(query);
	if (list == null || list.isEmpty())
		return null;
	return (CmsCommonComment) list.get(0);
}

public CmsCommonComment queryAvgByTypeAndId(int type, long id) {
	CmsCommonCommentQuery q = new CmsCommonCommentQuery();
	q.setTargetId(id);
	q.setTargetType(type + 10000);
	List l =  this.queryTop(q);
	if (l == null || l.isEmpty() )
		return null;
	return (CmsCommonComment) l.get(0);
}

public long queryCount(CmsCommonCommentQuery query) {
	return this.cmsCommonCommentDao.queryCount(query);
}



}
