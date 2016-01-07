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
import com.kailian.glo.model.KlSellerCategory;

import com.kailian.glo.model.KlSellerCategory;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlSellerCategoryQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlSellerCategoryManager;
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


@Service("klSellerCategoryManager")
@Transactional
public class KlSellerCategoryManagerImpl extends BaseManager<KlSellerCategory,java.lang.Long> implements IKlSellerCategoryManager{

	private IKlSellerCategoryDao klSellerCategoryDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlSellerCategoryDao(IKlSellerCategoryDao dao) {
		this.klSellerCategoryDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klSellerCategoryDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlSellerCategoryQuery query) {
		return klSellerCategoryDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlSellerCategory getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlSellerCategory klSellerCategory = this.getById(id);
		if (klSellerCategory != null) {
			Map map = new HashMap();
			map.put("object", klSellerCategory);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlSellerCategory");
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
	public void save(KlSellerCategory entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlSellerCategory entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlSellerCategory entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlSellerCategory> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlSellerCategory entity) {
		super.saveOrUpdate(entity);
	}


public List<KlSellerCategory> queryTop(int count, String sort) {
	return this.klSellerCategoryDao.queryTop(count, sort);
}

public List<KlSellerCategory> queryTop(KlSellerCategoryQuery query) {
	return this.klSellerCategoryDao.queryTop(query);
}

public long queryCount(KlSellerCategoryQuery query) {
	return this.klSellerCategoryDao.queryCount(query);
}



}
