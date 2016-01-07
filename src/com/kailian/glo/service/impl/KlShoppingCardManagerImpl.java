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
import com.kailian.glo.model.KlShoppingCard;

import com.kailian.glo.model.KlShoppingCard;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingCardQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlShoppingCardManager;
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


@Service("klShoppingCardManager")
@Transactional
public class KlShoppingCardManagerImpl extends BaseManager<KlShoppingCard,java.lang.Long> implements IKlShoppingCardManager{

	private IKlShoppingCardDao klShoppingCardDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlShoppingCardDao(IKlShoppingCardDao dao) {
		this.klShoppingCardDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klShoppingCardDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlShoppingCardQuery query) {
		return klShoppingCardDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlShoppingCard getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlShoppingCard klShoppingCard = this.getById(id);
		if (klShoppingCard != null) {
			Map map = new HashMap();
			map.put("object", klShoppingCard);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlShoppingCard");
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
	public void save(KlShoppingCard entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlShoppingCard entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlShoppingCard entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlShoppingCard> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlShoppingCard entity) {
		super.saveOrUpdate(entity);
	}


public List<KlShoppingCard> queryTop(int count, String sort) {
	return this.klShoppingCardDao.queryTop(count, sort);
}

public List<KlShoppingCard> queryTop(KlShoppingCardQuery query) {
	return this.klShoppingCardDao.queryTop(query);
}

public long queryCount(KlShoppingCardQuery query) {
	return this.klShoppingCardDao.queryCount(query);
}



}
