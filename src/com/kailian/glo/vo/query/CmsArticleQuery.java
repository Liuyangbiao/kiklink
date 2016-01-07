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


public class CmsArticleQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** channelId */
	private java.lang.Long channelId;
	/** path */
	private java.lang.String path;
	/** titile */
	private java.lang.String titile;
	/** shortTitle */
	private java.lang.String shortTitle;
	/** keywords */
	private java.lang.String keywords;
	/** metaTags */
	private java.lang.String metaTags;
	/** description */
	private java.lang.String description;
	/** author */
	private java.lang.String author;
	/** origin */
	private java.lang.String origin;
	/** channelType */
	private java.lang.Integer channelType;
	/** titleImg */
	private java.lang.String titleImg;
	/** contentImg */
	private java.lang.String contentImg;
	/** content */
	private java.lang.String content;
	/** rank */
	private java.lang.Integer rank;
	/** display */
	private java.lang.Integer display;
	/** flower */
	private java.lang.Long flower;
	/** egg */
	private java.lang.Long egg;
	/** link */
	private java.lang.String link;
	/** additionJson */
	private java.lang.String additionJson;
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

	private java.lang.Long createtimelongstart;
	private java.lang.Long createtimelongend;
	public java.lang.Long getCreatetimelongstart() {
		return createtimelongstart;
	}

	public void setCreatetimelongstart(java.lang.Long createtimelongstart) {
		this.createtimelongstart = createtimelongstart;
	}

	public java.lang.Long getCreatetimelongend() {
		return createtimelongend;
	}

	public void setCreatetimelongend(java.lang.Long createtimelongend) {
		this.createtimelongend = createtimelongend;
	}
	
	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getChannelId() {
		return this.channelId;
	}
	
	public void setChannelId(java.lang.Long value) {
		this.channelId = value;
	}
	
	public java.lang.String getPath() {
		return this.path;
	}
	
	public void setPath(java.lang.String value) {
		this.path = value;
	}
	
	public java.lang.String getTitile() {
		return this.titile;
	}
	
	public void setTitile(java.lang.String value) {
		this.titile = value;
	}
	
	public java.lang.String getShortTitle() {
		return this.shortTitle;
	}
	
	public void setShortTitle(java.lang.String value) {
		this.shortTitle = value;
	}
	
	public java.lang.String getKeywords() {
		return this.keywords;
	}
	
	public void setKeywords(java.lang.String value) {
		this.keywords = value;
	}
	
	public java.lang.String getMetaTags() {
		return this.metaTags;
	}
	
	public void setMetaTags(java.lang.String value) {
		this.metaTags = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.String getAuthor() {
		return this.author;
	}
	
	public void setAuthor(java.lang.String value) {
		this.author = value;
	}
	
	public java.lang.String getOrigin() {
		return this.origin;
	}
	
	public void setOrigin(java.lang.String value) {
		this.origin = value;
	}
	
	public java.lang.Integer getChannelType() {
		return this.channelType;
	}
	
	public void setChannelType(java.lang.Integer value) {
		this.channelType = value;
	}
	
	public java.lang.String getTitleImg() {
		return this.titleImg;
	}
	
	public void setTitleImg(java.lang.String value) {
		this.titleImg = value;
	}
	
	public java.lang.String getContentImg() {
		return this.contentImg;
	}
	
	public void setContentImg(java.lang.String value) {
		this.contentImg = value;
	}
	
	public java.lang.String getContent() {
		return this.content;
	}
	
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	public java.lang.Integer getRank() {
		return this.rank;
	}
	
	public void setRank(java.lang.Integer value) {
		this.rank = value;
	}
	
	public java.lang.Integer getDisplay() {
		return this.display;
	}
	
	public void setDisplay(java.lang.Integer value) {
		this.display = value;
	}
	
	public java.lang.Long getFlower() {
		return this.flower;
	}
	
	public void setFlower(java.lang.Long value) {
		this.flower = value;
	}
	
	public java.lang.Long getEgg() {
		return this.egg;
	}
	
	public void setEgg(java.lang.Long value) {
		this.egg = value;
	}
	
	public java.lang.String getLink() {
		return this.link;
	}
	
	public void setLink(java.lang.String value) {
		this.link = value;
	}
	
	public java.lang.String getAdditionJson() {
		return this.additionJson;
	}
	
	public void setAdditionJson(java.lang.String value) {
		this.additionJson = value;
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

