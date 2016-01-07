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


public class CtUserProvinceQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** name */
	private java.lang.String name;
	/** firstchar */
	private java.lang.String firstchar;
	/** imghead */
	private java.lang.String imghead;
	/** img1 */
	private java.lang.String img1;
	/** img2 */
	private java.lang.String img2;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getFirstchar() {
		return this.firstchar;
	}
	
	public void setFirstchar(java.lang.String value) {
		this.firstchar = value;
	}
	
	public java.lang.String getImghead() {
		return this.imghead;
	}
	
	public void setImghead(java.lang.String value) {
		this.imghead = value;
	}
	
	public java.lang.String getImg1() {
		return this.img1;
	}
	
	public void setImg1(java.lang.String value) {
		this.img1 = value;
	}
	
	public java.lang.String getImg2() {
		return this.img2;
	}
	
	public void setImg2(java.lang.String value) {
		this.img2 = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

