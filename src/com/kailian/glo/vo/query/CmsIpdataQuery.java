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


public class CmsIpdataQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** ipfrom */
	private java.lang.String ipfrom;
	/** ipto */
	private java.lang.String ipto;
	/** ipcommon */
	private java.lang.String ipcommon;
	/** numFrom */
	private java.lang.Long numFrom;
	/** numTo */
	private java.lang.Long numTo;
	/** area */
	private java.lang.String area;
	/** operatior */
	private java.lang.String operatior;
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
	
	public java.lang.String getIpfrom() {
		return this.ipfrom;
	}
	
	public void setIpfrom(java.lang.String value) {
		this.ipfrom = value;
	}
	
	public java.lang.String getIpto() {
		return this.ipto;
	}
	
	public void setIpto(java.lang.String value) {
		this.ipto = value;
	}
	
	public java.lang.String getIpcommon() {
		return this.ipcommon;
	}
	
	public void setIpcommon(java.lang.String value) {
		this.ipcommon = value;
	}
	
	public java.lang.Long getNumFrom() {
		return this.numFrom;
	}
	
	public void setNumFrom(java.lang.Long value) {
		this.numFrom = value;
	}
	
	public java.lang.Long getNumTo() {
		return this.numTo;
	}
	
	public void setNumTo(java.lang.Long value) {
		this.numTo = value;
	}
	
	public java.lang.String getArea() {
		return this.area;
	}
	
	public void setArea(java.lang.String value) {
		this.area = value;
	}
	
	public java.lang.String getOperatior() {
		return this.operatior;
	}
	
	public void setOperatior(java.lang.String value) {
		this.operatior = value;
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

