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


public class CmsStaticsFlow extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsStaticsFlow";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_LONG_SESSION = "longSession";
	public static final String ALIAS_VISIT_SESSION = "visitSession";
	public static final String ALIAS_IP_ADDRESS = "ipAddress";
	public static final String ALIAS_IP_AREA = "ipArea";
	public static final String ALIAS_VISIT_TYPE = "visitType";
	public static final String ALIAS_DAY_VISIT_TIMES = "dayVisitTimes";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_VISIT_TIME = "visitTime";
	public static final String ALIAS_VISIT_TIME_LONG = "visitTimeLong";
	public static final String ALIAS_LAST_VISIT_TIME = "lastVisitTime";
	public static final String ALIAS_LAST_VISIT_TIME_LONG = "lastVisitTimeLong";
	public static final String ALIAS_REFERER = "referer";
	public static final String ALIAS_REFERER_SITE = "refererSite";
	public static final String ALIAS_ENTER_PAGE = "enterPage";
	public static final String ALIAS_SEARCH_ENGE = "searchEnge";
	public static final String ALIAS_SEARCH_KEY = "searchKey";
	public static final String ALIAS_OS = "os";
	public static final String ALIAS_OS_VERSION = "osVersion";
	public static final String ALIAS_HARDWARE_TYPE = "hardwareType";
	public static final String ALIAS_SCREEN_WIDTH = "screenWidth";
	public static final String ALIAS_SCREEN_HEIGHT = "screenHeight";
	public static final String ALIAS_SCREEN_COLOR = "screenColor";
	public static final String ALIAS_BROWSER = "browser";
	public static final String ALIAS_FLASH_VERSION = "flashVersion";
	public static final String ALIAS_COOKIE_SUPPORT = "cookieSupport";
	public static final String ALIAS_JAVA_SUPPORT = "javaSupport";
	public static final String ALIAS_VISIT_YEAR = "visitYear";
	public static final String ALIAS_VISIT_MONTH = "visitMonth";
	public static final String ALIAS_VISIT_DATE = "visitDate";
	public static final String ALIAS_VISIT_DAY = "visitDay";
	public static final String ALIAS_VISIT_HOUR = "visitHour";
	public static final String ALIAS_VISIT_MINUTE = "visitMinute";
	public static final String ALIAS_SITEID = "siteid";
	public static final String ALIAS_SITE_DOMAIN = "siteDomain";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_URL = "url";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=128)
	private java.lang.String longSession;
	@Length(max=128)
	private java.lang.String visitSession;
	@Length(max=20)
	private java.lang.String ipAddress;
	@Length(max=20)
	private java.lang.String ipArea;
	
	private java.lang.Integer visitType;
	
	private java.lang.Integer dayVisitTimes;
	
	private java.lang.Long userId;
	@Length(max=100)
	private java.lang.String visitTime;
	
	private java.lang.Long visitTimeLong;
	@Length(max=100)
	private java.lang.String lastVisitTime;
	
	private java.lang.Long lastVisitTimeLong;
	@Length(max=150)
	private java.lang.String referer;
	@Length(max=100)
	private java.lang.String refererSite;
	@Length(max=150)
	private java.lang.String enterPage;
	@Length(max=20)
	private java.lang.String searchEnge;
	@Length(max=200)
	private java.lang.String searchKey;
	@Length(max=100)
	private java.lang.String os;
	@Length(max=20)
	private java.lang.String osVersion;
	
	private java.lang.Integer hardwareType;
	
	private java.lang.Integer screenWidth;
	
	private java.lang.Integer screenHeight;
	@Length(max=20)
	private java.lang.String screenColor;
	@Length(max=50)
	private java.lang.String browser;
	@Length(max=20)
	private java.lang.String flashVersion;
	
	private java.lang.Integer cookieSupport;
	
	private java.lang.Integer javaSupport;
	
	private java.lang.Integer visitYear;
	
	private java.lang.Integer visitMonth;
	
	private java.lang.Integer visitDate;
	
	private java.lang.Integer visitDay;
	
	private java.lang.Integer visitHour;
	
	private java.lang.Integer visitMinute;
	
	private java.lang.Long siteid;
	
	private java.lang.Long siteDomain;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	@Length(max=250)
	private java.lang.String url;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsStaticsFlow(){
	}

	public CmsStaticsFlow(
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
	public void setLongSession(java.lang.String value) {
		this.longSession = value;
	}
	
	public java.lang.String getLongSession() {
		return this.longSession;
	}
	public void setVisitSession(java.lang.String value) {
		this.visitSession = value;
	}
	
	public java.lang.String getVisitSession() {
		return this.visitSession;
	}
	public void setIpAddress(java.lang.String value) {
		this.ipAddress = value;
	}
	
	public java.lang.String getIpAddress() {
		return this.ipAddress;
	}
	public void setIpArea(java.lang.String value) {
		this.ipArea = value;
	}
	
	public java.lang.String getIpArea() {
		return this.ipArea;
	}
	public void setVisitType(java.lang.Integer value) {
		this.visitType = value;
	}
	
	public java.lang.Integer getVisitType() {
		return this.visitType;
	}
	public void setDayVisitTimes(java.lang.Integer value) {
		this.dayVisitTimes = value;
	}
	
	public java.lang.Integer getDayVisitTimes() {
		return this.dayVisitTimes;
	}
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	public java.lang.Long getUserId() {
		return this.userId;
	}
	public void setVisitTime(java.lang.String value) {
		this.visitTime = value;
	}
	
	public java.lang.String getVisitTime() {
		return this.visitTime;
	}
	public void setVisitTimeLong(java.lang.Long value) {
		this.visitTimeLong = value;
	}
	
	public java.lang.Long getVisitTimeLong() {
		return this.visitTimeLong;
	}
	public void setLastVisitTime(java.lang.String value) {
		this.lastVisitTime = value;
	}
	
	public java.lang.String getLastVisitTime() {
		return this.lastVisitTime;
	}
	public void setLastVisitTimeLong(java.lang.Long value) {
		this.lastVisitTimeLong = value;
	}
	
	public java.lang.Long getLastVisitTimeLong() {
		return this.lastVisitTimeLong;
	}
	public void setReferer(java.lang.String value) {
		this.referer = value;
	}
	
	public java.lang.String getReferer() {
		return this.referer;
	}
	public void setRefererSite(java.lang.String value) {
		this.refererSite = value;
	}
	
	public java.lang.String getRefererSite() {
		return this.refererSite;
	}
	public void setEnterPage(java.lang.String value) {
		this.enterPage = value;
	}
	
	public java.lang.String getEnterPage() {
		return this.enterPage;
	}
	public void setSearchEnge(java.lang.String value) {
		this.searchEnge = value;
	}
	
	public java.lang.String getSearchEnge() {
		return this.searchEnge;
	}
	public void setSearchKey(java.lang.String value) {
		this.searchKey = value;
	}
	
	public java.lang.String getSearchKey() {
		return this.searchKey;
	}
	public void setOs(java.lang.String value) {
		this.os = value;
	}
	
	public java.lang.String getOs() {
		return this.os;
	}
	public void setOsVersion(java.lang.String value) {
		this.osVersion = value;
	}
	
	public java.lang.String getOsVersion() {
		return this.osVersion;
	}
	public void setHardwareType(java.lang.Integer value) {
		this.hardwareType = value;
	}
	
	public java.lang.Integer getHardwareType() {
		return this.hardwareType;
	}
	public void setScreenWidth(java.lang.Integer value) {
		this.screenWidth = value;
	}
	
	public java.lang.Integer getScreenWidth() {
		return this.screenWidth;
	}
	public void setScreenHeight(java.lang.Integer value) {
		this.screenHeight = value;
	}
	
	public java.lang.Integer getScreenHeight() {
		return this.screenHeight;
	}
	public void setScreenColor(java.lang.String value) {
		this.screenColor = value;
	}
	
	public java.lang.String getScreenColor() {
		return this.screenColor;
	}
	public void setBrowser(java.lang.String value) {
		this.browser = value;
	}
	
	public java.lang.String getBrowser() {
		return this.browser;
	}
	public void setFlashVersion(java.lang.String value) {
		this.flashVersion = value;
	}
	
	public java.lang.String getFlashVersion() {
		return this.flashVersion;
	}
	public void setCookieSupport(java.lang.Integer value) {
		this.cookieSupport = value;
	}
	
	public java.lang.Integer getCookieSupport() {
		return this.cookieSupport;
	}
	public void setJavaSupport(java.lang.Integer value) {
		this.javaSupport = value;
	}
	
	public java.lang.Integer getJavaSupport() {
		return this.javaSupport;
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
	public void setUrl(java.lang.String value) {
		this.url = value;
	}
	
	public java.lang.String getUrl() {
		return this.url;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("LongSession",getLongSession())
			.append("VisitSession",getVisitSession())
			.append("IpAddress",getIpAddress())
			.append("IpArea",getIpArea())
			.append("VisitType",getVisitType())
			.append("DayVisitTimes",getDayVisitTimes())
			.append("UserId",getUserId())
			.append("VisitTime",getVisitTime())
			.append("VisitTimeLong",getVisitTimeLong())
			.append("LastVisitTime",getLastVisitTime())
			.append("LastVisitTimeLong",getLastVisitTimeLong())
			.append("Referer",getReferer())
			.append("RefererSite",getRefererSite())
			.append("EnterPage",getEnterPage())
			.append("SearchEnge",getSearchEnge())
			.append("SearchKey",getSearchKey())
			.append("Os",getOs())
			.append("OsVersion",getOsVersion())
			.append("HardwareType",getHardwareType())
			.append("ScreenWidth",getScreenWidth())
			.append("ScreenHeight",getScreenHeight())
			.append("ScreenColor",getScreenColor())
			.append("Browser",getBrowser())
			.append("FlashVersion",getFlashVersion())
			.append("CookieSupport",getCookieSupport())
			.append("JavaSupport",getJavaSupport())
			.append("VisitYear",getVisitYear())
			.append("VisitMonth",getVisitMonth())
			.append("VisitDate",getVisitDate())
			.append("VisitDay",getVisitDay())
			.append("VisitHour",getVisitHour())
			.append("VisitMinute",getVisitMinute())
			.append("Siteid",getSiteid())
			.append("SiteDomain",getSiteDomain())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.append("Url",getUrl())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsStaticsFlow == false) return false;
		if(this == obj) return true;
		CmsStaticsFlow other = (CmsStaticsFlow)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

