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
import com.kailian.glo.model.KlSellerCard;

import com.kailian.glo.model.KlSellerCard;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlSellerCardQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlSellerCardManager;
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


@Service("klSellerCardManager")
@Transactional
public class KlSellerCardManagerImpl extends BaseManager<KlSellerCard,java.lang.Long> implements IKlSellerCardManager{

	private IKlSellerCardDao klSellerCardDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlSellerCardDao(IKlSellerCardDao dao) {
		this.klSellerCardDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klSellerCardDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlSellerCardQuery query) {
		return klSellerCardDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlSellerCard getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlSellerCard klSellerCard = this.getById(id);
		if (klSellerCard != null) {
			Map map = new HashMap();
			map.put("object", klSellerCard);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlSellerCard");
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
	public void save(KlSellerCard entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlSellerCard entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlSellerCard entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlSellerCard> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlSellerCard entity) {
		super.saveOrUpdate(entity);
	}


public List<KlSellerCard> queryTop(int count, String sort) {
	return this.klSellerCardDao.queryTop(count, sort);
}

public List<KlSellerCard> queryTop(KlSellerCardQuery query) {
	return this.klSellerCardDao.queryTop(query);
}

public long queryCount(KlSellerCardQuery query) {
	return this.klSellerCardDao.queryCount(query);
}



}
