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
import com.kailian.glo.model.KlSellerShop;

import com.kailian.glo.model.KlSellerShop;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlSellerShopQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlSellerShopManager;
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


@Service("klSellerShopManager")
@Transactional
public class KlSellerShopManagerImpl extends BaseManager<KlSellerShop,java.lang.Long> implements IKlSellerShopManager{

	private IKlSellerShopDao klSellerShopDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlSellerShopDao(IKlSellerShopDao dao) {
		this.klSellerShopDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klSellerShopDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlSellerShopQuery query) {
		return klSellerShopDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlSellerShop getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlSellerShop klSellerShop = this.getById(id);
		if (klSellerShop != null) {
			Map map = new HashMap();
			map.put("object", klSellerShop);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlSellerShop");
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
	public void save(KlSellerShop entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlSellerShop entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlSellerShop entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlSellerShop> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlSellerShop entity) {
		super.saveOrUpdate(entity);
	}


public List<KlSellerShop> queryTop(int count, String sort) {
	return this.klSellerShopDao.queryTop(count, sort);
}

public List<KlSellerShop> queryTop(KlSellerShopQuery query) {
	return this.klSellerShopDao.queryTop(query);
}

public long queryCount(KlSellerShopQuery query) {
	return this.klSellerShopDao.queryCount(query);
}



}
