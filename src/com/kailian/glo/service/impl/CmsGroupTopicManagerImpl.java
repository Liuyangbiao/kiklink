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
import com.kailian.glo.model.CmsGroupTopic;

import com.kailian.glo.model.CmsGroupTopic;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsGroupTopicQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsGroupTopicManager;
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


@Service("cmsGroupTopicManager")
@Transactional
public class CmsGroupTopicManagerImpl extends BaseManager<CmsGroupTopic,java.lang.Long> implements ICmsGroupTopicManager{

	private ICmsGroupTopicDao cmsGroupTopicDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsGroupTopicDao(ICmsGroupTopicDao dao) {
		this.cmsGroupTopicDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsGroupTopicDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsGroupTopicQuery query) {
		return cmsGroupTopicDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsGroupTopic getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsGroupTopic cmsGroupTopic = this.getById(id);
		if (cmsGroupTopic != null) {
			Map map = new HashMap();
			map.put("object", cmsGroupTopic);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsGroupTopic");
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
	public void save(CmsGroupTopic entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsGroupTopic entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsGroupTopic entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsGroupTopic> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsGroupTopic entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsGroupTopic> queryTop(int count, String sort) {
	return this.cmsGroupTopicDao.queryTop(count, sort);
}

public List<CmsGroupTopic> queryTop(CmsGroupTopicQuery query) {
	return this.cmsGroupTopicDao.queryTop(query);
}

public long queryCount(CmsGroupTopicQuery query) {
	return this.cmsGroupTopicDao.queryCount(query);
}



}
