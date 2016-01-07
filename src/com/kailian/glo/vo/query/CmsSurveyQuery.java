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


public class CmsSurveyQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** cnname */
	private java.lang.String cnname;
	/** enname */
	private java.lang.String enname;
	/** surveyType */
	private java.lang.Integer surveyType;
	/** listcount */
	private java.lang.Integer listcount;
	/** surveycount */
	private java.lang.Integer surveycount;
	/** tags */
	private java.lang.String tags;
	/** declearation */
	private java.lang.String declearation;
	/** coverimg */
	private java.lang.String coverimg;
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
	/** surveyId */
	private java.lang.Long surveyId;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.String getCnname() {
		return this.cnname;
	}
	
	public void setCnname(java.lang.String value) {
		this.cnname = value;
	}
	
	public java.lang.String getEnname() {
		return this.enname;
	}
	
	public void setEnname(java.lang.String value) {
		this.enname = value;
	}
	
	public java.lang.Integer getSurveyType() {
		return this.surveyType;
	}
	
	public void setSurveyType(java.lang.Integer value) {
		this.surveyType = value;
	}
	
	public java.lang.Integer getListcount() {
		return this.listcount;
	}
	
	public void setListcount(java.lang.Integer value) {
		this.listcount = value;
	}
	
	public java.lang.Integer getSurveycount() {
		return this.surveycount;
	}
	
	public void setSurveycount(java.lang.Integer value) {
		this.surveycount = value;
	}
	
	public java.lang.String getTags() {
		return this.tags;
	}
	
	public void setTags(java.lang.String value) {
		this.tags = value;
	}
	
	public java.lang.String getDeclearation() {
		return this.declearation;
	}
	
	public void setDeclearation(java.lang.String value) {
		this.declearation = value;
	}
	
	public java.lang.String getCoverimg() {
		return this.coverimg;
	}
	
	public void setCoverimg(java.lang.String value) {
		this.coverimg = value;
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
	
	public java.lang.Long getSurveyId() {
		return this.surveyId;
	}
	
	public void setSurveyId(java.lang.Long value) {
		this.surveyId = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

