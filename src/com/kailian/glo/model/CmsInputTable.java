/*

 */

package com.kailian.glo.model;

import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

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


public class CmsInputTable extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsInputTable";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_CLASS_NAME = "className";
	public static final String ALIAS_INPUT_NAME = "inputName";
	public static final String ALIAS_CLASS_COMMENT = "classComment";
	public static final String ALIAS_INPUT_COMMENT = "inputComment";
	public static final String ALIAS_INPUT_TYPE = "inputType";
	public static final String ALIAS_INPUT_EN_NAME = "inputEnName";
	public static final String ALIAS_INPUT_CN_NAME = "inputCnName";
	public static final String ALIAS_LINK_CLASS_NAME = "linkClassName";
	public static final String ALIAS_LINK_INPUT_NAME = "linkInputName";
	public static final String ALIAS_LINK_PARAM = "linkParam";
	public static final String ALIAS_INPUT_ADDITION = "inputAddition";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_LUCENE_INDEX_TYPE = "luceneIndexType";
	public static final String ALIAS_MINLENGTH = "minlength";
	public static final String ALIAS_MAXLENGTH = "maxlength";
	public static final String ALIAS_REQUIRED = "required";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=100)
	private java.lang.String className;
	@Length(max=100)
	private java.lang.String inputName;
	@Length(max=200)
	private java.lang.String classComment;
	@Length(max=200)
	private java.lang.String inputComment;
	
	private java.lang.Integer inputType;
	@Length(max=50)
	private java.lang.String inputEnName;
	@Length(max=50)
	private java.lang.String inputCnName;
	@Length(max=100)
	private java.lang.String linkClassName;
	@Length(max=100)
	private java.lang.String linkInputName;
	@Length(max=250)
	private java.lang.String linkParam;
	@Length(max=65535)
	private java.lang.String inputAddition;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	
	private java.lang.Integer luceneIndexType;
	
	private java.lang.Integer minlength;
	
	private java.lang.Integer maxlength;
	
	private java.lang.Integer required;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsInputTable(){
	}

	public CmsInputTable(
		java.lang.Long id
	){
		this.id = id;
	}

	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getId() {
		return this.id;
	}
	public void setClassName(java.lang.String value) {
		this.className = value;
	}
	
	public java.lang.String getClassName() {
		return this.className;
	}
	public void setInputName(java.lang.String value) {
		this.inputName = value;
	}
	
	public java.lang.String getInputName() {
		return this.inputName;
	}
	public void setClassComment(java.lang.String value) {
		this.classComment = value;
	}
	
	public java.lang.String getClassComment() {
		return this.classComment;
	}
	public void setInputComment(java.lang.String value) {
		this.inputComment = value;
	}
	
	public java.lang.String getInputComment() {
		return this.inputComment;
	}
	public void setInputType(java.lang.Integer value) {
		this.inputType = value;
	}
	
	public java.lang.Integer getInputType() {
		return this.inputType;
	}
	public void setInputEnName(java.lang.String value) {
		this.inputEnName = value;
	}
	
	public java.lang.String getInputEnName() {
		return this.inputEnName;
	}
	public void setInputCnName(java.lang.String value) {
		this.inputCnName = value;
	}
	
	public java.lang.String getInputCnName() {
		return this.inputCnName;
	}
	public void setLinkClassName(java.lang.String value) {
		this.linkClassName = value;
	}
	
	public java.lang.String getLinkClassName() {
		return this.linkClassName;
	}
	public void setLinkInputName(java.lang.String value) {
		this.linkInputName = value;
	}
	
	public java.lang.String getLinkInputName() {
		return this.linkInputName;
	}
	public void setLinkParam(java.lang.String value) {
		this.linkParam = value;
	}
	
	public java.lang.String getLinkParam() {
		return this.linkParam;
	}
	public void setInputAddition(java.lang.String value) {
		this.inputAddition = value;
	}
	
	public java.lang.String getInputAddition() {
		return this.inputAddition;
	}
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
	}
	public void setAddition(java.lang.String value) {
		this.addition = value;
	}
	
	public java.lang.String getAddition() {
		return this.addition;
	}
	public void setCreatetimelong(java.lang.Long value) {
		this.createtimelong = value;
	}
	
	public java.lang.Long getCreatetimelong() {
		return this.createtimelong;
	}
	public void setModifytimelong(java.lang.Long value) {
		this.modifytimelong = value;
	}
	
	public java.lang.Long getModifytimelong() {
		return this.modifytimelong;
	}
	public void setCreateuser(java.lang.Long value) {
		this.createuser = value;
	}
	
	public java.lang.Long getCreateuser() {
		return this.createuser;
	}
	public void setModifyuser(java.lang.Long value) {
		this.modifyuser = value;
	}
	
	public java.lang.Long getModifyuser() {
		return this.modifyuser;
	}
	public void setLuceneIndexType(java.lang.Integer value) {
		this.luceneIndexType = value;
	}
	
	public java.lang.Integer getLuceneIndexType() {
		return this.luceneIndexType;
	}
	public void setMinlength(java.lang.Integer value) {
		this.minlength = value;
	}
	
	public java.lang.Integer getMinlength() {
		return this.minlength;
	}
	public void setMaxlength(java.lang.Integer value) {
		this.maxlength = value;
	}
	
	public java.lang.Integer getMaxlength() {
		return this.maxlength;
	}
	public void setRequired(java.lang.Integer value) {
		this.required = value;
	}
	
	public java.lang.Integer getRequired() {
		return this.required;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("ClassName",getClassName())
			.append("InputName",getInputName())
			.append("ClassComment",getClassComment())
			.append("InputComment",getInputComment())
			.append("InputType",getInputType())
			.append("InputEnName",getInputEnName())
			.append("InputCnName",getInputCnName())
			.append("LinkClassName",getLinkClassName())
			.append("LinkInputName",getLinkInputName())
			.append("LinkParam",getLinkParam())
			.append("InputAddition",getInputAddition())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.append("LuceneIndexType",getLuceneIndexType())
			.append("Minlength",getMinlength())
			.append("Maxlength",getMaxlength())
			.append("Required",getRequired())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsInputTable == false) return false;
		if(this == obj) return true;
		CmsInputTable other = (CmsInputTable)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

