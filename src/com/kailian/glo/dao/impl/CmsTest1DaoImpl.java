/*

 */

package com.kailian.glo.dao.impl;
import com.kailian.glo.dao.ICmsTest1Dao;
import org.springframework.stereotype.Repository;

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




@Repository("cmsTest1Dao")
public class CmsTest1DaoImpl extends BaseIbatisDao<CmsTest1,java.lang.Long> implements ICmsTest1Dao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "CmsTest1";
	}
	
	public CmsTest1 getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(CmsTest1 entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(CmsTest1 entity){
		super.update(entity);
	}

	public boolean isUnique(CmsTest1 entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<CmsTest1> findAll(){
		return super.findAll();
	}
	
	public void saveOrUpdate(CmsTest1 entity) {
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//			super.save(entity);
//		}
		if (entity.getId() == null) {
			super.save(entity);
		}
		else 
			super.update(entity);
	}
	
	public Page findPage(CmsTest1Query query) {
		return pageQuery("CmsTest1.findPage",query);
	}
	
}
