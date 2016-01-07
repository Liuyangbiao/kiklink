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


public class CmsAjaxConfig extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsAjaxConfig";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_CONFIGTYPE = "configtype";
	public static final String ALIAS_CONFIGTYPENAME = "configtypename";
	public static final String ALIAS_CONFIGNAME = "configname";
	public static final String ALIAS_AJAXULR = "ajaxulr";
	public static final String ALIAS_INPUTDETAILS = "inputdetails";
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
	
	private java.lang.Integer configtype;
	@Length(max=50)
	private java.lang.String configtypename;
	@Length(max=50)
	private java.lang.String configname;
	@Length(max=250)
	private java.lang.String ajaxulr;
	@Length(max=65535)
	private java.lang.String inputdetails;
	
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

	public CmsAjaxConfig(){
	}

	public CmsAjaxConfig(
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
	public void setConfigtype(java.lang.Integer value) {
		this.configtype = value;
	}
	
	public java.lang.Integer getConfigtype() {
		return this.configtype;
	}
	public void setConfigtypename(java.lang.String value) {
		this.configtypename = value;
	}
	
	public java.lang.String getConfigtypename() {
		return this.configtypename;
	}
	public void setConfigname(java.lang.String value) {
		this.configname = value;
	}
	
	public java.lang.String getConfigname() {
		return this.configname;
	}
	public void setAjaxulr(java.lang.String value) {
		this.ajaxulr = value;
	}
	
	public java.lang.String getAjaxulr() {
		return this.ajaxulr;
	}
	public void setInputdetails(java.lang.String value) {
		this.inputdetails = value;
	}
	
	public java.lang.String getInputdetails() {
		return this.inputdetails;
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
			.append("Configtype",getConfigtype())
			.append("Configtypename",getConfigtypename())
			.append("Configname",getConfigname())
			.append("Ajaxulr",getAjaxulr())
			.append("Inputdetails",getInputdetails())
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
		if(obj instanceof CmsAjaxConfig == false) return false;
		if(this == obj) return true;
		CmsAjaxConfig other = (CmsAjaxConfig)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

