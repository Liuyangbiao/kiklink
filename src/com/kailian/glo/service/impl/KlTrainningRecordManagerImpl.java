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
import com.kailian.glo.model.KlTrainningRecord;

import com.kailian.glo.model.KlTrainningRecord;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlTrainningRecordQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlTrainningRecordManager;
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


@Service("klTrainningRecordManager")
@Transactional
public class KlTrainningRecordManagerImpl extends BaseManager<KlTrainningRecord,java.lang.Long> implements IKlTrainningRecordManager{

	private IKlTrainningRecordDao klTrainningRecordDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlTrainningRecordDao(IKlTrainningRecordDao dao) {
		this.klTrainningRecordDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klTrainningRecordDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlTrainningRecordQuery query) {
		return klTrainningRecordDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlTrainningRecord getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlTrainningRecord klTrainningRecord = this.getById(id);
		if (klTrainningRecord != null) {
			Map map = new HashMap();
			map.put("object", klTrainningRecord);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlTrainningRecord");
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
	public void save(KlTrainningRecord entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlTrainningRecord entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlTrainningRecord entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlTrainningRecord> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlTrainningRecord entity) {
		super.saveOrUpdate(entity);
	}


public List<KlTrainningRecord> queryTop(int count, String sort) {
	return this.klTrainningRecordDao.queryTop(count, sort);
}

public List<KlTrainningRecord> queryTop(KlTrainningRecordQuery query) {
	return this.klTrainningRecordDao.queryTop(query);
}

public long queryCount(KlTrainningRecordQuery query) {
	return this.klTrainningRecordDao.queryCount(query);
}



}
