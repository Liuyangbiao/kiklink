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
import com.kailian.glo.model.CmsChannel;

import com.kailian.glo.model.CmsChannel;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsChannelQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsChannelManager;
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


@Service("cmsChannelManager")
@Transactional
public class CmsChannelManagerImpl extends BaseManager<CmsChannel,java.lang.Long> implements ICmsChannelManager{

	private ICmsChannelDao cmsChannelDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsChannelDao(ICmsChannelDao dao) {
		this.cmsChannelDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsChannelDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsChannelQuery query) {
		return cmsChannelDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsChannel getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsChannel cmsChannel = this.getById(id);
		if (cmsChannel != null) {
			Map map = new HashMap();
			map.put("object", cmsChannel);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsChannel");
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
	public void save(CmsChannel entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsChannel entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsChannel entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsChannel> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsChannel entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsChannel> queryTop(int count, String sort) {
	return this.cmsChannelDao.queryTop(count, sort);
}

public List<CmsChannel> queryTop(CmsChannelQuery query) {
	return this.cmsChannelDao.queryTop(query);
}

public long queryCount(CmsChannelQuery query) {
	return this.cmsChannelDao.queryCount(query);
}



}
