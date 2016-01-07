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


public class CmsBiaodanConfig extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsBiaodanConfig";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_INPUT_LIST_ID = "inputListId";
	public static final String ALIAS_INPUT_LIST_TYPE = "inputListType";
	public static final String ALIAS_INPUT_TYPE = "inputType";
	public static final String ALIAS_INPUT_EN_NAME = "inputEnName";
	public static final String ALIAS_INPUT_CN_NAME = "inputCnName";
	public static final String ALIAS_INPUT_SHOW = "inputShow";
	public static final String ALIAS_LUCENE_INDEX_TYPE = "luceneIndexType";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Long inputListId;
	
	private java.lang.Integer inputListType;
	
	private java.lang.Integer inputType;
	@Length(max=50)
	private java.lang.String inputEnName;
	@Length(max=50)
	private java.lang.String inputCnName;
	
	private java.lang.Integer inputShow;
	
	private java.lang.Integer luceneIndexType;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsBiaodanConfig(){
	}

	public CmsBiaodanConfig(
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
	public void setInputListId(java.lang.Long value) {
		this.inputListId = value;
	}
	
	public java.lang.Long getInputListId() {
		return this.inputListId;
	}
	public void setInputListType(java.lang.Integer value) {
		this.inputListType = value;
	}
	
	public java.lang.Integer getInputListType() {
		return this.inputListType;
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
	public void setInputShow(java.lang.Integer value) {
		this.inputShow = value;
	}
	
	public java.lang.Integer getInputShow() {
		return this.inputShow;
	}
	public void setLuceneIndexType(java.lang.Integer value) {
		this.luceneIndexType = value;
	}
	
	public java.lang.Integer getLuceneIndexType() {
		return this.luceneIndexType;
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

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("InputListId",getInputListId())
			.append("InputListType",getInputListType())
			.append("InputType",getInputType())
			.append("InputEnName",getInputEnName())
			.append("InputCnName",getInputCnName())
			.append("InputShow",getInputShow())
			.append("LuceneIndexType",getLuceneIndexType())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsBiaodanConfig == false) return false;
		if(this == obj) return true;
		CmsBiaodanConfig other = (CmsBiaodanConfig)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

