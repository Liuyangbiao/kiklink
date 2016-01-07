/*

 */

package com.kailian.glo.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kailian.glo.dao.ICmsCommonMessageDao;

import org.springframework.stereotype.Repository;

import com.kailian.glo.model.CmsCommonMessage;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsCommonMessageQuery;
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




@Repository("cmsCommonMessageDao")
public class CmsCommonMessageDaoImpl extends BaseIbatisDao<CmsCommonMessage,java.lang.Long> implements ICmsCommonMessageDao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "CmsCommonMessage";
	}
	
	public CmsCommonMessage getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(CmsCommonMessage entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(CmsCommonMessage entity){
		super.update(entity);
	}

	public boolean isUnique(CmsCommonMessage entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<CmsCommonMessage> findAll(){
		//return super.findAll();
		Map map = new HashMap();
		map.put("maxCount", Integer.MAX_VALUE );
		
		return this.queryforList("CmsCommonMessage.findTop", map);
	}
	
	public void saveOrUpdate(CmsCommonMessage entity) {
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
	
	public Page findPage(CmsCommonMessageQuery query) {
		return pageQuery("CmsCommonMessage.findPage",query);
	}
	
	
	
	public List<CmsCommonMessage> queryTop(int count, String sortBy) {
		String sort = (sortBy == null ? "id" : sortBy);
		Map map = new HashMap();
		map.put("sortColumns", sortBy);
		map.put("maxCount", count );
		
		return this.queryforList("CmsCommonMessage.findTop", map);
	}
	
	public List<CmsCommonMessage> queryforList(String sqlName,Map paraMap) {
		return this.getSqlMapClientTemplate().queryForList(sqlName,paraMap);
	}
	
	
	public List<CmsCommonMessage> queryTop(CmsCommonMessageQuery query) {
		String sort = (query.getSortColumns() == null ? "id" : query.getSortColumns());
		Map map = Utils.transBean2Map(query);
		map.put("sortColumns", sort);
		map.put("maxCount", query.getPageSize() );
		
		return this.queryforList("CmsCommonMessage.findTop", map);
	}
	
	public long queryCount(CmsCommonMessageQuery query) {
		Map map = Utils.transBean2Map(query);
		Long l = (Long) this.getSqlMapClientTemplate().queryForObject("CmsCommonMessage.findPage.count", map);
		return l;
	}
	
	
}
