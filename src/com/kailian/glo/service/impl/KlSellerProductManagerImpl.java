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
import com.kailian.glo.model.KlSellerProduct;

import com.kailian.glo.model.KlSellerProduct;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlSellerProductQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlSellerProductManager;
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


@Service("klSellerProductManager")
@Transactional
public class KlSellerProductManagerImpl extends BaseManager<KlSellerProduct,java.lang.Long> implements IKlSellerProductManager{

	private IKlSellerProductDao klSellerProductDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlSellerProductDao(IKlSellerProductDao dao) {
		this.klSellerProductDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klSellerProductDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlSellerProductQuery query) {
		return klSellerProductDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public Page findPage2(KlSellerProductQuery query) {
		return klSellerProductDao.findPage2(query);
	}
	@Transactional(readOnly=true)
	public KlSellerProduct getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlSellerProduct klSellerProduct = this.getById(id);
		if (klSellerProduct != null) {
			Map map = new HashMap();
			map.put("object", klSellerProduct);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlSellerProduct");
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
	public void save(KlSellerProduct entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlSellerProduct entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlSellerProduct entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlSellerProduct> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlSellerProduct entity) {
		super.saveOrUpdate(entity);
	}


public List<KlSellerProduct> queryTop(int count, String sort) {
	return this.klSellerProductDao.queryTop(count, sort);
}

public List<KlSellerProduct> queryTop(KlSellerProductQuery query) {
	return this.klSellerProductDao.queryTop(query);
}

public long queryCount(KlSellerProductQuery query) {
	return this.klSellerProductDao.queryCount(query);
}

public long queryCount2(KlSellerProductQuery query) {
	return this.klSellerProductDao.queryCount2(query);
}



}
