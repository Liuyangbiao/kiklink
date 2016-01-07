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


public class CmsSurvey extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsSurvey";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_CNNAME = "cnname";
	public static final String ALIAS_ENNAME = "enname";
	public static final String ALIAS_SURVEY_TYPE = "surveyType";
	public static final String ALIAS_LISTCOUNT = "listcount";
	public static final String ALIAS_SURVEYCOUNT = "surveycount";
	public static final String ALIAS_TAGS = "tags";
	public static final String ALIAS_DECLEARATION = "declearation";
	public static final String ALIAS_COVERIMG = "coverimg";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_SURVEY_ID = "surveyId";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=50)
	private java.lang.String cnname;
	@Length(max=50)
	private java.lang.String enname;
	
	private java.lang.Integer surveyType;
	
	private java.lang.Integer listcount;
	
	private java.lang.Integer surveycount;
	@Length(max=200)
	private java.lang.String tags;
	@Length(max=65535)
	private java.lang.String declearation;
	@Length(max=200)
	private java.lang.String coverimg;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	
	private java.lang.Long surveyId;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsSurvey(){
	}

	public CmsSurvey(
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
	public void setCnname(java.lang.String value) {
		this.cnname = value;
	}
	
	public java.lang.String getCnname() {
		return this.cnname;
	}
	public void setEnname(java.lang.String value) {
		this.enname = value;
	}
	
	public java.lang.String getEnname() {
		return this.enname;
	}
	public void setSurveyType(java.lang.Integer value) {
		this.surveyType = value;
	}
	
	public java.lang.Integer getSurveyType() {
		return this.surveyType;
	}
	public void setListcount(java.lang.Integer value) {
		this.listcount = value;
	}
	
	public java.lang.Integer getListcount() {
		return this.listcount;
	}
	public void setSurveycount(java.lang.Integer value) {
		this.surveycount = value;
	}
	
	public java.lang.Integer getSurveycount() {
		return this.surveycount;
	}
	public void setTags(java.lang.String value) {
		this.tags = value;
	}
	
	public java.lang.String getTags() {
		return this.tags;
	}
	public void setDeclearation(java.lang.String value) {
		this.declearation = value;
	}
	
	public java.lang.String getDeclearation() {
		return this.declearation;
	}
	public void setCoverimg(java.lang.String value) {
		this.coverimg = value;
	}
	
	public java.lang.String getCoverimg() {
		return this.coverimg;
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
	public void setSurveyId(java.lang.Long value) {
		this.surveyId = value;
	}
	
	public java.lang.Long getSurveyId() {
		return this.surveyId;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Cnname",getCnname())
			.append("Enname",getEnname())
			.append("SurveyType",getSurveyType())
			.append("Listcount",getListcount())
			.append("Surveycount",getSurveycount())
			.append("Tags",getTags())
			.append("Declearation",getDeclearation())
			.append("Coverimg",getCoverimg())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.append("SurveyId",getSurveyId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsSurvey == false) return false;
		if(this == obj) return true;
		CmsSurvey other = (CmsSurvey)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

