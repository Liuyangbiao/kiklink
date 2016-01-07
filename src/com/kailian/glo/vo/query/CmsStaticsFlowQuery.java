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


public class CmsStaticsFlowQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** longSession */
	private java.lang.String longSession;
	/** visitSession */
	private java.lang.String visitSession;
	/** ipAddress */
	private java.lang.String ipAddress;
	/** ipArea */
	private java.lang.String ipArea;
	/** visitType */
	private java.lang.Integer visitType;
	/** dayVisitTimes */
	private java.lang.Integer dayVisitTimes;
	/** userId */
	private java.lang.Long userId;
	/** visitTime */
	private java.lang.String visitTime;
	/** visitTimeLong */
	private java.lang.Long visitTimeLong;
	/** lastVisitTime */
	private java.lang.String lastVisitTime;
	/** lastVisitTimeLong */
	private java.lang.Long lastVisitTimeLong;
	/** referer */
	private java.lang.String referer;
	/** refererSite */
	private java.lang.String refererSite;
	/** enterPage */
	private java.lang.String enterPage;
	/** searchEnge */
	private java.lang.String searchEnge;
	/** searchKey */
	private java.lang.String searchKey;
	/** os */
	private java.lang.String os;
	/** osVersion */
	private java.lang.String osVersion;
	/** hardwareType */
	private java.lang.Integer hardwareType;
	/** screenWidth */
	private java.lang.Integer screenWidth;
	/** screenHeight */
	private java.lang.Integer screenHeight;
	/** screenColor */
	private java.lang.String screenColor;
	/** browser */
	private java.lang.String browser;
	/** flashVersion */
	private java.lang.String flashVersion;
	/** cookieSupport */
	private java.lang.Integer cookieSupport;
	/** javaSupport */
	private java.lang.Integer javaSupport;
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
	/** url */
	private java.lang.String url;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.String getLongSession() {
		return this.longSession;
	}
	
	public void setLongSession(java.lang.String value) {
		this.longSession = value;
	}
	
	public java.lang.String getVisitSession() {
		return this.visitSession;
	}
	
	public void setVisitSession(java.lang.String value) {
		this.visitSession = value;
	}
	
	public java.lang.String getIpAddress() {
		return this.ipAddress;
	}
	
	public void setIpAddress(java.lang.String value) {
		this.ipAddress = value;
	}
	
	public java.lang.String getIpArea() {
		return this.ipArea;
	}
	
	public void setIpArea(java.lang.String value) {
		this.ipArea = value;
	}
	
	public java.lang.Integer getVisitType() {
		return this.visitType;
	}
	
	public void setVisitType(java.lang.Integer value) {
		this.visitType = value;
	}
	
	public java.lang.Integer getDayVisitTimes() {
		return this.dayVisitTimes;
	}
	
	public void setDayVisitTimes(java.lang.Integer value) {
		this.dayVisitTimes = value;
	}
	
	public java.lang.Long getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	public java.lang.String getVisitTime() {
		return this.visitTime;
	}
	
	public void setVisitTime(java.lang.String value) {
		this.visitTime = value;
	}
	
	public java.lang.Long getVisitTimeLong() {
		return this.visitTimeLong;
	}
	
	public void setVisitTimeLong(java.lang.Long value) {
		this.visitTimeLong = value;
	}
	
	public java.lang.String getLastVisitTime() {
		return this.lastVisitTime;
	}
	
	public void setLastVisitTime(java.lang.String value) {
		this.lastVisitTime = value;
	}
	
	public java.lang.Long getLastVisitTimeLong() {
		return this.lastVisitTimeLong;
	}
	
	public void setLastVisitTimeLong(java.lang.Long value) {
		this.lastVisitTimeLong = value;
	}
	
	public java.lang.String getReferer() {
		return this.referer;
	}
	
	public void setReferer(java.lang.String value) {
		this.referer = value;
	}
	
	public java.lang.String getRefererSite() {
		return this.refererSite;
	}
	
	public void setRefererSite(java.lang.String value) {
		this.refererSite = value;
	}
	
	public java.lang.String getEnterPage() {
		return this.enterPage;
	}
	
	public void setEnterPage(java.lang.String value) {
		this.enterPage = value;
	}
	
	public java.lang.String getSearchEnge() {
		return this.searchEnge;
	}
	
	public void setSearchEnge(java.lang.String value) {
		this.searchEnge = value;
	}
	
	public java.lang.String getSearchKey() {
		return this.searchKey;
	}
	
	public void setSearchKey(java.lang.String value) {
		this.searchKey = value;
	}
	
	public java.lang.String getOs() {
		return this.os;
	}
	
	public void setOs(java.lang.String value) {
		this.os = value;
	}
	
	public java.lang.String getOsVersion() {
		return this.osVersion;
	}
	
	public void setOsVersion(java.lang.String value) {
		this.osVersion = value;
	}
	
	public java.lang.Integer getHardwareType() {
		return this.hardwareType;
	}
	
	public void setHardwareType(java.lang.Integer value) {
		this.hardwareType = value;
	}
	
	public java.lang.Integer getScreenWidth() {
		return this.screenWidth;
	}
	
	public void setScreenWidth(java.lang.Integer value) {
		this.screenWidth = value;
	}
	
	public java.lang.Integer getScreenHeight() {
		return this.screenHeight;
	}
	
	public void setScreenHeight(java.lang.Integer value) {
		this.screenHeight = value;
	}
	
	public java.lang.String getScreenColor() {
		return this.screenColor;
	}
	
	public void setScreenColor(java.lang.String value) {
		this.screenColor = value;
	}
	
	public java.lang.String getBrowser() {
		return this.browser;
	}
	
	public void setBrowser(java.lang.String value) {
		this.browser = value;
	}
	
	public java.lang.String getFlashVersion() {
		return this.flashVersion;
	}
	
	public void setFlashVersion(java.lang.String value) {
		this.flashVersion = value;
	}
	
	public java.lang.Integer getCookieSupport() {
		return this.cookieSupport;
	}
	
	public void setCookieSupport(java.lang.Integer value) {
		this.cookieSupport = value;
	}
	
	public java.lang.Integer getJavaSupport() {
		return this.javaSupport;
	}
	
	public void setJavaSupport(java.lang.Integer value) {
		this.javaSupport = value;
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
	
	public java.lang.String getUrl() {
		return this.url;
	}
	
	public void setUrl(java.lang.String value) {
		this.url = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

