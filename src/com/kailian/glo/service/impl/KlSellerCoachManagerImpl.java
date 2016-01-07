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
import com.kailian.glo.model.KlSellerCoach;

import com.kailian.glo.model.KlSellerCoach;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlSellerCoachQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlSellerCoachManager;
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


@Service("klSellerCoachManager")
@Transactional
public class KlSellerCoachManagerImpl extends BaseManager<KlSellerCoach,java.lang.Long> implements IKlSellerCoachManager{

	private IKlSellerCoachDao klSellerCoachDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlSellerCoachDao(IKlSellerCoachDao dao) {
		this.klSellerCoachDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klSellerCoachDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlSellerCoachQuery query) {
		return klSellerCoachDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlSellerCoach getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlSellerCoach klSellerCoach = this.getById(id);
		if (klSellerCoach != null) {
			Map map = new HashMap();
			map.put("object", klSellerCoach);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlSellerCoach");
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
	public void save(KlSellerCoach entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlSellerCoach entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlSellerCoach entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlSellerCoach> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlSellerCoach entity) {
		super.saveOrUpdate(entity);
	}


public List<KlSellerCoach> queryTop(int count, String sort) {
	return this.klSellerCoachDao.queryTop(count, sort);
}

public List<KlSellerCoach> queryTop(KlSellerCoachQuery query) {
	return this.klSellerCoachDao.queryTop(query);
}

public long queryCount(KlSellerCoachQuery query) {
	return this.klSellerCoachDao.queryCount(query);
}



}
