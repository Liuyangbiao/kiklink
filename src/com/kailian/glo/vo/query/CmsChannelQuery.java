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


public class CmsChannelQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** parentId */
	private java.lang.Long parentId;
	/** name */
	private java.lang.String name;
	/** path */
	private java.lang.String path;
	/** titile */
	private java.lang.String titile;
	/** keywords */
	private java.lang.String keywords;
	/** description */
	private java.lang.String description;
	/** channelType */
	private java.lang.Integer channelType;
	/** channelTemplate */
	private java.lang.String channelTemplate;
	/** contentTemplate */
	private java.lang.String contentTemplate;
	/** channelStaticPath */
	private java.lang.String channelStaticPath;
	/** contentStaticPath */
	private java.lang.String contentStaticPath;
	/** rank */
	private java.lang.Integer rank;
	/** display */
	private java.lang.Integer display;
	/** docimg */
	private java.lang.String docimg;
	/** auditLevel */
	private java.lang.Integer auditLevel;
	/** afterCheck */
	private java.lang.Integer afterCheck;
	/** commentType */
	private java.lang.Integer commentType;
	/** flowerEgg */
	private java.lang.Integer flowerEgg;
	/** viewRight */
	private java.lang.Integer viewRight;
	/** link */
	private java.lang.String link;
	/** titleimg */
	private java.lang.String titleimg;
	/** workFlowId */
	private java.lang.Integer workFlowId;
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
	
	public java.lang.Long getParentId() {
		return this.parentId;
	}
	
	public void setParentId(java.lang.Long value) {
		this.parentId = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
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
	
	public java.lang.String getKeywords() {
		return this.keywords;
	}
	
	public void setKeywords(java.lang.String value) {
		this.keywords = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.Integer getChannelType() {
		return this.channelType;
	}
	
	public void setChannelType(java.lang.Integer value) {
		this.channelType = value;
	}
	
	public java.lang.String getChannelTemplate() {
		return this.channelTemplate;
	}
	
	public void setChannelTemplate(java.lang.String value) {
		this.channelTemplate = value;
	}
	
	public java.lang.String getContentTemplate() {
		return this.contentTemplate;
	}
	
	public void setContentTemplate(java.lang.String value) {
		this.contentTemplate = value;
	}
	
	public java.lang.String getChannelStaticPath() {
		return this.channelStaticPath;
	}
	
	public void setChannelStaticPath(java.lang.String value) {
		this.channelStaticPath = value;
	}
	
	public java.lang.String getContentStaticPath() {
		return this.contentStaticPath;
	}
	
	public void setContentStaticPath(java.lang.String value) {
		this.contentStaticPath = value;
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
	
	public java.lang.String getDocimg() {
		return this.docimg;
	}
	
	public void setDocimg(java.lang.String value) {
		this.docimg = value;
	}
	
	public java.lang.Integer getAuditLevel() {
		return this.auditLevel;
	}
	
	public void setAuditLevel(java.lang.Integer value) {
		this.auditLevel = value;
	}
	
	public java.lang.Integer getAfterCheck() {
		return this.afterCheck;
	}
	
	public void setAfterCheck(java.lang.Integer value) {
		this.afterCheck = value;
	}
	
	public java.lang.Integer getCommentType() {
		return this.commentType;
	}
	
	public void setCommentType(java.lang.Integer value) {
		this.commentType = value;
	}
	
	public java.lang.Integer getFlowerEgg() {
		return this.flowerEgg;
	}
	
	public void setFlowerEgg(java.lang.Integer value) {
		this.flowerEgg = value;
	}
	
	public java.lang.Integer getViewRight() {
		return this.viewRight;
	}
	
	public void setViewRight(java.lang.Integer value) {
		this.viewRight = value;
	}
	
	public java.lang.String getLink() {
		return this.link;
	}
	
	public void setLink(java.lang.String value) {
		this.link = value;
	}
	
	public java.lang.String getTitleimg() {
		return this.titleimg;
	}
	
	public void setTitleimg(java.lang.String value) {
		this.titleimg = value;
	}
	
	public java.lang.Integer getWorkFlowId() {
		return this.workFlowId;
	}
	
	public void setWorkFlowId(java.lang.Integer value) {
		this.workFlowId = value;
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

