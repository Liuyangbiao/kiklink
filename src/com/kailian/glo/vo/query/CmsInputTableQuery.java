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


public class CmsInputTableQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** className */
	private java.lang.String className;
	/** inputName */
	private java.lang.String inputName;
	/** classComment */
	private java.lang.String classComment;
	/** inputComment */
	private java.lang.String inputComment;
	/** inputType */
	private java.lang.Integer inputType;
	/** inputEnName */
	private java.lang.String inputEnName;
	/** inputCnName */
	private java.lang.String inputCnName;
	/** linkClassName */
	private java.lang.String linkClassName;
	/** linkInputName */
	private java.lang.String linkInputName;
	/** linkParam */
	private java.lang.String linkParam;
	/** inputAddition */
	private java.lang.String inputAddition;
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
	/** luceneIndexType */
	private java.lang.Integer luceneIndexType;
	/** minlength */
	private java.lang.Integer minlength;
	/** maxlength */
	private java.lang.Integer maxlength;
	/** required */
	private java.lang.Integer required;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.String getClassName() {
		return this.className;
	}
	
	public void setClassName(java.lang.String value) {
		this.className = value;
	}
	
	public java.lang.String getInputName() {
		return this.inputName;
	}
	
	public void setInputName(java.lang.String value) {
		this.inputName = value;
	}
	
	public java.lang.String getClassComment() {
		return this.classComment;
	}
	
	public void setClassComment(java.lang.String value) {
		this.classComment = value;
	}
	
	public java.lang.String getInputComment() {
		return this.inputComment;
	}
	
	public void setInputComment(java.lang.String value) {
		this.inputComment = value;
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
	
	public java.lang.String getLinkClassName() {
		return this.linkClassName;
	}
	
	public void setLinkClassName(java.lang.String value) {
		this.linkClassName = value;
	}
	
	public java.lang.String getLinkInputName() {
		return this.linkInputName;
	}
	
	public void setLinkInputName(java.lang.String value) {
		this.linkInputName = value;
	}
	
	public java.lang.String getLinkParam() {
		return this.linkParam;
	}
	
	public void setLinkParam(java.lang.String value) {
		this.linkParam = value;
	}
	
	public java.lang.String getInputAddition() {
		return this.inputAddition;
	}
	
	public void setInputAddition(java.lang.String value) {
		this.inputAddition = value;
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
	
	public java.lang.Integer getLuceneIndexType() {
		return this.luceneIndexType;
	}
	
	public void setLuceneIndexType(java.lang.Integer value) {
		this.luceneIndexType = value;
	}
	
	public java.lang.Integer getMinlength() {
		return this.minlength;
	}
	
	public void setMinlength(java.lang.Integer value) {
		this.minlength = value;
	}
	
	public java.lang.Integer getMaxlength() {
		return this.maxlength;
	}
	
	public void setMaxlength(java.lang.Integer value) {
		this.maxlength = value;
	}
	
	public java.lang.Integer getRequired() {
		return this.required;
	}
	
	public void setRequired(java.lang.Integer value) {
		this.required = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

