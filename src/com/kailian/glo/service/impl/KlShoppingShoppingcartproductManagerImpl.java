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
import com.kailian.glo.model.KlShoppingShoppingcartproduct;

import com.kailian.glo.model.KlShoppingShoppingcartproduct;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingShoppingcartproductQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlShoppingShoppingcartproductManager;
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


@Service("klShoppingShoppingcartproductManager")
@Transactional
public class KlShoppingShoppingcartproductManagerImpl extends BaseManager<KlShoppingShoppingcartproduct,java.lang.Long> implements IKlShoppingShoppingcartproductManager{

	private IKlShoppingShoppingcartproductDao klShoppingShoppingcartproductDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlShoppingShoppingcartproductDao(IKlShoppingShoppingcartproductDao dao) {
		this.klShoppingShoppingcartproductDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klShoppingShoppingcartproductDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlShoppingShoppingcartproductQuery query) {
		return klShoppingShoppingcartproductDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlShoppingShoppingcartproduct getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlShoppingShoppingcartproduct klShoppingShoppingcartproduct = this.getById(id);
		if (klShoppingShoppingcartproduct != null) {
			Map map = new HashMap();
			map.put("object", klShoppingShoppingcartproduct);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlShoppingShoppingcartproduct");
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
	public void save(KlShoppingShoppingcartproduct entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlShoppingShoppingcartproduct entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlShoppingShoppingcartproduct entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlShoppingShoppingcartproduct> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlShoppingShoppingcartproduct entity) {
		super.saveOrUpdate(entity);
	}


public List<KlShoppingShoppingcartproduct> queryTop(int count, String sort) {
	return this.klShoppingShoppingcartproductDao.queryTop(count, sort);
}

public List<KlShoppingShoppingcartproduct> queryTop(KlShoppingShoppingcartproductQuery query) {
	return this.klShoppingShoppingcartproductDao.queryTop(query);
}

public long queryCount(KlShoppingShoppingcartproductQuery query) {
	return this.klShoppingShoppingcartproductDao.queryCount(query);
}

public float queryIncome(KlShoppingShoppingcartproductQuery query) {
	return this.klShoppingShoppingcartproductDao.queryIncome(query);
}


}
