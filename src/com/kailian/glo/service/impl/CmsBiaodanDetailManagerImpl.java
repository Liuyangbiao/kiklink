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
import com.kailian.glo.model.CmsBiaodanDetail;

import com.kailian.glo.model.CmsBiaodanDetail;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsBiaodanDetailQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsBiaodanDetailManager;
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


@Service("cmsBiaodanDetailManager")
@Transactional
public class CmsBiaodanDetailManagerImpl extends BaseManager<CmsBiaodanDetail,java.lang.Long> implements ICmsBiaodanDetailManager{

	private ICmsBiaodanDetailDao cmsBiaodanDetailDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsBiaodanDetailDao(ICmsBiaodanDetailDao dao) {
		this.cmsBiaodanDetailDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsBiaodanDetailDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsBiaodanDetailQuery query) {
		return cmsBiaodanDetailDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsBiaodanDetail getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsBiaodanDetail cmsBiaodanDetail = this.getById(id);
		if (cmsBiaodanDetail != null) {
			Map map = new HashMap();
			map.put("object", cmsBiaodanDetail);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsBiaodanDetail");
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
	public void save(CmsBiaodanDetail entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsBiaodanDetail entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsBiaodanDetail entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsBiaodanDetail> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsBiaodanDetail entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsBiaodanDetail> queryTop(int count, String sort) {
	return this.cmsBiaodanDetailDao.queryTop(count, sort);
}

public List<CmsBiaodanDetail> queryTop(CmsBiaodanDetailQuery query) {
	return this.cmsBiaodanDetailDao.queryTop(query);
}

public long queryCount(CmsBiaodanDetailQuery query) {
	return this.cmsBiaodanDetailDao.queryCount(query);
}



}
