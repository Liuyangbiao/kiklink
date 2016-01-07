/*

 */

package com.kailian.glo.vo.query;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;

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


public class CmsBiaodanConfigQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** inputListId */
	private java.lang.Long inputListId;
	/** inputListType */
	private java.lang.Integer inputListType;
	/** inputType */
	private java.lang.Integer inputType;
	/** inputEnName */
	private java.lang.String inputEnName;
	/** inputCnName */
	private java.lang.String inputCnName;
	/** inputShow */
	private java.lang.Integer inputShow;
	/** luceneIndexType */
	private java.lang.Integer luceneIndexType;
	/** status */
	private java.lang.Integer status;
	/** addition */
	private java.lang.String addition;
	/** createtimelong */
	private java.lang.Long createtimelong;
	/** modifytimelong */
	private java.lang.Long modifytimelong;
	/** createuser */
	private java.lang.Long createuser;
	/** modifyuser */
	private java.lang.Long modifyuser;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getInputListId() {
		return this.inputListId;
	}
	
	public void setInputListId(java.lang.Long value) {
		this.inputListId = value;
	}
	
	public java.lang.Integer getInputListType() {
		return this.inputListType;
	}
	
	public void setInputListType(java.lang.Integer value) {
		this.inputListType = value;
	}
	
	public java.lang.Integer getInputType() {
		return this.inputType;
	}
	
	public void setInputType(java.lang.Integer value) {
		this.inputType = value;
	}
	
	public java.lang.String getInputEnName() {
		return this.inputEnName;
	}
	
	public void setInputEnName(java.lang.String value) {
		this.inputEnName = value;
	}
	
	public java.lang.String getInputCnName() {
		return this.inputCnName;
	}
	
	public void setInputCnName(java.lang.String value) {
		this.inputCnName = value;
	}
	
	public java.lang.Integer getInputShow() {
		return this.inputShow;
	}
	
	public void setInputShow(java.lang.Integer value) {
		this.inputShow = value;
	}
	
	public java.lang.Integer getLuceneIndexType() {
		return this.luceneIndexType;
	}
	
	public void setLuceneIndexType(java.lang.Integer value) {
		this.luceneIndexType = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.String getAddition() {
		return this.addition;
	}
	
	public void setAddition(java.lang.String value) {
		this.addition = value;
	}
	
	public java.lang.Long getCreatetimelong() {
		return this.createtimelong;
	}
	
	public void setCreatetimelong(java.lang.Long value) {
		this.createtimelong = value;
	}
	
	public java.lang.Long getModifytimelong() {
		return this.modifytimelong;
	}
	
	public void setModifytimelong(java.lang.Long value) {
		this.modifytimelong = value;
	}
	
	public java.lang.Long getCreateuser() {
		return this.createuser;
	}
	
	public void setCreateuser(java.lang.Long value) {
		this.createuser = value;
	}
	
	public java.lang.Long getModifyuser() {
		return this.modifyuser;
	}
	
	public void setModifyuser(java.lang.Long value) {
		this.modifyuser = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

