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
import com.kailian.glo.model.KlShoppingTrainningsummary;

import com.kailian.glo.model.KlShoppingTrainningsummary;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingTrainningsummaryQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlShoppingTrainningsummaryManager;
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


@Service("klShoppingTrainningsummaryManager")
@Transactional
public class KlShoppingTrainningsummaryManagerImpl extends BaseManager<KlShoppingTrainningsummary,java.lang.Long> implements IKlShoppingTrainningsummaryManager{

	private IKlShoppingTrainningsummaryDao klShoppingTrainningsummaryDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlShoppingTrainningsummaryDao(IKlShoppingTrainningsummaryDao dao) {
		this.klShoppingTrainningsummaryDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klShoppingTrainningsummaryDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlShoppingTrainningsummaryQuery query) {
		return klShoppingTrainningsummaryDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlShoppingTrainningsummary getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlShoppingTrainningsummary klShoppingTrainningsummary = this.getById(id);
		if (klShoppingTrainningsummary != null) {
			Map map = new HashMap();
			map.put("object", klShoppingTrainningsummary);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlShoppingTrainningsummary");
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
	public void save(KlShoppingTrainningsummary entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlShoppingTrainningsummary entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlShoppingTrainningsummary entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlShoppingTrainningsummary> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlShoppingTrainningsummary entity) {
		super.saveOrUpdate(entity);
	}


public List<KlShoppingTrainningsummary> queryTop(int count, String sort) {
	return this.klShoppingTrainningsummaryDao.queryTop(count, sort);
}

public List<KlShoppingTrainningsummary> queryTop(KlShoppingTrainningsummaryQuery query) {
	return this.klShoppingTrainningsummaryDao.queryTop(query);
}

public long queryCount(KlShoppingTrainningsummaryQuery query) {
	return this.klShoppingTrainningsummaryDao.queryCount(query);
}



}
