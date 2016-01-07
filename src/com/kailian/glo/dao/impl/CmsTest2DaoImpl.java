/*

 */

package com.kailian.glo.dao.impl;
import com.kailian.glo.dao.ICmsTest2Dao;
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




@Repository("cmsTest2Dao")
public class CmsTest2DaoImpl extends BaseIbatisDao<CmsTest2,java.lang.Long> implements ICmsTest2Dao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "CmsTest2";
	}
	
	public CmsTest2 getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(CmsTest2 entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(CmsTest2 entity){
		super.update(entity);
	}

	public boolean isUnique(CmsTest2 entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<CmsTest2> findAll(){
		return super.findAll();
	}
	
	public void saveOrUpdate(CmsTest2 entity) {
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
	
	public Page findPage(CmsTest2Query query) {
		return pageQuery("CmsTest2.findPage",query);
	}
	
}
