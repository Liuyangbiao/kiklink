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


public class CmsChannel extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsChannel";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_PARENT_ID = "parentId";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_PATH = "path";
	public static final String ALIAS_TITILE = "titile";
	public static final String ALIAS_KEYWORDS = "keywords";
	public static final String ALIAS_DESCRIPTION = "description";
	public static final String ALIAS_CHANNEL_TYPE = "channelType";
	public static final String ALIAS_CHANNEL_TEMPLATE = "channelTemplate";
	public static final String ALIAS_CONTENT_TEMPLATE = "contentTemplate";
	public static final String ALIAS_CHANNEL_STATIC_PATH = "channelStaticPath";
	public static final String ALIAS_CONTENT_STATIC_PATH = "contentStaticPath";
	public static final String ALIAS_RANK = "rank";
	public static final String ALIAS_DISPLAY = "display";
	public static final String ALIAS_DOCIMG = "docimg";
	public static final String ALIAS_AUDIT_LEVEL = "auditLevel";
	public static final String ALIAS_AFTER_CHECK = "afterCheck";
	public static final String ALIAS_COMMENT_TYPE = "commentType";
	public static final String ALIAS_FLOWER_EGG = "flowerEgg";
	public static final String ALIAS_VIEW_RIGHT = "viewRight";
	public static final String ALIAS_LINK = "link";
	public static final String ALIAS_TITLEIMG = "titleimg";
	public static final String ALIAS_WORK_FLOW_ID = "workFlowId";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_EXT1 = "ext1";
	public static final String ALIAS_EXT2 = "ext2";
	public static final String ALIAS_EXT3 = "ext3";
	public static final String ALIAS_EXT4 = "ext4";
	public static final String ALIAS_EXT5 = "ext5";
	public static final String ALIAS_EXTINT1 = "extint1";
	public static final String ALIAS_EXTINT2 = "extint2";
	public static final String ALIAS_EXTINT3 = "extint3";
	public static final String ALIAS_EXTINT4 = "extint4";
	public static final String ALIAS_EXTINT5 = "extint5";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Long parentId;
	@Length(max=50)
	private java.lang.String name;
	@Length(max=250)
	private java.lang.String path;
	@Length(max=250)
	private java.lang.String titile;
	@Length(max=250)
	private java.lang.String keywords;
	@Length(max=65535)
	private java.lang.String description;
	
	private java.lang.Integer channelType;
	@Length(max=250)
	private java.lang.String channelTemplate;
	@Length(max=250)
	private java.lang.String contentTemplate;
	@Length(max=250)
	private java.lang.String channelStaticPath;
	@Length(max=250)
	private java.lang.String contentStaticPath;
	
	private java.lang.Integer rank;
	
	private java.lang.Integer display;
	@Length(max=250)
	private java.lang.String docimg;
	
	private java.lang.Integer auditLevel;
	
	private java.lang.Integer afterCheck;
	
	private java.lang.Integer commentType;
	
	private java.lang.Integer flowerEgg;
	
	private java.lang.Integer viewRight;
	@Length(max=250)
	private java.lang.String link;
	@Length(max=250)
	private java.lang.String titleimg;
	
	private java.lang.Integer workFlowId;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	@Length(max=65535)
	private java.lang.String ext1;
	@Length(max=65535)
	private java.lang.String ext2;
	@Length(max=65535)
	private java.lang.String ext3;
	@Length(max=65535)
	private java.lang.String ext4;
	@Length(max=65535)
	private java.lang.String ext5;
	
	private java.lang.Integer extint1;
	
	private java.lang.Integer extint2;
	
	private java.lang.Integer extint3;
	
	private java.lang.Integer extint4;
	
	private java.lang.Integer extint5;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsChannel(){
	}

	public CmsChannel(
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
	public void setParentId(java.lang.Long value) {
		this.parentId = value;
	}
	
	public java.lang.Long getParentId() {
		return this.parentId;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setPath(java.lang.String value) {
		this.path = value;
	}
	
	public java.lang.String getPath() {
		return this.path;
	}
	public void setTitile(java.lang.String value) {
		this.titile = value;
	}
	
	public java.lang.String getTitile() {
		return this.titile;
	}
	public void setKeywords(java.lang.String value) {
		this.keywords = value;
	}
	
	public java.lang.String getKeywords() {
		return this.keywords;
	}
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	public void setChannelType(java.lang.Integer value) {
		this.channelType = value;
	}
	
	public java.lang.Integer getChannelType() {
		return this.channelType;
	}
	public void setChannelTemplate(java.lang.String value) {
		this.channelTemplate = value;
	}
	
	public java.lang.String getChannelTemplate() {
		return this.channelTemplate;
	}
	public void setContentTemplate(java.lang.String value) {
		this.contentTemplate = value;
	}
	
	public java.lang.String getContentTemplate() {
		return this.contentTemplate;
	}
	public void setChannelStaticPath(java.lang.String value) {
		this.channelStaticPath = value;
	}
	
	public java.lang.String getChannelStaticPath() {
		return this.channelStaticPath;
	}
	public void setContentStaticPath(java.lang.String value) {
		this.contentStaticPath = value;
	}
	
	public java.lang.String getContentStaticPath() {
		return this.contentStaticPath;
	}
	public void setRank(java.lang.Integer value) {
		this.rank = value;
	}
	
	public java.lang.Integer getRank() {
		return this.rank;
	}
	public void setDisplay(java.lang.Integer value) {
		this.display = value;
	}
	
	public java.lang.Integer getDisplay() {
		return this.display;
	}
	public void setDocimg(java.lang.String value) {
		this.docimg = value;
	}
	
	public java.lang.String getDocimg() {
		return this.docimg;
	}
	public void setAuditLevel(java.lang.Integer value) {
		this.auditLevel = value;
	}
	
	public java.lang.Integer getAuditLevel() {
		return this.auditLevel;
	}
	public void setAfterCheck(java.lang.Integer value) {
		this.afterCheck = value;
	}
	
	public java.lang.Integer getAfterCheck() {
		return this.afterCheck;
	}
	public void setCommentType(java.lang.Integer value) {
		this.commentType = value;
	}
	
	public java.lang.Integer getCommentType() {
		return this.commentType;
	}
	public void setFlowerEgg(java.lang.Integer value) {
		this.flowerEgg = value;
	}
	
	public java.lang.Integer getFlowerEgg() {
		return this.flowerEgg;
	}
	public void setViewRight(java.lang.Integer value) {
		this.viewRight = value;
	}
	
	public java.lang.Integer getViewRight() {
		return this.viewRight;
	}
	public void setLink(java.lang.String value) {
		this.link = value;
	}
	
	public java.lang.String getLink() {
		return this.link;
	}
	public void setTitleimg(java.lang.String value) {
		this.titleimg = value;
	}
	
	public java.lang.String getTitleimg() {
		return this.titleimg;
	}
	public void setWorkFlowId(java.lang.Integer value) {
		this.workFlowId = value;
	}
	
	public java.lang.Integer getWorkFlowId() {
		return this.workFlowId;
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
	public void setExtint1(java.lang.Integer value) {
		this.extint1 = value;
	}
	
	public java.lang.Integer getExtint1() {
		return this.extint1;
	}
	public void setExtint2(java.lang.Integer value) {
		this.extint2 = value;
	}
	
	public java.lang.Integer getExtint2() {
		return this.extint2;
	}
	public void setExtint3(java.lang.Integer value) {
		this.extint3 = value;
	}
	
	public java.lang.Integer getExtint3() {
		return this.extint3;
	}
	public void setExtint4(java.lang.Integer value) {
		this.extint4 = value;
	}
	
	public java.lang.Integer getExtint4() {
		return this.extint4;
	}
	public void setExtint5(java.lang.Integer value) {
		this.extint5 = value;
	}
	
	public java.lang.Integer getExtint5() {
		return this.extint5;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("ParentId",getParentId())
			.append("Name",getName())
			.append("Path",getPath())
			.append("Titile",getTitile())
			.append("Keywords",getKeywords())
			.append("Description",getDescription())
			.append("ChannelType",getChannelType())
			.append("ChannelTemplate",getChannelTemplate())
			.append("ContentTemplate",getContentTemplate())
			.append("ChannelStaticPath",getChannelStaticPath())
			.append("ContentStaticPath",getContentStaticPath())
			.append("Rank",getRank())
			.append("Display",getDisplay())
			.append("Docimg",getDocimg())
			.append("AuditLevel",getAuditLevel())
			.append("AfterCheck",getAfterCheck())
			.append("CommentType",getCommentType())
			.append("FlowerEgg",getFlowerEgg())
			.append("ViewRight",getViewRight())
			.append("Link",getLink())
			.append("Titleimg",getTitleimg())
			.append("WorkFlowId",getWorkFlowId())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.append("Ext1",getExt1())
			.append("Ext2",getExt2())
			.append("Ext3",getExt3())
			.append("Ext4",getExt4())
			.append("Ext5",getExt5())
			.append("Extint1",getExtint1())
			.append("Extint2",getExtint2())
			.append("Extint3",getExtint3())
			.append("Extint4",getExtint4())
			.append("Extint5",getExtint5())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsChannel == false) return false;
		if(this == obj) return true;
		CmsChannel other = (CmsChannel)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

