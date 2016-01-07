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


public class KlShoppingPiliangtime extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "KlShoppingPiliangtime";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_SHOPID = "shopid";
	public static final String ALIAS_USERID = "userid";
	public static final String ALIAS_COACHID = "coachid";
	public static final String ALIAS_SHOPPEDCLASSID = "shoppedclassid";
	public static final String ALIAS_DATEFROM = "datefrom";
	public static final String ALIAS_DATETO = "dateto";
	public static final String ALIAS_WEEKDAYS = "weekdays";
	public static final String ALIAS_TIMEFROM = "timefrom";
	public static final String ALIAS_TIMETO = "timeto";
	public static final String ALIAS_TIMEOK = "timeok";
	public static final String ALIAS_EXT1 = "课程id";
	public static final String ALIAS_EXT2 = "课程名";
	public static final String ALIAS_EXT3 = "ext3";
	public static final String ALIAS_EXT4 = "ext4";
	public static final String ALIAS_EXT5 = "ext5";
	public static final String ALIAS_EXT_INT1 = "extInt1";
	public static final String ALIAS_EXT_INT2 = "extInt2";
	public static final String ALIAS_EXT_INT3 = "extInt3";
	public static final String ALIAS_EXT_INT4 = "extInt4";
	public static final String ALIAS_EXT_INT5 = "extInt5";
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
	
	private java.lang.Long shopid;
	
	private java.lang.Long userid;
	
	private java.lang.Long coachid;
	
	private java.lang.Long shoppedclassid;
	
	private java.lang.Integer datefrom;
	
	private java.lang.Integer dateto;
	@Length(max=100)
	private java.lang.String weekdays;
	
	private java.lang.Integer timefrom;
	
	private java.lang.Integer timeto;
	
	private java.lang.Integer timeok;
	@Length(max=200)
	private java.lang.String ext1;
	@Length(max=200)
	private java.lang.String ext2;
	@Length(max=200)
	private java.lang.String ext3;
	@Length(max=200)
	private java.lang.String ext4;
	@Length(max=200)
	private java.lang.String ext5;
	
	private java.lang.Integer extInt1;
	
	private java.lang.Integer extInt2;
	
	private java.lang.Integer extInt3;
	
	private java.lang.Integer extInt4;
	
	private java.lang.Integer extInt5;
	
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

	public KlShoppingPiliangtime(){
	}

	public KlShoppingPiliangtime(
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
	public void setShopid(java.lang.Long value) {
		this.shopid = value;
	}
	
	public java.lang.Long getShopid() {
		return this.shopid;
	}
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	public void setCoachid(java.lang.Long value) {
		this.coachid = value;
	}
	
	public java.lang.Long getCoachid() {
		return this.coachid;
	}
	public void setShoppedclassid(java.lang.Long value) {
		this.shoppedclassid = value;
	}
	
	public java.lang.Long getShoppedclassid() {
		return this.shoppedclassid;
	}
	public void setDatefrom(java.lang.Integer value) {
		this.datefrom = value;
	}
	
	public java.lang.Integer getDatefrom() {
		return this.datefrom;
	}
	public void setDateto(java.lang.Integer value) {
		this.dateto = value;
	}
	
	public java.lang.Integer getDateto() {
		return this.dateto;
	}
	public void setWeekdays(java.lang.String value) {
		this.weekdays = value;
	}
	
	public java.lang.String getWeekdays() {
		return this.weekdays;
	}
	public void setTimefrom(java.lang.Integer value) {
		this.timefrom = value;
	}
	
	public java.lang.Integer getTimefrom() {
		return this.timefrom;
	}
	public void setTimeto(java.lang.Integer value) {
		this.timeto = value;
	}
	
	public java.lang.Integer getTimeto() {
		return this.timeto;
	}
	public void setTimeok(java.lang.Integer value) {
		this.timeok = value;
	}
	
	public java.lang.Integer getTimeok() {
		return this.timeok;
	}
	public void setExt1(java.lang.String value) {
		this.ext1 = value;
	}
	
	public java.lang.String getExt1() {
		return this.ext1;
	}
	public void setExt2(java.lang.String value) {
		this.ext2 = value;
	}
	
	public java.lang.String getExt2() {
		return this.ext2;
	}
	public void setExt3(java.lang.String value) {
		this.ext3 = value;
	}
	
	public java.lang.String getExt3() {
		return this.ext3;
	}
	public void setExt4(java.lang.String value) {
		this.ext4 = value;
	}
	
	public java.lang.String getExt4() {
		return this.ext4;
	}
	public void setExt5(java.lang.String value) {
		this.ext5 = value;
	}
	
	public java.lang.String getExt5() {
		return this.ext5;
	}
	public void setExtInt1(java.lang.Integer value) {
		this.extInt1 = value;
	}
	
	public java.lang.Integer getExtInt1() {
		return this.extInt1;
	}
	public void setExtInt2(java.lang.Integer value) {
		this.extInt2 = value;
	}
	
	public java.lang.Integer getExtInt2() {
		return this.extInt2;
	}
	public void setExtInt3(java.lang.Integer value) {
		this.extInt3 = value;
	}
	
	public java.lang.Integer getExtInt3() {
		return this.extInt3;
	}
	public void setExtInt4(java.lang.Integer value) {
		this.extInt4 = value;
	}
	
	public java.lang.Integer getExtInt4() {
		return this.extInt4;
	}
	public void setExtInt5(java.lang.Integer value) {
		this.extInt5 = value;
	}
	
	public java.lang.Integer getExtInt5() {
		return this.extInt5;
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
			.append("Shopid",getShopid())
			.append("Userid",getUserid())
			.append("Coachid",getCoachid())
			.append("Shoppedclassid",getShoppedclassid())
			.append("Datefrom",getDatefrom())
			.append("Dateto",getDateto())
			.append("Weekdays",getWeekdays())
			.append("Timefrom",getTimefrom())
			.append("Timeto",getTimeto())
			.append("Timeok",getTimeok())
			.append("Ext1",getExt1())
			.append("Ext2",getExt2())
			.append("Ext3",getExt3())
			.append("Ext4",getExt4())
			.append("Ext5",getExt5())
			.append("ExtInt1",getExtInt1())
			.append("ExtInt2",getExtInt2())
			.append("ExtInt3",getExtInt3())
			.append("ExtInt4",getExtInt4())
			.append("ExtInt5",getExtInt5())
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
		if(obj instanceof KlShoppingPiliangtime == false) return false;
		if(this == obj) return true;
		KlShoppingPiliangtime other = (KlShoppingPiliangtime)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

