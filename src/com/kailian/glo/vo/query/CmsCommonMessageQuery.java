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


public class CmsCommonMessageQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** fromuserid */
	private java.lang.Long fromuserid;
	/** fromusername */
	private java.lang.String fromusername;
	/** fromuserphoto */
	private java.lang.String fromuserphoto;
	/** touserid */
	private java.lang.Long touserid;
	/** tousername */
	private java.lang.String tousername;
	/** touserphoto */
	private java.lang.String touserphoto;
	/** messagetype */
	private java.lang.Integer messagetype;
	/** contenttype */
	private java.lang.Integer contenttype;
	/** content */
	private java.lang.String content;
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
	
	public java.lang.Long getFromuserid() {
		return this.fromuserid;
	}
	
	public void setFromuserid(java.lang.Long value) {
		this.fromuserid = value;
	}
	
	public java.lang.String getFromusername() {
		return this.fromusername;
	}
	
	public void setFromusername(java.lang.String value) {
		this.fromusername = value;
	}
	
	public java.lang.String getFromuserphoto() {
		return this.fromuserphoto;
	}
	
	public void setFromuserphoto(java.lang.String value) {
		this.fromuserphoto = value;
	}
	
	public java.lang.Long getTouserid() {
		return this.touserid;
	}
	
	public void setTouserid(java.lang.Long value) {
		this.touserid = value;
	}
	
	public java.lang.String getTousername() {
		return this.tousername;
	}
	
	public void setTousername(java.lang.String value) {
		this.tousername = value;
	}
	
	public java.lang.String getTouserphoto() {
		return this.touserphoto;
	}
	
	public void setTouserphoto(java.lang.String value) {
		this.touserphoto = value;
	}
	
	public java.lang.Integer getMessagetype() {
		return this.messagetype;
	}
	
	public void setMessagetype(java.lang.Integer value) {
		this.messagetype = value;
	}
	
	public java.lang.Integer getContenttype() {
		return this.contenttype;
	}
	
	public void setContenttype(java.lang.Integer value) {
		this.contenttype = value;
	}
	
	public java.lang.String getContent() {
		return this.content;
	}
	
	public void setContent(java.lang.String value) {
		this.content = value;
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

