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
import com.kailian.glo.model.KlTopicCoach;

import com.kailian.glo.model.KlTopicCoach;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlTopicCoachQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlTopicCoachManager;
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


@Service("klTopicCoachManager")
@Transactional
public class KlTopicCoachManagerImpl extends BaseManager<KlTopicCoach,java.lang.Long> implements IKlTopicCoachManager{

	private IKlTopicCoachDao klTopicCoachDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlTopicCoachDao(IKlTopicCoachDao dao) {
		this.klTopicCoachDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klTopicCoachDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlTopicCoachQuery query) {
		return klTopicCoachDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlTopicCoach getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlTopicCoach klTopicCoach = this.getById(id);
		if (klTopicCoach != null) {
			Map map = new HashMap();
			map.put("object", klTopicCoach);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlTopicCoach");
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
	public void save(KlTopicCoach entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlTopicCoach entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlTopicCoach entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlTopicCoach> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlTopicCoach entity) {
		super.saveOrUpdate(entity);
	}


public List<KlTopicCoach> queryTop(int count, String sort) {
	return this.klTopicCoachDao.queryTop(count, sort);
}

public List<KlTopicCoach> queryTop(KlTopicCoachQuery query) {
	return this.klTopicCoachDao.queryTop(query);
}

public long queryCount(KlTopicCoachQuery query) {
	return this.klTopicCoachDao.queryCount(query);
}



}
