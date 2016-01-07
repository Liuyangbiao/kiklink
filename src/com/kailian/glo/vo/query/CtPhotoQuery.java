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


public class CtPhotoQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** ownerid */
	private java.lang.Long ownerid;
	/** ownertype */
	private java.lang.Integer ownertype;
	/** submiterid */
	private java.lang.Long submiterid;
	/** submitername */
	private java.lang.String submitername;
	/** imgurl */
	private java.lang.String imgurl;
	/** imgname */
	private java.lang.String imgname;
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
	/** ext1 */
	private java.lang.String ext1;
	/** ext2 */
	private java.lang.String ext2;
	/** ext3 */
	private java.lang.String ext3;
	/** ext4 */
	private java.lang.String ext4;
	/** ext5 */
	private java.lang.String ext5;
	/** extint1 */
	private java.lang.Integer extint1;
	/** extint2 */
	private java.lang.Integer extint2;
	/** extint3 */
	private java.lang.Integer extint3;
	/** extint4 */
	private java.lang.Integer extint4;
	/** extint5 */
	private java.lang.Integer extint5;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getOwnerid() {
		return this.ownerid;
	}
	
	public void setOwnerid(java.lang.Long value) {
		this.ownerid = value;
	}
	
	public java.lang.Integer getOwnertype() {
		return this.ownertype;
	}
	
	public void setOwnertype(java.lang.Integer value) {
		this.ownertype = value;
	}
	
	public java.lang.Long getSubmiterid() {
		return this.submiterid;
	}
	
	public void setSubmiterid(java.lang.Long value) {
		this.submiterid = value;
	}
	
	public java.lang.String getSubmitername() {
		return this.submitername;
	}
	
	public void setSubmitername(java.lang.String value) {
		this.submitername = value;
	}
	
	public java.lang.String getImgurl() {
		return this.imgurl;
	}
	
	public void setImgurl(java.lang.String value) {
		this.imgurl = value;
	}
	
	public java.lang.String getImgname() {
		return this.imgname;
	}
	
	public void setImgname(java.lang.String value) {
		this.imgname = value;
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
	
	public java.lang.String getExt1() {
		return this.ext1;
	}
	
	public void setExt1(java.lang.String value) {
		this.ext1 = value;
	}
	
	public java.lang.String getExt2() {
		return this.ext2;
	}
	
	public void setExt2(java.lang.String value) {
		this.ext2 = value;
	}
	
	public java.lang.String getExt3() {
		return this.ext3;
	}
	
	public void setExt3(java.lang.String value) {
		this.ext3 = value;
	}
	
	public java.lang.String getExt4() {
		return this.ext4;
	}
	
	public void setExt4(java.lang.String value) {
		this.ext4 = value;
	}
	
	public java.lang.String getExt5() {
		return this.ext5;
	}
	
	public void setExt5(java.lang.String value) {
		this.ext5 = value;
	}
	
	public java.lang.Integer getExtint1() {
		return this.extint1;
	}
	
	public void setExtint1(java.lang.Integer value) {
		this.extint1 = value;
	}
	
	public java.lang.Integer getExtint2() {
		return this.extint2;
	}
	
	public void setExtint2(java.lang.Integer value) {
		this.extint2 = value;
	}
	
	public java.lang.Integer getExtint3() {
		return this.extint3;
	}
	
	public void setExtint3(java.lang.Integer value) {
		this.extint3 = value;
	}
	
	public java.lang.Integer getExtint4() {
		return this.extint4;
	}
	
	public void setExtint4(java.lang.Integer value) {
		this.extint4 = value;
	}
	
	public java.lang.Integer getExtint5() {
		return this.extint5;
	}
	
	public void setExtint5(java.lang.Integer value) {
		this.extint5 = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

