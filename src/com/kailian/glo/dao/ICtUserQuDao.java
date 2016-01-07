/*

 */

package com.kailian.glo.dao;

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


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.kailian.glo.model.CmsStaticsFlow;

import cn.org.rapid_framework.page.Page;
import cn.org.rapid_framework.page.PageRequest;
import cn.org.rapid_framework.util.MapAndObject;


public interface ICtUserQuDao{

	public Object getById(java.lang.Long id);
	
	public void deleteById(java.lang.Long id);
	
	/** 插入数据 */
	public void save(CtUserQu entity);
	
	/** 更新数据 */
	public void update(CtUserQu entity);

	/** 根据id检查是否插入或是更新数据 */
	public void saveOrUpdate(CtUserQu entity);

	public boolean isUnique(CtUserQu entity, String uniquePropertyNames);
	
	public List<CtUserQu> findAll();

	
	public Page findPage(CtUserQuQuery query);
	
	
	public List<CtUserQu> queryTop(int count, String sortBy);
	
	public List<CtUserQu> queryforList(String sqlName,Map paraMap) ;

	public List<CtUserQu> queryTop(CtUserQuQuery query);
	
	public long queryCount(CtUserQuQuery query) ;
	
}
