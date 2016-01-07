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


public class CmsStaticsGatherQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** gatherType */
	private java.lang.Integer gatherType;
	/** timeType */
	private java.lang.Integer timeType;
	/** data */
	private java.lang.String data;
	/** count */
	private java.lang.Long count;
	/** visitYear */
	private java.lang.Integer visitYear;
	/** visitMonth */
	private java.lang.Integer visitMonth;
	/** visitDate */
	private java.lang.Integer visitDate;
	/** visitDay */
	private java.lang.Integer visitDay;
	/** visitHour */
	private java.lang.Integer visitHour;
	/** visitMinute */
	private java.lang.Integer visitMinute;
	/** siteid */
	private java.lang.Long siteid;
	/** siteDomain */
	private java.lang.Long siteDomain;
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
	/** status */
	private java.lang.Integer status;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Integer getGatherType() {
		return this.gatherType;
	}
	
	public void setGatherType(java.lang.Integer value) {
		this.gatherType = value;
	}
	
	public java.lang.Integer getTimeType() {
		return this.timeType;
	}
	
	public void setTimeType(java.lang.Integer value) {
		this.timeType = value;
	}
	
	public java.lang.String getData() {
		return this.data;
	}
	
	public void setData(java.lang.String value) {
		this.data = value;
	}
	
	public java.lang.Long getCount() {
		return this.count;
	}
	
	public void setCount(java.lang.Long value) {
		this.count = value;
	}
	
	public java.lang.Integer getVisitYear() {
		return this.visitYear;
	}
	
	public void setVisitYear(java.lang.Integer value) {
		this.visitYear = value;
	}
	
	public java.lang.Integer getVisitMonth() {
		return this.visitMonth;
	}
	
	public void setVisitMonth(java.lang.Integer value) {
		this.visitMonth = value;
	}
	
	public java.lang.Integer getVisitDate() {
		return this.visitDate;
	}
	
	public void setVisitDate(java.lang.Integer value) {
		this.visitDate = value;
	}
	
	public java.lang.Integer getVisitDay() {
		return this.visitDay;
	}
	
	public void setVisitDay(java.lang.Integer value) {
		this.visitDay = value;
	}
	
	public java.lang.Integer getVisitHour() {
		return this.visitHour;
	}
	
	public void setVisitHour(java.lang.Integer value) {
		this.visitHour = value;
	}
	
	public java.lang.Integer getVisitMinute() {
		return this.visitMinute;
	}
	
	public void setVisitMinute(java.lang.Integer value) {
		this.visitMinute = value;
	}
	
	public java.lang.Long getSiteid() {
		return this.siteid;
	}
	
	public void setSiteid(java.lang.Long value) {
		this.siteid = value;
	}
	
	public java.lang.Long getSiteDomain() {
		return this.siteDomain;
	}
	
	public void setSiteDomain(java.lang.Long value) {
		this.siteDomain = value;
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
	
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

