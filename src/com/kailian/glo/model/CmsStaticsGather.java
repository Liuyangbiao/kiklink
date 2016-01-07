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


public class CmsStaticsGather extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsStaticsGather";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_GATHER_TYPE = "gatherType";
	public static final String ALIAS_TIME_TYPE = "timeType";
	public static final String ALIAS_DATA = "data";
	public static final String ALIAS_COUNT = "count";
	public static final String ALIAS_VISIT_YEAR = "visitYear";
	public static final String ALIAS_VISIT_MONTH = "visitMonth";
	public static final String ALIAS_VISIT_DATE = "visitDate";
	public static final String ALIAS_VISIT_DAY = "visitDay";
	public static final String ALIAS_VISIT_HOUR = "visitHour";
	public static final String ALIAS_VISIT_MINUTE = "visitMinute";
	public static final String ALIAS_SITEID = "siteid";
	public static final String ALIAS_SITE_DOMAIN = "siteDomain";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_STATUS = "status";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Integer gatherType;
	
	private java.lang.Integer timeType;
	@Length(max=200)
	private java.lang.String data;
	
	private java.lang.Long count;
	
	private java.lang.Integer visitYear;
	
	private java.lang.Integer visitMonth;
	
	private java.lang.Integer visitDate;
	
	private java.lang.Integer visitDay;
	
	private java.lang.Integer visitHour;
	
	private java.lang.Integer visitMinute;
	
	private java.lang.Long siteid;
	
	private java.lang.Long siteDomain;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	
	private java.lang.Integer status;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsStaticsGather(){
	}

	public CmsStaticsGather(
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
	public void setGatherType(java.lang.Integer value) {
		this.gatherType = value;
	}
	
	public java.lang.Integer getGatherType() {
		return this.gatherType;
	}
	public void setTimeType(java.lang.Integer value) {
		this.timeType = value;
	}
	
	public java.lang.Integer getTimeType() {
		return this.timeType;
	}
	public void setData(java.lang.String value) {
		this.data = value;
	}
	
	public java.lang.String getData() {
		return this.data;
	}
	public void setCount(java.lang.Long value) {
		this.count = value;
	}
	
	public java.lang.Long getCount() {
		return this.count;
	}
	public void setVisitYear(java.lang.Integer value) {
		this.visitYear = value;
	}
	
	public java.lang.Integer getVisitYear() {
		return this.visitYear;
	}
	public void setVisitMonth(java.lang.Integer value) {
		this.visitMonth = value;
	}
	
	public java.lang.Integer getVisitMonth() {
		return this.visitMonth;
	}
	public void setVisitDate(java.lang.Integer value) {
		this.visitDate = value;
	}
	
	public java.lang.Integer getVisitDate() {
		return this.visitDate;
	}
	public void setVisitDay(java.lang.Integer value) {
		this.visitDay = value;
	}
	
	public java.lang.Integer getVisitDay() {
		return this.visitDay;
	}
	public void setVisitHour(java.lang.Integer value) {
		this.visitHour = value;
	}
	
	public java.lang.Integer getVisitHour() {
		return this.visitHour;
	}
	public void setVisitMinute(java.lang.Integer value) {
		this.visitMinute = value;
	}
	
	public java.lang.Integer getVisitMinute() {
		return this.visitMinute;
	}
	public void setSiteid(java.lang.Long value) {
		this.siteid = value;
	}
	
	public java.lang.Long getSiteid() {
		return this.siteid;
	}
	public void setSiteDomain(java.lang.Long value) {
		this.siteDomain = value;
	}
	
	public java.lang.Long getSiteDomain() {
		return this.siteDomain;
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
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("GatherType",getGatherType())
			.append("TimeType",getTimeType())
			.append("Data",getData())
			.append("Count",getCount())
			.append("VisitYear",getVisitYear())
			.append("VisitMonth",getVisitMonth())
			.append("VisitDate",getVisitDate())
			.append("VisitDay",getVisitDay())
			.append("VisitHour",getVisitHour())
			.append("VisitMinute",getVisitMinute())
			.append("Siteid",getSiteid())
			.append("SiteDomain",getSiteDomain())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.append("Status",getStatus())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsStaticsGather == false) return false;
		if(this == obj) return true;
		CmsStaticsGather other = (CmsStaticsGather)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

