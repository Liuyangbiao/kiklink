/*

 */

package com.kailian.glo.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kailian.glo.dao.ICmsDeleteBackupDao;
import com.kailian.glo.model.CmsDeleteBackup;
import com.kailian.glo.model.CmsTest2;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsTest2Manager;
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


@Service("cmsTest2Manager")
@Transactional
public class CmsTest2ManagerImpl extends BaseManager<CmsTest2,java.lang.Long> implements ICmsTest2Manager{

	private ICmsTest2Dao cmsTest2Dao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsTest2Dao(ICmsTest2Dao dao) {
		this.cmsTest2Dao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsTest2Dao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsTest2Query query) {
		return cmsTest2Dao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsTest2 getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsTest2 cmsTest2 = this.getById(id);
		if (cmsTest2 != null) {
			Map map = new HashMap();
			map.put("object", cmsTest2);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsTest2");
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
	public void save(CmsTest2 entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsTest2 entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsTest2 entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsTest2> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsTest2 entity) {
		super.saveOrUpdate(entity);
	}

}
