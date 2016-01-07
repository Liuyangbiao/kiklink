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


public class CmsStProductgroupQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** groupname */
	private java.lang.String groupname;
	/** description */
	private java.lang.String description;
	/** bgimg1 */
	private java.lang.String bgimg1;
	/** bgimgleft */
	private java.lang.String bgimgleft;
	/** bgimgright */
	private java.lang.String bgimgright;
	/** headheight */
	private java.lang.Integer headheight;
	/** grouptype */
	private java.lang.Integer grouptype;
	/** rank */
	private java.lang.Integer rank;
	/** styleclass */
	private java.lang.String styleclass;
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
	/** extInt1 */
	private java.lang.Integer extInt1;
	/** extInt2 */
	private java.lang.Integer extInt2;
	/** extInt3 */
	private java.lang.Integer extInt3;
	/** extInt4 */
	private java.lang.Integer extInt4;
	/** extInt5 */
	private java.lang.Integer extInt5;
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
	/** topicid */
	private java.lang.Long topicid;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.String getGroupname() {
		return this.groupname;
	}
	
	public void setGroupname(java.lang.String value) {
		this.groupname = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.String getBgimg1() {
		return this.bgimg1;
	}
	
	public void setBgimg1(java.lang.String value) {
		this.bgimg1 = value;
	}
	
	public java.lang.String getBgimgleft() {
		return this.bgimgleft;
	}
	
	public void setBgimgleft(java.lang.String value) {
		this.bgimgleft = value;
	}
	
	public java.lang.String getBgimgright() {
		return this.bgimgright;
	}
	
	public void setBgimgright(java.lang.String value) {
		this.bgimgright = value;
	}
	
	public java.lang.Integer getHeadheight() {
		return this.headheight;
	}
	
	public void setHeadheight(java.lang.Integer value) {
		this.headheight = value;
	}
	
	public java.lang.Integer getGrouptype() {
		return this.grouptype;
	}
	
	public void setGrouptype(java.lang.Integer value) {
		this.grouptype = value;
	}
	
	public java.lang.Integer getRank() {
		return this.rank;
	}
	
	public void setRank(java.lang.Integer value) {
		this.rank = value;
	}
	
	public java.lang.String getStyleclass() {
		return this.styleclass;
	}
	
	public void setStyleclass(java.lang.String value) {
		this.styleclass = value;
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
	
	public java.lang.Integer getExtInt1() {
		return this.extInt1;
	}
	
	public void setExtInt1(java.lang.Integer value) {
		this.extInt1 = value;
	}
	
	public java.lang.Integer getExtInt2() {
		return this.extInt2;
	}
	
	public void setExtInt2(java.lang.Integer value) {
		this.extInt2 = value;
	}
	
	public java.lang.Integer getExtInt3() {
		return this.extInt3;
	}
	
	public void setExtInt3(java.lang.Integer value) {
		this.extInt3 = value;
	}
	
	public java.lang.Integer getExtInt4() {
		return this.extInt4;
	}
	
	public void setExtInt4(java.lang.Integer value) {
		this.extInt4 = value;
	}
	
	public java.lang.Integer getExtInt5() {
		return this.extInt5;
	}
	
	public void setExtInt5(java.lang.Integer value) {
		this.extInt5 = value;
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
	
	public java.lang.Long getTopicid() {
		return this.topicid;
	}
	
	public void setTopicid(java.lang.Long value) {
		this.topicid = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

