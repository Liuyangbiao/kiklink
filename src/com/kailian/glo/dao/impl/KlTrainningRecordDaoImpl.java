/*

 */

package com.kailian.glo.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kailian.glo.dao.IKlTrainningRecordDao;

import org.springframework.stereotype.Repository;

import com.kailian.glo.model.KlTrainningRecord;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlTrainningRecordQuery;
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




@Repository("klTrainningRecordDao")
public class KlTrainningRecordDaoImpl extends BaseIbatisDao<KlTrainningRecord,java.lang.Long> implements IKlTrainningRecordDao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "KlTrainningRecord";
	}
	
	public KlTrainningRecord getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(KlTrainningRecord entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(KlTrainningRecord entity){
		super.update(entity);
	}

	public boolean isUnique(KlTrainningRecord entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<KlTrainningRecord> findAll(){
		//return super.findAll();
		Map map = new HashMap();
		map.put("maxCount", Integer.MAX_VALUE );
		
		return this.queryforList("KlTrainningRecord.findTop", map);
	}
	
	public void saveOrUpdate(KlTrainningRecord entity) {
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
	
	public Page findPage(KlTrainningRecordQuery query) {
		return pageQuery("KlTrainningRecord.findPage",query);
	}
	
	
	
	public List<KlTrainningRecord> queryTop(int count, String sortBy) {
		String sort = (sortBy == null ? "id" : sortBy);
		Map map = new HashMap();
		map.put("sortColumns", sortBy);
		map.put("maxCount", count );
		
		return this.queryforList("KlTrainningRecord.findTop", map);
	}
	
	public List<KlTrainningRecord> queryforList(String sqlName,Map paraMap) {
		return this.getSqlMapClientTemplate().queryForList(sqlName,paraMap);
	}
	
	
	public List<KlTrainningRecord> queryTop(KlTrainningRecordQuery query) {
		String sort = (query.getSortColumns() == null ? "id desc" : query.getSortColumns());
		Map map = Utils.transBean2Map(query);
		map.put("sortColumns", sort);
		map.put("maxCount", query.getPageSize() );
		
		return this.queryforList("KlTrainningRecord.findTop", map);
	}
	
	public long queryCount(KlTrainningRecordQuery query) {
		Map map = Utils.transBean2Map(query);
		Long l = (Long) this.getSqlMapClientTemplate().queryForObject("KlTrainningRecord.findPage.count", map);
		return l;
	}
	
	
}
