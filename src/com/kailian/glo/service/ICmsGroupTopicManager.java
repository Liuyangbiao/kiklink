/*

 */

package com.kailian.glo.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kailian.glo.model.CmsStaticsFlow;

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

public interface ICmsGroupTopicManager{
	
	public Page findPage(CmsGroupTopicQuery query);

	public CmsGroupTopic getById(java.lang.Long id);
	
	public List<CmsGroupTopic> findAll();
	
	/** 根据id检查是否插入或是更新数据 */
	public void saveOrUpdate(CmsGroupTopic entity);
	
	/** 插入数据 */
	public void save(CmsGroupTopic entity);
	
	public void removeById(java.lang.Long id);
	
	public void update(CmsGroupTopic entity);
	
	public boolean isUnique(CmsGroupTopic entity, String uniquePropertyNames);
	
	public List<CmsGroupTopic> queryTop(int count, String sort);
	
	public List<CmsGroupTopic> queryTop(CmsGroupTopicQuery query);
	
	public long queryCount(CmsGroupTopicQuery query) ;
}
