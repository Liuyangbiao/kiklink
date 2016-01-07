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


public class KlShoppingCouponQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** userid */
	private java.lang.Long userid;
	/** couponcode */
	private java.lang.String couponcode;
	/** type */
	private java.lang.Integer type;
	/** price */
	private java.lang.Float price;
	/** validDate */
	private java.lang.String validDate;
	/** validDateLong */
	private java.lang.Long validDateLong;
	/** invalidDate */
	private java.lang.String invalidDate;
	/** invalidDateLong */
	private java.lang.Long invalidDateLong;
	/** source */
	private java.lang.Integer source;
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

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.String getCouponcode() {
		return this.couponcode;
	}
	
	public void setCouponcode(java.lang.String value) {
		this.couponcode = value;
	}
	
	public java.lang.Integer getType() {
		return this.type;
	}
	
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.String getValidDate() {
		return this.validDate;
	}
	
	public void setValidDate(java.lang.String value) {
		this.validDate = value;
	}
	
	public java.lang.Long getValidDateLong() {
		return this.validDateLong;
	}
	
	public void setValidDateLong(java.lang.Long value) {
		this.validDateLong = value;
	}
	
	public java.lang.String getInvalidDate() {
		return this.invalidDate;
	}
	
	public void setInvalidDate(java.lang.String value) {
		this.invalidDate = value;
	}
	
	public java.lang.Long getInvalidDateLong() {
		return this.invalidDateLong;
	}
	
	public void setInvalidDateLong(java.lang.Long value) {
		this.invalidDateLong = value;
	}
	
	public java.lang.Integer getSource() {
		return this.source;
	}
	
	public void setSource(java.lang.Integer value) {
		this.source = value;
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
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

