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


public class CmsArticle extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsArticle";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_CHANNEL_ID = "channelId";
	public static final String ALIAS_PATH = "path";
	public static final String ALIAS_TITILE = "titile";
	public static final String ALIAS_SHORT_TITLE = "shortTitle";
	public static final String ALIAS_KEYWORDS = "keywords";
	public static final String ALIAS_META_TAGS = "metaTags";
	public static final String ALIAS_DESCRIPTION = "description";
	public static final String ALIAS_AUTHOR = "author";
	public static final String ALIAS_ORIGIN = "origin";
	public static final String ALIAS_CHANNEL_TYPE = "channelType";
	public static final String ALIAS_TITLE_IMG = "titleImg";
	public static final String ALIAS_CONTENT_IMG = "contentImg";
	public static final String ALIAS_CONTENT = "content";
	public static final String ALIAS_RANK = "rank";
	public static final String ALIAS_DISPLAY = "display";
	public static final String ALIAS_FLOWER = "flower";
	public static final String ALIAS_EGG = "egg";
	public static final String ALIAS_LINK = "link";
	public static final String ALIAS_ADDITION_JSON = "additionJson";
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
	
	private java.lang.Long channelId;
	@Length(max=250)
	private java.lang.String path;
	@Length(max=250)
	private java.lang.String titile;
	@Length(max=250)
	private java.lang.String shortTitle;
	@Length(max=250)
	private java.lang.String keywords;
	@Length(max=250)
	private java.lang.String metaTags;
	@Length(max=65535)
	private java.lang.String description;
	@Length(max=200)
	private java.lang.String author;
	@Length(max=200)
	private java.lang.String origin;
	
	private java.lang.Integer channelType;
	@Length(max=250)
	private java.lang.String titleImg;
	@Length(max=250)
	private java.lang.String contentImg;
	@Length(max=2147483647)
	private java.lang.String content;
	
	private java.lang.Integer rank;
	
	private java.lang.Integer display;
	
	private java.lang.Long flower;
	
	private java.lang.Long egg;
	@Length(max=250)
	private java.lang.String link;
	@Length(max=2147483647)
	private java.lang.String additionJson;
	
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

	public CmsArticle(){
	}

	public CmsArticle(
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
	public void setChannelId(java.lang.Long value) {
		this.channelId = value;
	}
	
	public java.lang.Long getChannelId() {
		return this.channelId;
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
	public void setShortTitle(java.lang.String value) {
		this.shortTitle = value;
	}
	
	public java.lang.String getShortTitle() {
		return this.shortTitle;
	}
	public void setKeywords(java.lang.String value) {
		this.keywords = value;
	}
	
	public java.lang.String getKeywords() {
		return this.keywords;
	}
	public void setMetaTags(java.lang.String value) {
		this.metaTags = value;
	}
	
	public java.lang.String getMetaTags() {
		return this.metaTags;
	}
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	public void setAuthor(java.lang.String value) {
		this.author = value;
	}
	
	public java.lang.String getAuthor() {
		return this.author;
	}
	public void setOrigin(java.lang.String value) {
		this.origin = value;
	}
	
	public java.lang.String getOrigin() {
		return this.origin;
	}
	public void setChannelType(java.lang.Integer value) {
		this.channelType = value;
	}
	
	public java.lang.Integer getChannelType() {
		return this.channelType;
	}
	public void setTitleImg(java.lang.String value) {
		this.titleImg = value;
	}
	
	public java.lang.String getTitleImg() {
		return this.titleImg;
	}
	public void setContentImg(java.lang.String value) {
		this.contentImg = value;
	}
	
	public java.lang.String getContentImg() {
		return this.contentImg;
	}
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	public java.lang.String getContent() {
		return this.content;
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
	public void setFlower(java.lang.Long value) {
		this.flower = value;
	}
	
	public java.lang.Long getFlower() {
		return this.flower;
	}
	public void setEgg(java.lang.Long value) {
		this.egg = value;
	}
	
	public java.lang.Long getEgg() {
		return this.egg;
	}
	public void setLink(java.lang.String value) {
		this.link = value;
	}
	
	public java.lang.String getLink() {
		return this.link;
	}
	public void setAdditionJson(java.lang.String value) {
		this.additionJson = value;
	}
	
	public java.lang.String getAdditionJson() {
		return this.additionJson;
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
			.append("ChannelId",getChannelId())
			.append("Path",getPath())
			.append("Titile",getTitile())
			.append("ShortTitle",getShortTitle())
			.append("Keywords",getKeywords())
			.append("MetaTags",getMetaTags())
			.append("Description",getDescription())
			.append("Author",getAuthor())
			.append("Origin",getOrigin())
			.append("ChannelType",getChannelType())
			.append("TitleImg",getTitleImg())
			.append("ContentImg",getContentImg())
			.append("Content",getContent())
			.append("Rank",getRank())
			.append("Display",getDisplay())
			.append("Flower",getFlower())
			.append("Egg",getEgg())
			.append("Link",getLink())
			.append("AdditionJson",getAdditionJson())
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
		if(obj instanceof CmsArticle == false) return false;
		if(this == obj) return true;
		CmsArticle other = (CmsArticle)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

