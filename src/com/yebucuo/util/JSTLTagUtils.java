package com.yebucuo.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.RequestMap;
import org.springframework.web.servlet.support.JstlUtils;

import cn.org.rapid_framework.page.Page;

import com.kailian.glo.model.CmsBiaodan;
import com.kailian.glo.model.CmsBiaodanConfig;
import com.kailian.glo.model.CmsGroup;
import com.kailian.glo.model.CmsInputTable;
import com.kailian.glo.service.ICmsBiaodanDetailManager;
import com.kailian.glo.service.ICmsBiaodanManager;
import com.kailian.glo.service.ICmsCommonPointsManager;
import com.kailian.glo.service.ICmsGroupManager;
import com.kailian.glo.vo.query.CmsBiaodanDetailQuery;
import com.kailian.glo.vo.query.CmsBiaodanQuery;
import com.opensymphony.xwork2.ActionContext;
import com.yebucuo.common.util.Json;
import com.yebucuo.sigleton.CountSingleton;
import com.yebucuo.sigleton.InputSingleton;
import com.yebucuo.sigleton.RightSingleton;
import com.yebucuo.spring.SpringContext;

/**
 * 用于页面jstl时间格式化
 * 
 * @author jiangnan
 * 
 */
public class JSTLTagUtils extends TagSupport {

	public static final int type_input_text = 0;
	public static final int type_input_password = 2;
	public static final int type_input_email = 3;
	public static final int type_input_mobile = 4;
	public static final int type_input_phone = 5;
	public static final int type_input_url = 6;
	public static final int type_input_image = 7;
	public static final int type_input_number = 10;
	public static final int type_input_textarea = 20;
	public static final int type_input_select = 30;
	public static final int type_input_html = 40;
	public static final int type_input_iframe = 50;
	public static final int type_input_hidden = 60;
	public static final int type_input_unshow = 70;
	public static final int type_input_locked = 80;

	public static final int type_input_iframelink = 110;
	public static final int type_input_blanklink = 111;

	
	//设置值
	public static String setvalue(String v1, String v2) {
		if (StringUtils.isNotEmpty(v1))
			return v1;
		return v2;
	}
	
	//json的值
	public static String jvalue(String json, String key) {
		Map map = Utils.jsonToMap(json);
		return (String) map.get(key);
	}
	
	//错误提示
	public static String errordiv(Map map, String param) {
		//<div id="moboremail_div" class="ico"></div>
		StringBuilder sb = new StringBuilder();
		sb.append("<div id='" + param + "_div' class='ico'>");
		if (map.get("err_" + param) != null	)
			sb.append("<div class='ico1'>").append(map.get("err_" + param)).append("</div>");
		sb.append("</div>");
		
		return sb.toString();
	}
	
	// ajaxinput
	public static String ajaxinput(String line) {
		/*
		 * <p id='configtype_p' class='p123'> <label id='configtype_mainlb'>
		 * <%=JSTLTagUtils
		 * .getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_CONFIGTYPE)%>:
		 * </label>
		 * ${my:input('CmsAjaxConfig','configtype',model.configtype,10,0 )} </p>
		 */
		String[] ss = line.split(",");
		StringBuilder sb = new StringBuilder();
		CmsInputTable cit = (CmsInputTable) InputSingleton.getInputMap().get(
				ss[0] + "-" + ss[1]);

		sb.append("<p id='" + ss[1] + "_p' class='p123'><label id='" + ss[1]
				+ "_mainlb'>");
		sb.append(JSTLTagUtils.getCnname(ss[0], ss[1]));
		if (cit != null && ss.length < 3)
			sb.append(",字段name:" + cit.getInputName() + "   说明:" + cit.getInputAddition());
		else if (ss.length > 2)
			sb.append(",字段name:" + ss[1] + "   说明:" + ss[2]);
		else 
			sb.append(",字段name:" + ss[1] );
		
		sb.append("</label>");
		sb.append(JSTLTagUtils.input(ss[0], ss[1], "", 0, 0));
		sb.append("</p>");

		return sb.toString();

	}

	// 获取cnname
	public static String getCnname(String className, String inputName) {
	
		
		
		CmsInputTable cit = (CmsInputTable) InputSingleton.getInputMap().get(
				className + "-" + inputName);
		if (cit == null || StringUtils.isEmpty(cit.getInputCnName())) {
			if ("table_name".equalsIgnoreCase(inputName))
				return className;
			return inputName;
		}

		if (cit.getInputType() != null
				&& cit.getInputType() == type_input_unshow) {
			return cit.getInputCnName() + "<script>$('#" + inputName
					+ "_000').hide();</script>";
		}

		return  cit.getInputCnName();
	}

	// list的json
	public static String resultlist(List result) {
		return Json.toJson(result);
	}

	// 获取内容
	public static String showcont(String className, String inputName,
			String value, int type) {
		
		if ("createtimelong".equalsIgnoreCase(inputName) && StringUtils.isNotEmpty(value) && StringUtils.isNumeric(value) ) {
			return JSTLDateUtils.transTime(Long.parseLong(value));
		}
		
		StringBuilder sb = new StringBuilder();
		CmsInputTable cit = (CmsInputTable) InputSingleton.getInputMap().get(
				className + "-" + inputName);
		Logger log = Logger.getLogger(JSTLTagUtils.class);
		if (cit != null && cit.getInputType() >= 0) {
			if (cit.getInputType() == JSTLTagUtils.type_input_select) {
				// 选择器
				if (StringUtils.isEmpty(cit.getInputAddition())) {
					sb.append(value);
				} else {
					String[] ss = cit.getInputAddition().split(",");
					for (int i = 0; i < ss.length; i = i + 2) {
						if (ss[i + 1].equalsIgnoreCase(value)) {
							sb.append(ss[i]);
							break;
						}
					}
					if (StringUtils.isEmpty(sb.toString()))
						sb.append(value);
				}

			}
			else if (cit.getInputType() == type_input_image) {
				sb.append("<a href=\"../../" + value + "\" target='_blank'><img src='../../" + value + "' style=\"max-width:50px;max-height:50px;\" /></a>");
				//sb.append("<script>dolistimg('" + inputName + "');</script>");
			}
			else if (cit.getInputType() == type_input_unshow) {
				sb.append("<script>$('." + inputName + "Td').hide();$('#"
						+ inputName + "_000').hide();$('#" + inputName
						+ "_p').hide();$('#" + inputName
						+ "_formp').hide();</script>");
			} else if (cit.getInputType() == type_input_password) {
				if (StringUtils.isNotEmpty(value))
					for (int i = 0; i < value.length(); i++)
						sb.append("*");
			} else {
				// 其他的
				sb.append(value);
			}
		}
		// 默认的
		else {
			sb.append(value);
		}
		return sb.toString();
	}

	// 返回input的html
	public static String input(String className, String inputName,
			String value, int type, int required) {
		StringBuilder sb = new StringBuilder();
		CmsInputTable cit = (CmsInputTable) InputSingleton.getInputMap().get(
				className + "-" + inputName);

		Logger log = Logger.getLogger(JSTLTagUtils.class);
//		log.warn("======= xxxxxxx   " + className + "  " + inputName + "  "
//				+ cit.getInputType());

		if (cit != null && cit.getRequired() != null && cit.getRequired() > 0)
			required = 1;

		if (cit != null && cit.getInputType() >= 0) {
			log.warn("=======    " + className + "  " + inputName + "  "
					+ cit.getInputType());
			int min = (cit.getMinlength() != null && cit.getMinlength() > 0) ? cit
					.getMinlength() : 0;
			int max = (cit.getMaxlength() != null && cit.getMaxlength() > 0) ? cit
					.getMaxlength() : 250;

			if (cit.getInputType() == JSTLTagUtils.type_input_number) {
				// 普通数字

				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-numberbox\" ")
						.append(required > 0 ? "data-options=\"required:true\" />"
								: " />");

			}

			else if (cit.getInputType() == JSTLTagUtils.type_input_password) {
				// 密码
				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"password\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true,validType:['length["
								+ min + "," + max + "]']\" />"
								: " />");
			} else if (cit.getInputType() == JSTLTagUtils.type_input_email) {
				// 邮箱
				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true,validType:['email','length["
								+ min + "," + max + "]']\" />"
								: " />");
			} else if (cit.getInputType() == JSTLTagUtils.type_input_mobile) {
				// 手机
				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true,validType:['mobile','length["
								+ min + "," + max + "]']\" />"
								: " />");
			} else if (cit.getInputType() == JSTLTagUtils.type_input_phone) {
				// 电话
				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true,validType:['phone','length["
								+ min + "," + max + "]']\" />"
								: " />");
			} else if (cit.getInputType() == JSTLTagUtils.type_input_url) {
				// url
				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true,validType:['url','length["
								+ min + "," + max + "]']\" />"
								: " />");
			}
			else if (cit.getInputType() == JSTLTagUtils.type_input_image) {
				sb.append("<input id=\"")
				.append(inputName)
				.append("\" name=\"")
				.append(inputName)
				.append("\" value=\"")
				.append(value)
				.append("\" type=\"text\" class=\"")
				.append("text-input medium-input\" ")
				.append(" />");
				sb.append("<script>doimg('" + inputName + "');</script>");
			}
			else if (cit.getInputType() == JSTLTagUtils.type_input_select) {
				// 下拉菜单或者radio
				if (StringUtils.isNotEmpty(cit.getInputAddition())) {
					String[] ss = cit.getInputAddition().split(",");
					if (ss.length > 4*2) {

						sb.append("<select id=\"").append(inputName)
								.append("\" name=\"").append(inputName)
								.append("\">");
						sb.append("<option value=\"").append("").append("\" ")
								.append("").append(" \">").append("请选择")
								.append("</option>");
						if (StringUtils.isNotEmpty(cit.getInputAddition())) {

							for (int i = 0; i < ss.length; i = i + 2) {
								String key = ss[i];
								String vl = ss[i];
								if (i + 1 < ss.length)
									vl = ss[i + 1];
								sb.append("<option value=\"")
										.append(vl)
										.append("\" ")
										.append((value != null && value
												.equalsIgnoreCase("" + vl)) ? "selected"
												: "").append(" >").append(key)
										.append("</option>");
							}

						}
						sb.append("</select>");
					}
					else {
						for (int i = 0; i < ss.length; i = i + 2) {
							String key = ss[i];
							String vl = ss[i];
							if (i + 1 < ss.length)
								vl = ss[i + 1];
							String checked = (value != null && value.equalsIgnoreCase("" + vl )) ? " checked" : " ";
							sb.append(key + "<input type='radio' id='" + inputName + "' name='" + inputName + "' value='" + vl + "'" + checked + " />&nbsp;&nbsp;");
						}
					}
				}
			} else if (cit.getInputType() == JSTLTagUtils.type_input_textarea) {
				// 输入域
				sb.append("<textarea id=\"").append(inputName)
						.append("\" name=\"").append(inputName)
						.append("\" style='width:100%;height:200px;'>")
						.append(value).append("</textarea>");
			} else if (cit.getInputType() == JSTLTagUtils.type_input_html
					&& required >= 0) {
				// html
				sb.append("<script>");
				sb.append("var lth = editors.length;editors[lth] = new Array();");
				sb.append("editors[lth][0]='").append(inputName).append("';");
				// sb.append("var editor").append("_").append(inputName).append(";");
				sb.append("KindEditor.ready(function(K) {editors[lth][1]")
						.append(" = K.create('textarea[name=\"")
						.append(inputName)
						.append("\"]', {height:600,allowFileManager : true,uploadJson : '../../kindeditornew/jsp/upload_json.jsp',fileManagerJson : '../../kindeditornew/jsp/file_manager_json.jsp',});});");

				// sb.append("var edt = new Array();edt[0]='" + inputName +
				// "';edt[1]=editor_"+inputName + ";");
				// sb.append("editors[editors.length]=edt;");
				sb.append("</script>");

				sb.append("<textarea id=\"").append(inputName)
						.append("\" name=\"").append(inputName)
						.append("\" style='width:100%;height:600px;'\">")
						.append(value).append("</textarea>");
			} else if (cit.getInputType() == JSTLTagUtils.type_input_iframe
					&& required >= 0) {
				// iframe中选择
				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true\" "
								: " ");
				sb.append("/>");

				// sb.append(" onclick=\"showiframe('" + cit.getInputAddition()
				// + "');\"");
				String a = cit.getInputAddition();
				a = a.replaceFirst(",", "?fromiframe=yes&params=");
				sb.append("&nbsp;&nbsp;<a class='iframe button' href='" + a
						+ "'>点击选择" + "</a>");

			} else if (cit.getInputType() == JSTLTagUtils.type_input_blanklink) {
				// 列表中新标签打开
				String[] ss = cit.getInputAddition().split(",,");
				for (int i = 0; i < ss.length; i++) {
					String[] s = ss[i].split(",");
					sb.append("&nbsp;&nbsp;")
							.append("<a class='button' href='#' onclick=\"parent.addPanel('")
							.append(s[1]).append(value)
							.append("','" + s[0] + "');\">").append(s[0])
							.append("</a>");
				}

			} else if (cit.getInputType() == JSTLTagUtils.type_input_iframelink) {
				// 列表中iframe打开
				String[] ss = cit.getInputAddition().split(",,");
				for (int i = 0; i < ss.length; i++) {
					String[] s = ss[i].split(",");
					sb.append("&nbsp;&nbsp;")
							.append("<a class='button iframe' href='")
							.append(s[1]).append(value).append("'>")
							.append(s[0]).append("</a>");
				}

			} else if (cit.getInputType() == JSTLTagUtils.type_input_hidden) {
				// hidden

				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true\" />"
								: " />");
				sb.append("<script>$('#" + inputName + "_p').hide();</script>");
			} else if (cit.getInputType() == JSTLTagUtils.type_input_unshow) {
				// 不显示

				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true\" />"
								: " />");
				sb.append("<script>$('#" + inputName + "_p').hide();</script>");
			} else if (cit.getInputType() == JSTLTagUtils.type_input_locked) {
				// 锁定

				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(" disabled='true' />");

			} else {
				// 普通文字

				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true,validType:['length["
								+ min + "," + max + "]']\" />"
								: " />");
			}

		} else {
			if (type == -1) {

			}

			else if (type == JSTLTagUtils.type_input_text) {
				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-validatebox\" ")
						.append(required > 0 ? "data-options=\"required:true\" />"
								: " />");

			} else {
				sb.append("<input id=\"")
						.append(inputName)
						.append("\" name=\"")
						.append(inputName)
						.append("\" value=\"")
						.append(value)
						.append("\" type=\"text\" class=\"")
						.append("text-input medium-input easyui-numberbox\" ")
						.append(required > 0 ? "data-options=\"required:true\" />"
								: " />");
			}
		}

		return sb.toString();
	}
	
	
	/*
	 *       <div class=\"pageNum1\">
         <a href=\"\" class=\"a1\"><span>.</span></a><a href=\"\" class=\"aNow\">1</a><a href=\"\">2</a><a href=\"\">3</a><a href=\"\">4</a><a href=\"\">5</a><a href=\"\">6</a><a href=\"\">7</a><a href=\"\">8</a><a href=\"\">9</a><a href=\"\">10</a><i>...</i><a href=\"\">28</a>
         <a href=\"\" class=\"a2\"><span>下一页</span></a>
         <b class=\"b1\">到</b><input name=\"\" type=\"text\" class=\"input1\" value=\"1\" /><b>页</b><input name=\"\" type=\"button\" class=\"btn1\" value=\"确定\" />
         </div>
      </div>
	 */
	
	
	
	
	public static String drawpage(Page page, HttpServletRequest request, String urladd) {
		if (page == null || request == null)
			return "";
		String classname = "pageNum1";
		
		ActionContext ac = ActionContext.getContext();//获取当前action的上下文  
		RequestMap reqMap = (RequestMap)ac.get("request");//获取请求Map  
		String acPath = (String)reqMap.get("javax.servlet.forward.servlet_path");
		
		String pre = (String) request.getAttribute("ctx") + "" + acPath;
		pre = pre + "?tmpparam=1";		
		Map map = request.getParameterMap();
		Map tm = new HashMap();
		if (StringUtils.isNotEmpty(urladd)) {
			String[] ss = urladd.split("&");
			for (int i = 0; i < ss.length; i ++) {
				String[] s = ss[i].split("=");
				if (s.length >= 2)
					tm.put(s[0], s[1]);
			}
		}
		pre = pre + "&" + urladd;
		

		
		Iterator it = map.keySet().iterator();
		while (it.hasNext()) {
			String key = (String) it.next();
			if ("pageno".equalsIgnoreCase(key) || "pageNumber".equalsIgnoreCase(key) || "tmpparam".equalsIgnoreCase(key))
				continue;
			
			if (tm.containsKey(key))
			{
				continue;
			}
			
			String value = null;
			Object obj =  request.getAttribute(key) ;
			if (obj == null)
				value = request.getParameter(key);
			else
				value = obj + "";
			
			if (value == null)
				value = "";
			pre = pre + "&" + key + "=" + value;
		}
		
		
		
		//频道页面
		if (pre.contains("kailian/KlSellerProduct/channel.do") && !pre.contains("sortby") || pre.contains("channel_")) {
			pre = "channel_" + request.getParameter("cid") + "_";
		}
		else if (pre.contains("kailian/KlSellerShop/shopcoaches.do") || pre.contains("coachs_"))
			pre = "coachs_" + request.getParameter("id") + "_";
		
		
		//pre = "111" +  acPath + "222";
		//pre = "1111222";
		
		StringBuilder sb = new StringBuilder();
		
		sb.append("<div class=\"" + classname + "\">");
		//第一页
		if (page.getThisPageNumber() != 1 || true)
			sb.append("<a href=\"" + JSTLTagUtils.geturl(pre, 1) + "\" class=\"prev\"><span>首页</span></a>");
//		else 
//			sb.append("<a href=\"prev\" class=\"a1\"><em>.</em></a>");
		
		//上一页
		if (page.getThisPageNumber() != 1)
			sb.append("<a href=\"" + JSTLTagUtils.geturl(pre, page.getThisPageNumber()-1) + "\" class=\"em\"><span>上一页</span></a>");
//		else 
//			sb.append("<a href=\"#\" class=\"prev\"><em>.</em></a>");
		
		//分页
		for (int i = page.getThisPageNumber() - 5; i <= page.getThisPageNumber() + 5; i ++) {
			if (i < 1 || i > page.getLastPageNumber())
				continue;
			
			if (i == page.getThisPageNumber()) 
				sb.append("<a class=\"aNow\" href=\"" + JSTLTagUtils.geturl(pre, i) + "\">" + i + "</a>");
			else 
				sb.append("<a href=\"" + JSTLTagUtils.geturl(pre, i) + "\">" + i + "</a>");
		}
		
		//下一页
		if (page.getThisPageNumber() != page.getLastPageNumber())
			sb.append("<a href=\"" + JSTLTagUtils.geturl(pre, page.getThisPageNumber() + 1) + "\" class=\"next\"><span>下一页</span></a>");
//		else 
//			sb.append("<a href=\"#\" class=\"next\"><em>.</em></a>");
		
		//最后一页
		if (page.getThisPageNumber() != page.getLastPageNumber() || true)
			sb.append("<a href=\"" + JSTLTagUtils.geturl(pre, page.getLastPageNumber()) + "\" class=\"next\"><span>尾页</span></a>");
//		else 
//			sb.append("<a href=\"#\" class=\"next\"><em>.</em></a>");
		
		
		sb.append("<b class=\"b1\">到</b><input id='pn' name=\"\" type=\"text\" class=\"input1\" value=\"" + page.getThisPageNumber() + "\" /><b>页</b><input name=\"\" type=\"button\" onclick=\"jumppage();\" class=\"btn1\" value=\"确定\" />");
		
		sb.append("</div>");
		sb.append("<script>");
		sb.append("function jumppage() {");
		sb.append("var pn = $('#pn').val();if (pn == undefined || pn.length < 1) return;  ");
		
		if (pre != null && pre.contains("channel_") && pre.contains("tag") == false) {
			sb.append("window.location.href='channel_" + request.getParameter("cid") + "_' + pn + '.html';}" );
		}
		else if (pre != null && pre.contains("coachs_") && pre.split("_").length > 2)
			sb.append("window.location.href='coachs_" + request.getParameter("id") + "_' + pn + '.html';}" );
		else
			sb.append("window.location.href='" + pre + "&pageNumber=' + pn + '&pageno=' + pn;}" );
		sb.append("</script>");
		
		return sb.toString();
		
	}
	
	
	public static String geturl(String pre, int pageno) {
		if (pre != null && pre.contains("channel_") && pre.contains("tag") == false) {
			pre = pre + pageno + ".html";
			return pre;
		}
		else if (pre != null && pre.contains("coachs_") ) {
			pre = pre + pageno + ".html";
			return pre;
		}
		
		
		return pre + "&pageno=" + pageno + "&pageNumber=" + pageno;
	}
	
	
	public static String stars (String pre, float point) {
		StringBuilder sb = new StringBuilder();
		sb.append("<span class='starspan'>");
		int s = (int) (point / 2);
		for (int i = 0; i < 5; i ++) {
			String star = "xing1.png";
			if ((float)(i * 2) < point && (float)(i * 2 + 2) > point)
				star = "xing4.png";
			else if ((float)(i * 2 + 2) > point)
				star = "xing2.png";
			
			sb.append("<img style='margin-left:2px;' src='" + pre + "/image/" + star + "' />");
		}
		sb.append("</span>"	);
		return sb.toString();
	}
	
	
	public static String replaceall(String s, String f, String t) {
		if (s == null)
			return "";
		return s.replaceAll(f, t);
	}
	
	
	
	public static int getCount(long userid, String usertype, String messagetype) {
		return CountSingleton.getCount(userid, usertype, messagetype);
	}
	public static String getCountTag(long userid, String usertype, String messagetype) {
		int c = CountSingleton.getCount(userid, usertype, messagetype);
		if (c <= 0)
			return "";
		return "<b>" + c + "</b>";
	}
	
	
	
	public static String maxleng(String s,int max	) {
		if (s == null)
			return "";
		if (s.length() > max) {
			return s.substring(0, max ) + "..";
		}
		return s;
	}
	
	
	//表单内容显示
	public static String showconfig(List cs, String content , String ctx) {
		if (StringUtils.isEmpty(content))
			return "";
		
		Map m = new HashMap();
		for (int i = 0; i < cs.size(); i ++ ) {
			CmsBiaodanConfig c = (CmsBiaodanConfig) cs.get(i);
			m.put(c.getInputEnName(), c);
		}
		
		Map map = Utils.jsonToMap(content);
		StringBuilder sb = new StringBuilder();
		Iterator it = map.keySet().iterator();
		while (it.hasNext()) {
			String key = (String)it.next();
			CmsBiaodanConfig c = (CmsBiaodanConfig) m.get(key);
			
			sb.append(c.getInputCnName() + ":");
			if (c.getInputType().intValue() == 20) {
				
			}
			else if (c.getInputType().intValue() == 11) {
				sb.append("<a href='" + ctx + "/"+ map.get(key) + "' target='_blank'><img src='" + ctx +"/"+ map.get(key) + "' style='max-width:100px;max-height:100px;' /></a><br/>");
			}
			else {
				sb.append(map.get(key) + "<br/>");
			}
		}
		
		return sb.toString();
	}
	
	//时间以前
	public static String timedis(long time) {
		long now = System.currentTimeMillis();
		if (now - time < 60 * 1000)
			return "刚刚";
		else if (now - time < 60 * 60 * 1000) 
			return (int)((now - time)/1000/60) + "分钟以前";
		else if (now - time < 24 * 60 * 60 * 1000) 
			return (int)((now - time)/1000/60/60) + "小时以前";
		else if (now - time <365* 24 * 60 * 60 * 1000) 
			return (int)((now - time)/1000/60/60/24) + "天以前";
//		else if (now - time < 365*24 * 60 * 60  * 1000) 
//			return (int)((now - time)/1000/60/60/24/30) + "月以前";
		else 
			return (int)((now - time)/1000/60/60/24/365) + "年以前";
	}
	
	public static String showHead(HttpServletRequest request, String type, Long tid) {
//		if (StringUtils.isEmpty(yuan))
//			return "/image/logo.png";
		String tu = "avt";
		if ("group".equalsIgnoreCase(type))
			tu = "group";
		

		Logger log = Logger.getLogger(JstlUtils.class);
		
		String savePath = request.getSession().getServletContext().getRealPath("/") + "attached/" + tu + "/" + tid + ".jpg";
		log.info("nnnnnnnnnnnnname:" + savePath);
		
		File f = new File(savePath);
		if (f.exists())
			return "/attached/" + tu + "/" + tid + ".jpg";
		
		savePath = savePath.replaceAll(".jpg", ".png");
		log.info("nnnnnnnnnnnnname:" + savePath);
		f = new File(savePath);
		if (f.exists())
			return "/attached/" + tu + "/" + tid + ".png";
		
		savePath = savePath.replaceAll(".png", ".gif");
		log.info("nnnnnnnnnnnnname:" + savePath);
		f = new File(savePath);
		if (f.exists())
			return "/attached/" + tu + "/" + tid + ".gif";
		
		savePath = savePath.replaceAll(".gif", ".bmp");
		log.info("nnnnnnnnnnnnname:" + savePath);
		f = new File(savePath);
		if (f.exists())
			return "/attached/" + tu + "/" + tid + ".bmp";
		
		
		//不存在  并且是小组
		if ("group".equalsIgnoreCase(tu)) {
			savePath = request.getSession().getServletContext().getRealPath("/");
			ICmsGroupManager cmsGroupManager  = (ICmsGroupManager) SpringContext.getBean("cmsGroupManager");
			CmsGroup g = cmsGroupManager.getById(tid);
			//ImageUtils.zoomAndScale(savePath + this.cmsUserInfo.getPhoto(), savePath + "/attached/avt/" + user.getId() + "." + "jpg" , 100 , 100);
			ImageUtils.zoomAndScale(savePath + g.getPhoto(), savePath + "/attached/group/" + tid + g.getPhoto().substring(g.getPhoto().lastIndexOf(".")), 300, 300);
			
			return "/attached/group/" + tid + g.getPhoto().substring(g.getPhoto().lastIndexOf("."));
		}
		
		
		return "/image/logo2.png";
	}
	
	
	public static String smallphoto(HttpServletRequest request, String src, String type) {
		/*
		 * String t = ImageUtils.getFormat(p.getResource());
				ImageUtils.zoomAndScale(savePath +p.getResource(), savePath+p.getResource().replaceAll("." + t, "_m." + t) , 600, 600);
				ImageUtils.createThumbnailIn(savePath + p.getResource(), savePath+p.getResource().replaceAll("." + t, "_s." + t) , 200, 200);
		 */
		String savePath = Utils.getSessionByRequest(request).getServletContext().getRealPath("/") + "";
		String t = ImageUtils.getFormat(src);
		if (StringUtils.isNotEmpty(src)) {
			//加水印
			String b = src.replaceAll("." + t, "_" + "b" + "." + t);
			File tt = new File(savePath + b);
			if (tt.exists() == false) {
				ImageUtils.createThumbnailIn(savePath +src, savePath+b , 1200, 1200);
				ImageUtils.markImageByIcon(savePath + "/image/shuiyin.png", savePath+b, savePath+b, null);
			
				b = src.replaceAll("." + t, "_" + "m" + "." + t);
				ImageUtils.createThumbnailIn(savePath +src, savePath+b , 600, 600);
				ImageUtils.markImageByIcon(savePath + "/image/shuiyin.png", savePath+b, savePath+b, null);
			}
			
			
			String re = src.replaceAll("." + t, "_" + type + "." + t);
			File o = new File(savePath + src);
			File f = new File(savePath + re);
			if (f.exists() == false && o.exists()) {
				//如果不存在  现搞
				if ("m".equalsIgnoreCase(type)) {
					ImageUtils.createThumbnailIn(savePath +src, savePath+re , 600, 600);
				}
				else if ("s".equalsIgnoreCase(type)) {
					ImageUtils.createThumbnailIn(savePath +src, savePath+re , 200, 200);
				}
				else if ("t".equalsIgnoreCase(type)) {
					ImageUtils.createThumbnailIn(savePath +src, savePath+re , 80, 80);
				}
				else {
					return src;
				}
					
			}
			
			return re;
		}
		
		return src;
	}
	
	
	public static String config(java.lang.String name, java.lang.String def) {
		return ConfigUtils.getConfig(name, def);
	}
	
	
	//获取表单列表
	public static List getBiaodans(String key) {
		ICmsBiaodanManager cmsBiaodanManager  = (ICmsBiaodanManager) SpringContext.getBean("cmsBiaodanManager");
		ICmsBiaodanDetailManager cmsBiaodanDetailManager  = (ICmsBiaodanDetailManager) SpringContext.getBean("cmsBiaodanDetailManager");
	
		CmsBiaodanQuery q = new CmsBiaodanQuery();
		q.setListname(key);
		List list = cmsBiaodanManager.queryTop(q);
		if (list == null || list.isEmpty())
			return null;
		
		CmsBiaodan biaodan = (CmsBiaodan) list.get(0);
		CmsBiaodanDetailQuery dq = new CmsBiaodanDetailQuery();
		dq.setSortColumns("rank desc");
		dq.setInputListId(biaodan.getId());
		dq.setPageSize(11111);
		return cmsBiaodanDetailManager.findPage(dq).getResult();
	}
	
	
	//时长  字符串转字符串
	public static String classLength(String tm) {
		if (StringUtils.isNumeric(tm)) {
			int i = Integer.parseInt(tm);
			if (i > 60 * 24) {
				i = i / 60 / 24;
				return i + "天";
			}
			if (i > 120 && i % 60 == 0) {
				i = i / 60;
				return i + "小时";
			}
			
			return i + "分钟";
		}
		
		
		return tm;
	}
	
	public static void main(String[] args) {
		String tm = "1890.2222";
		tm = tm.substring(tm.lastIndexOf("."));
		System.out.print(tm);
	}

	
}






