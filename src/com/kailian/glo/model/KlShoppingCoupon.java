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


public class KlShoppingCoupon extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "KlShoppingCoupon";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USERID = "userid";
	public static final String ALIAS_COUPONCODE = "couponcode";
	public static final String ALIAS_TYPE = "type";
	public static final String ALIAS_PRICE = "price";
	public static final String ALIAS_VALID_DATE = "validDate";
	public static final String ALIAS_VALID_DATE_LONG = "validDateLong";
	public static final String ALIAS_INVALID_DATE = "invalidDate";
	public static final String ALIAS_INVALID_DATE_LONG = "invalidDateLong";
	public static final String ALIAS_SOURCE = "source";
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
	
	private java.lang.Long userid;
	@Length(max=100)
	private java.lang.String couponcode;
	
	private java.lang.Integer type;
	
	private java.lang.Float price;
	@Length(max=20)
	private java.lang.String validDate;
	
	private java.lang.Long validDateLong;
	@Length(max=20)
	private java.lang.String invalidDate;
	
	private java.lang.Long invalidDateLong;
	
	private java.lang.Integer source;
	
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

	public KlShoppingCoupon(){
	}

	public KlShoppingCoupon(
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
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	public void setCouponcode(java.lang.String value) {
		this.couponcode = value;
	}
	
	public java.lang.String getCouponcode() {
		return this.couponcode;
	}
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	
	public java.lang.Integer getType() {
		return this.type;
	}
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	public void setValidDate(java.lang.String value) {
		this.validDate = value;
	}
	
	public java.lang.String getValidDate() {
		return this.validDate;
	}
	public void setValidDateLong(java.lang.Long value) {
		this.validDateLong = value;
	}
	
	public java.lang.Long getValidDateLong() {
		return this.validDateLong;
	}
	public void setInvalidDate(java.lang.String value) {
		this.invalidDate = value;
	}
	
	public java.lang.String getInvalidDate() {
		return this.invalidDate;
	}
	public void setInvalidDateLong(java.lang.Long value) {
		this.invalidDateLong = value;
	}
	
	public java.lang.Long getInvalidDateLong() {
		return this.invalidDateLong;
	}
	public void setSource(java.lang.Integer value) {
		this.source = value;
	}
	
	public java.lang.Integer getSource() {
		return this.source;
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
			.append("Userid",getUserid())
			.append("Couponcode",getCouponcode())
			.append("Type",getType())
			.append("Price",getPrice())
			.append("ValidDate",getValidDate())
			.append("ValidDateLong",getValidDateLong())
			.append("InvalidDate",getInvalidDate())
			.append("InvalidDateLong",getInvalidDateLong())
			.append("Source",getSource())
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
		if(obj instanceof KlShoppingCoupon == false) return false;
		if(this == obj) return true;
		KlShoppingCoupon other = (KlShoppingCoupon)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

