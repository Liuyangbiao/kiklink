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


public class CmsRequestlogQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** userid */
	private java.lang.Long userid;
	/** username */
	private java.lang.String username;
	/** requesturl */
	private java.lang.String requesturl;
	/** requestname */
	private java.lang.String requestname;
	/** className */
	private java.lang.String className;
	/** methodName */
	private java.lang.String methodName;
	/** ipaddr */
	private java.lang.String ipaddr;
	/** ipfrom */
	private java.lang.String ipfrom;
	/** reqtype */
	private java.lang.Integer reqtype;
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
	
	public java.lang.String getUsername() {
		return this.username;
	}
	
	public void setUsername(java.lang.String value) {
		this.username = value;
	}
	
	public java.lang.String getRequesturl() {
		return this.requesturl;
	}
	
	public void setRequesturl(java.lang.String value) {
		this.requesturl = value;
	}
	
	public java.lang.String getRequestname() {
		return this.requestname;
	}
	
	public void setRequestname(java.lang.String value) {
		this.requestname = value;
	}
	
	public java.lang.String getClassName() {
		return this.className;
	}
	
	public void setClassName(java.lang.String value) {
		this.className = value;
	}
	
	public java.lang.String getMethodName() {
		return this.methodName;
	}
	
	public void setMethodName(java.lang.String value) {
		this.methodName = value;
	}
	
	public java.lang.String getIpaddr() {
		return this.ipaddr;
	}
	
	public void setIpaddr(java.lang.String value) {
		this.ipaddr = value;
	}
	
	public java.lang.String getIpfrom() {
		return this.ipfrom;
	}
	
	public void setIpfrom(java.lang.String value) {
		this.ipfrom = value;
	}
	
	public java.lang.Integer getReqtype() {
		return this.reqtype;
	}
	
	public void setReqtype(java.lang.Integer value) {
		this.reqtype = value;
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

