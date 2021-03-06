/*

 */

package com.kailian.glo.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kailian.glo.dao.ICmsStProductgroupDao;

import org.springframework.stereotype.Repository;

import com.kailian.glo.model.CmsStProductgroup;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsStProductgroupQuery;
import com.yebucuo.util.Utils;

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




@Repository("cmsStProductgroupDao")
public class CmsStProductgroupDaoImpl extends BaseIbatisDao<CmsStProductgroup,java.lang.Long> implements ICmsStProductgroupDao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "CmsStProductgroup";
	}
	
	public CmsStProductgroup getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(CmsStProductgroup entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(CmsStProductgroup entity){
		super.update(entity);
	}

	public boolean isUnique(CmsStProductgroup entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<CmsStProductgroup> findAll(){
		//return super.findAll();
		Map map = new HashMap();
		map.put("maxCount", Integer.MAX_VALUE );
		
		return this.queryforList("CmsStProductgroup.findTop", map);
	}
	
	public void saveOrUpdate(CmsStProductgroup entity) {
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
	
	public Page findPage(CmsStProductgroupQuery query) {
		return pageQuery("CmsStProductgroup.findPage",query);
	}
	
	
	
	public List<CmsStProductgroup> queryTop(int count, String sortBy) {
		String sort = (sortBy == null ? "id" : sortBy);
		Map map = new HashMap();
		map.put("sortColumns", sortBy);
		map.put("maxCount", count );
		
		return this.queryforList("CmsStProductgroup.findTop", map);
	}
	
	public List<CmsStProductgroup> queryforList(String sqlName,Map paraMap) {
		return this.getSqlMapClientTemplate().queryForList(sqlName,paraMap);
	}
	
	
	public List<CmsStProductgroup> queryTop(CmsStProductgroupQuery query) {
		String sort = (query.getSortColumns() == null ? "id" : query.getSortColumns());
		Map map = Utils.transBean2Map(query);
		map.put("sortColumns", sort);
		map.put("maxCount", query.getPageSize() );
		
		return this.queryforList("CmsStProductgroup.findTop", map);
	}
	
	public long queryCount(CmsStProductgroupQuery query) {
		Map map = Utils.transBean2Map(query);
		Long l = (Long) this.getSqlMapClientTemplate().queryForObject("CmsStProductgroup.findPage.count", map);
		return l;
	}
	
	
}
