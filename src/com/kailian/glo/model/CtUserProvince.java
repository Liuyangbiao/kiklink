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


public class CtUserProvince extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CtUserProvince";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_FIRSTCHAR = "firstchar";
	public static final String ALIAS_IMGHEAD = "imghead";
	public static final String ALIAS_IMG1 = "img1";
	public static final String ALIAS_IMG2 = "img2";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=100)
	private java.lang.String name;
	@Length(max=10)
	private java.lang.String firstchar;
	@Length(max=200)
	private java.lang.String imghead;
	@Length(max=200)
	private java.lang.String img1;
	@Length(max=200)
	private java.lang.String img2;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CtUserProvince(){
	}

	public CtUserProvince(
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
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setFirstchar(java.lang.String value) {
		this.firstchar = value;
	}
	
	public java.lang.String getFirstchar() {
		return this.firstchar;
	}
	public void setImghead(java.lang.String value) {
		this.imghead = value;
	}
	
	public java.lang.String getImghead() {
		return this.imghead;
	}
	public void setImg1(java.lang.String value) {
		this.img1 = value;
	}
	
	public java.lang.String getImg1() {
		return this.img1;
	}
	public void setImg2(java.lang.String value) {
		this.img2 = value;
	}
	
	public java.lang.String getImg2() {
		return this.img2;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Name",getName())
			.append("Firstchar",getFirstchar())
			.append("Imghead",getImghead())
			.append("Img1",getImg1())
			.append("Img2",getImg2())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CtUserProvince == false) return false;
		if(this == obj) return true;
		CtUserProvince other = (CtUserProvince)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

