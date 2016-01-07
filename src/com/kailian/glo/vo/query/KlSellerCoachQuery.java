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
import org.hibernate.validator.constraints.Length;

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


public class KlSellerCoachQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** shopId */
	private java.lang.Long shopId;
	/** name */
	private java.lang.String name;
	/** sex */
	private java.lang.Integer sex;
	/** birthYear */
	private java.lang.Integer birthYear;
	/** birthMonth */
	private java.lang.Integer birthMonth;
	/** birthDate */
	private java.lang.Integer birthDate;
	/** photo */
	private java.lang.String photo;
	/** profile */
	private java.lang.String profile;
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
	
	private java.lang.String ids;
	
	private java.lang.String honor;
	private java.lang.String goodat;

	public java.lang.String getHonor() {
		return honor;
	}

	public void setHonor(java.lang.String honor) {
		this.honor = honor;
	}

	public java.lang.String getGoodat() {
		return goodat;
	}

	public void setGoodat(java.lang.String goodat) {
		this.goodat = goodat;
	}

	public java.lang.String getIds() {
		return ids;
	}

	public void setIds(java.lang.String ids) {
		this.ids = ids;
	}

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getShopId() {
		return this.shopId;
	}
	
	public void setShopId(java.lang.Long value) {
		this.shopId = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.Integer getSex() {
		return this.sex;
	}
	
	public void setSex(java.lang.Integer value) {
		this.sex = value;
	}
	
	public java.lang.Integer getBirthYear() {
		return this.birthYear;
	}
	
	public void setBirthYear(java.lang.Integer value) {
		this.birthYear = value;
	}
	
	public java.lang.Integer getBirthMonth() {
		return this.birthMonth;
	}
	
	public void setBirthMonth(java.lang.Integer value) {
		this.birthMonth = value;
	}
	
	public java.lang.Integer getBirthDate() {
		return this.birthDate;
	}
	
	public void setBirthDate(java.lang.Integer value) {
		this.birthDate = value;
	}
	
	public java.lang.String getPhoto() {
		return this.photo;
	}
	
	public void setPhoto(java.lang.String value) {
		this.photo = value;
	}
	
	public java.lang.String getProfile() {
		return this.profile;
	}
	
	public void setProfile(java.lang.String value) {
		this.profile = value;
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

