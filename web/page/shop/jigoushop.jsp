<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>机构开店申请${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
<script>
	var host1 = "${ctx}/";
	function uploadok2(from, f) {
						var t = (seturl("cmin", 115, 150, f));
						document.getElementById(from).value = f;
						document.getElementById(from + "_" + "span").innerHTML = "<a href='" + host1 + "attached/" + f + "' target='_blank'>" + "<img border='1px' style='width:50px;height:50px;' class='houlaiimg' src='" + host1 + "/attached/" + t + "' />" + "</a>";
						if (f.indexOf('swf') >0) {
							document.getElementById(from + "_" + "span").innerHTML = "" + 
							"<div style=\"width:100px;height:100px;overflow:hidden;\">"+
"														<object"+
"															classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"  "+
"															width=\"100\" height=\"100\">"+
"															<param name=\"movie\" value=\"/attached/" + f + "\" />"+
"															<!--[if !IE]>-->"+
"															<object type=\"application/x-shockwave-flash\"  "+
"																data=\"/attached/" + f + "\" width=\"100\" height=\"100\">"+
"																<!--<![endif]-->"+
"																<p>"+
"																	Alternative content"+
"																</p>"+
"																<!--[if !IE]>-->"+
"															</object>"+
"															<!--<![endif]-->"+
"														</object>"+
"													</div>	";
						}
					}
</script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../jquery.min.js"></script>
<script type="text/javascript" src="../../jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/scripts/locale/easyui-lang-zh_CN.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style>
.isRed{
	color: red;
	margin-left: 5px;
}
</style>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>


<div class="h25"></div>
<div class="w993">
<!--wal-->

<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle"><h1>我要开店</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="myShop">
           <h2>平台服务协议</h2>
           <div class="content" style="height:105px;">

<br/>甲乙双方本着自愿、平等、公平、诚实信用的原则，经充分协商，就乙方在甲方提供的交易平台上开设店铺、进行健身课程、健身消费卡以及健身指导服务销售及其他相关活动事宜达成如下协议。 
<br/> <br/>
<b>第一条	服务内容</b>
<br/>1.1 甲方向乙方提供网址为www.kiklink.com的网络交易平台及其他经双方认可的合法线上销售渠道（以下称“交易平台”），并根据本协议的约定收取（或代为收取）相关费用。 
<br/>1.2 乙方在甲方提供的交易平台上开设店铺，并直接向愿意购买乙方经营的运动健身服务、消费卡、运动健身课程及或运动健身教练提供的健身指导服务（以下统称“商品”）的消费者销售商品及提供相关售后服务；同时，乙方可以委托甲方进行商品（品牌）推广、参加甲方交易平台的各类促销活动及其他有偿活动。 
<br/>1.3 甲方向乙方提供商业智能管理平台（以下称“管理平台”），乙方可通过登陆该管理平台进行商品管理、销售数据查询、甲方交易平台政策及相关规定等内容的查询，管理平台上的销售数据供甲乙双方参考，最终销售数据以双方最终确认的结算单为准。   
<br/>1.4 乙方在其店铺内销售的商品，以及因销售商品而上传、展示的各类信息、图片，因销售商品而向消费者提供的售后服务、发票开具等，均以乙方自身名义进行。甲方作为网络交易平台服务方，不参与乙方店铺的任何经营活动。 
<br/>1.5 本协议为临时线上协议，有效期为甲方确认后直至签订正式协议结束，乙方上线前需签订纸质协议作为正式协议。
<br/>
<br/><b>第二条	乙方入驻 </b>
<br/>2.1 乙方入驻条件 
<br/>乙方申请入驻甲方交易平台，须同时具备以下条件： 
<br/>2.1.1 乙方是依法设立的企业法人，并已获得中华人民共和国企业法人营业执照及其他经营许可。
<br/>2.1.2 乙方同意遵守本协议约定及甲方交易平台、管理平台的相关规则及制度。
<br/>2.1.3 乙方有合法资格销售通过甲方交易平台销售的所有商品，不侵犯任何第三方的合法权益。 
<br/>2.2 乙方证明文件 
<br/>2.2.1 本协议签订时，乙方应在在线申请成功的5个工作日内向甲方提供其经营主体身份的证明文件，包括但不限于：营业执照（副本）复印件、税务登记证（副本）复印件、组织机构代码证（副本）复印件等甲方要求的文件。 
<br/>2.2.2 所有向甲方提供的文件，均必须在其有效期限内。 
<br/>2.2.3 在本协议履行期间，甲方有权随时要求乙方提供相关证明文件，乙方应立即无条件向甲方提供，如乙方在甲方指定的期限内无法提供相关证明文件，则甲方有权据此限制乙方经营相关商品，屏蔽、删除、断开相关商品链接或信息，直至关闭乙方店铺、解除本协议，乙方自行承担因此而遭受的损失。 
<br/>2.3 乙方对证明文件的声明和保证 
<br/>2.3.1 乙方声明：其向甲方提供的所有证明文件均是真实、合法、有效、准确的，并对此承担全部法律责任；如因乙方提供的证明文件存在虚假、失效、无效、歧义、不准确等原因而引发的纠纷或相关国家机关的处罚，将由乙方独立承担全部法律责任，并乙方进一步承诺：如因此而给甲方造成损害，乙方将赔偿甲方因此而遭受的全部损失。 
<br/>2.3.2 乙方保证：当其提交给甲方的证明文件或其他文件更新或变更时，将立即通知甲方，并根据甲方的要求提供新的证明文件给甲方；如因乙方证明文件的变更或更新，导致乙方不再符合甲方入驻条件，甲方有权据此限制乙方经营全部或部分相关商品，直至单方面解除本协议。 
<br/>2.4 乙方入驻流程 
<br/>2.4.1 本协议生效后，乙方根据甲方的指示完成在管理平台的账户注册；注册成功后，将获得“商家用户名”，乙方应根据系统提示及时修改登录密码。 
<br/>2.4.2 乙方应妥善保管用户名及密码信息，不得擅自转让或授权他人使用，并对利用该用户名和密码所进行的一切活动负全部责任。 
<br/>2.4.3甲方将在管理平台内公布甲方交易平台和管理平台的规则和制度并定期或不定期进行修订，一经在管理平台发布，即视为通知已送达乙方。乙方承诺将定期查阅，并进一步承诺遵守相关管理规则和制度；如乙方对甲方定期或不定期修订的规则和制度持有异议，则乙方有权选择提前15天以书面方式通知甲方而解除本协议；如乙方虽提出异议，但仍继续使用甲方提供的交易平台和管理平台的，视为乙方接受并同意该等变更。
<br/>
<br/><b>第三条	乙方店铺销售商品品类 </b>
<br/>3.1 乙方在甲方交易平台销售的商品品类包括：运动健身课程、运动健身服务、运动健身教练的指导服务以及运动健身场地消费卡等。 
<br/>3.2 乙方保证通过甲方提供的交易平台销售的商品均在其经营范围内，对于需要特殊许可的商品，乙方保证其已获得相关政府机关的许可文件，并在本协议签订时提供给甲方，如乙方未提供或未能提供，则不得在甲方提供的交易平台销售相关商品；如乙方擅自进行销售，一经发现，甲方有权立即采取措施限制乙方继续销售，如因此而致使甲方遭受相关国家机关的处罚或其他损害，乙方须赔偿甲方全部损失。
<br/>
<br/><b>第四条	相关费用及结算 </b>
<br/>4.1佣金及代收货款 
<br/>4.1.1按照有效订单金额向甲方支付订单金额的20 %的佣金，包括线上支付订单的佣金（消费者通过乙方在甲方交易平台开设的店铺购买乙方商品，对乙方商品下订单并完成购物流程，且已过退换货期无退换货发生，即视为有效订单）。 
<br/>4.1.2代收货款：消费者通过甲方为乙方提供的交易平台购买商品支付的款项，如采用线上支付方式，则乙方委托甲方代为收取，并按照4.1.3款约定的期限及方式支付给乙方，代收款项金额为甲方实际代为收取的款项金额去除当期消费者退换货产生的退款金额。 
<br/>4.1.3 佣金及代收货款结算方式：自然月结，每月第三个工作日前，甲方出具上月对账单和费用确认单，乙方在三个工作日内进行确认。如乙方对甲方出具的对帐单和费用确认单有异议，应在前述日期内向甲方提出书面异议报告，甲乙双方共同进行核查确认。如乙方无异议，则应在前述期限内签署确认文件。
<br/>如乙方未在前述期限内向甲方提出书面异议，亦未对甲方出具的对帐单和费用确认单进行确认，则视为乙方对甲方出具的对帐单和费用确认单予以确认。双方按照共同确认的结算金额进行财务结算。
<br/>4.1.4 结算金额=代收货款总额-佣金-其他费用。甲方需在七个工作日内向乙方支付结算金额款项。 
<br/>付款完成后，甲方向乙方开具已结算佣金的等额合法发票。 
<br/>乙方账户信息： 以后台录入为准，且乙方不得随意变更账户信息。
<br/><b>第五条	双方的权利和义务 </b>
<br/>5.1 甲方根据本协议向乙方提供交易平台，应维护平台的稳定运行，并对交易平台相关服务及其功能进行变更和更新、在交易平台中开发新的模块、功能和软件；除非甲方另有说明，否则变更后的服务等仍适用本协议。 
<br/>5.2 根据国家法律法规及政策的规定，甲方有权对乙方注册数据、发布的信息和交易行为进行检查监督，对发现的违法违规内容有权不经通知立即删除，并有权将乙方的违法违规行为在管理平台上进行公布；对发现的其他问题或疑问有权向乙方发出询问，或以书面方式通知乙方改正，乙方应在接到通知后立即做出说明或改正。对于乙方的上述违约行为，甲方有权追究其违约、侵权责任并/或解除本协议。 
<br/>5.3乙方负责对消费者提供售后服务，乙方委托甲方客服统一受理消费者的投诉和/或退换货要求，甲方将及时通知乙方进行处理。乙方应按照本协议及甲方交易平台、管理平台相关规则和制度的规定时限，完成处理。如乙方未及时处理，甲方有权根据自身判断在乙方交纳的质量服务保证金范围内向消费者先行赔付，如乙方交纳的质量服务保证金不足赔付，甲方有权自乙方交纳的到店支付保证金中先予扣除。因此而产生的后果将由乙方独立承担。 
<br/>5.4 为避免歧义，乙方理解：即便有本协议5.3款之约定，并不代表甲方参与乙方经营或为乙方商品提供售后服务，甲方仅作为交易平台提供方，接受乙方委托受理或依据本协议代乙方处理相关事务；任何情况下，乙方与消费者或甲方其他商家之间因网上交易行为而产生的争议或纠纷，乙方对于在甲方交易平台上开设店铺、进行经营并销售商品的一系列行为独立承担全部法律责任。  
<br/>5.5 甲方提供的交易平台举办促销等优惠活动时，甲方需在活动开始前5日通知乙方，乙方需在2日内答复是否参加该活动。如为全场活动（包括单个品类全场活动），乙方逾期未答复，甲方视为乙方默认同意参加该活动。乙方明确表示不参加的，甲方有权在活动期间将乙方的商品暂时进行下架处理。在此期间的乙方交纳的相关费用和乙方销售额的损失甲方不承担任何赔偿责任，甲方待活动结束后再将乙方商品上架。 
<br/>5.6 乙方在甲方提供的交易平台提供、发布的商品相关信息、商标标识、图片资料、模特图片、文字说明等，应确保及时更新。乙方委托并授权甲方为宣传推广乙方销售商品之目的使用、修改、复制和传播乙方提供的上述商品信息。 
<br/>5.7 未经甲方事先书面同意并授权，乙方不得以任何目的、任何形式使用甲方商标、标志及企业字号，否则，甲方保留追究乙方相关法律责任的权利，同时，如因此而给甲方造成损害，乙方承担相关法律责任。 
<br/>5.8 无论本协议因何种原因终止，乙方仍须对通过甲方交易平台销售的商品质量承担责任，并依照本协议的约定为消费者提供相应的售后服务。 
<br/>5.9 未经甲方书面同意，乙方不得将本协议项下的权利义务转让给任何第三方；乙方如委托第三方运营、管理其店铺的，该第三方的所有行为均视为乙方行为，乙方对该第三方的所有行为承担后果及全部法律责任。如因此给甲方造成损失的，甲方有权解除协议、扣除乙方全部保证金，并有权要求乙方就由此给甲方造成的损失承担赔偿责任。
<br/>
<br/><b>第六条	乙方陈述和保证 </b>
<br/>6.1 乙方保证在使用甲方交易平台过程中的一切行为均遵守国家相关法律法规的规定，遵守诚实信用原则，不进行任何不正当竞争行为，严格自律，维护国家利益，承担社会责任，公平、公正、健康有序地开展网上交易活动，不扰乱网上交易的正常秩序。不从事与网上交易无关的行为，不利用网上交易从事违法犯罪活动。 
<br/>6.2 乙方承诺：其所销售的商品符合包括但不限于《中华人民共和国消费者权益保护法》等国家法律法规的相关规定，符合国家、行业等相关质量标准等。 
<br/>6.3乙方承诺：对在甲方交易平台发布的商品相关信息、商标标识、图片资料、文字说明，模特图片等均具有完整的权利，不存在任何违法或侵犯他人权利的内容，且均真实、准确、合法，符合公序良俗，与乙方实际销售的商品一致，不含夸大或虚假内容，并保证在该等信息发生变更时及时更新。乙方同意并授权甲方以宣传推广其商品为目的使用、修改、复制和传播上述商品信息。  
<br/>6.4 乙方保证：未经甲方书面许可，不将甲方任何数据及资料用于本协议约定以外的用途。  
<br/>6.5 乙方保证维护甲方的良好声誉和企业形象，不得做出任何有损于甲方“品牌形象”和声誉的言论及行动，如甲方发现乙方有故意诋毁或损害甲方声誉的言行或行为的，甲方有权立即终止本协议，并追究乙方法律责任。 
<br/>6.6 乙方保证向购买其商品的消费者提供合法正规的发票，并保证按照国家相关规定缴纳税款。 
<br/>6.7 乙方保证其未隐瞒任何其他信息以致足以影响甲方签订及履行本协议。 
<br/><b>第七条	消费者权益保障 </b>
<br/>7.1 乙方承诺将根据国家相关法律、法规，本协议的约定及甲方交易平台、管理平台相关规则和制度，在利用甲方交易平台销售商品时，履行维护消费者权益的义务，包括但不限国家法律规定的消费者应享有的权益以及甲方交易平台“退换货”义务、“消费者赔付”义务等。 
<br/>7.2 为避免歧义，乙方确认：如果对于某项义务，国家法律法规、甲方交易平台、管理平台规则和制度、乙方自身售后服务政策均有约定，则以最有利于保障消费者利益的方式提供。 
<br/>7.3 乙方保证履行向消费者如实陈述的义务。 
<br/>7.4 乙方履行向消费者提供商品的质量保证义务。 
<br/>7.5 乙方保证履行向消费者作出的承诺，而无论该等承诺的作出是因何种原因，一旦公示于乙方店铺、相关商品页面或甲方交易平台上的其他消费者可见的位置，即视为乙方向消费者做出了承诺。 
<br/>7.6 乙方保证履行国家现行法律法规及未来发布的相关法律法规，甲方交易平台、管理平台现行规则及未来修订的规则中关于消费者权益保障的义务。 
<br/>7.7 所有关于乙方店铺、商品的消费者投诉、国家相关机关的检查、询问，应由乙方独立处理； 若有消费者向甲方投诉乙方所售商品，包括但不限于下列情形：销售方式、宣传图片或商品信息等侵权或违法；提供非法服务；其他甲方认为不宜继续销售的情形，甲方有权根据自身的判断，对该商品先行进行下架处理，并通知乙方提供相关证明文件，乙方应在2日内提交。若乙方不能提供或经查投诉属实的，甲方有权采取下列一项或多项措施： 
<br/>7.7.1 解除本协议。  
<br/>7.7.2要求乙方立即向消费者进行赔付或根据本协议的约定甲方先行向消费者进行赔付。 
<br/>7.7.3 乙方赔偿其他相关损失。 
<br/>
<br/><b>第八条	违约责任 </b>
<br/>8.1 若乙方违反本协议规定或国家相关法律法规规定，进行虚假宣传、价格欺诈、侵犯第三者合法权益等不正当经营行为，甲方有权对乙方采取冻结商家用户名、暂停结算款项、终止合作等措施。
<br/>8.2 若因乙方商品问题或售后服务问题等原因导致甲方被消费者投诉、起诉的，甲方有权选择与消费者和解、调解或诉讼，由此支出的一切费用均由乙方承担（包括但不限于律师费、诉讼费、和解或调解支付给消费者的赔偿或补偿、法院判令支付的违约金、赔偿金、行政机关处罚等），同时乙方应向甲方支付壹拾万元商誉赔偿金。 
<br/>8.3 如乙方未达到甲方交易平台、管理平台规定的指标，甲方有权按照相关规定从结算款项中扣除相应的补偿金。如乙方存在多次（三次及以上）未达标或其他甲方认为严重未达标情形的，甲方有权终止本协议并扣除乙方质量服务保证金。        
<br/>8.4 如乙方违反本协议约定的其他义务的，应按国家法律规定承担相应违约责任。 
<br/>8.5 乙方违反本协议约定向甲方支付的任何违约金、赔偿金及其它所有费用，应在该事件发生后5日内支付至甲方，否则，甲方有权在结算款项中直接扣除。 
<br/>
<br/><b>第九条	责任免除 </b>
<br/>9.1 甲方在此明确声明对服务不作任何明示或暗示的保证，包括但不限于对服务的可适用性、没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途之类的保证、声明或承诺。甲方对服务所涉的技术和信息的有效性、准确性、正确性、可靠性、质量、稳定、完整和及时性均不作承诺和保证。 
<br/>9.2 不论在何种情况下，甲方均不对因电力、网络、电脑、通讯或其他系统的故障、罢工（含内部罢工或劳工骚乱）、劳动争议、暴乱、起义、骚乱、生产力或生产资料不足、火灾、洪水、风暴、爆炸、战争、政府行为等不可抗力事件，国际、国内法院的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。 
<br/>9.3 使用交易平台服务下载或者获取任何资料的行为均出于乙方的独立判断，并由其自行承担因此产生的风险和责任。 
<br/>
<br/><b>第十条	协议的解除与终止 </b>
<br/>10.1 本协议期限届满，合同自动终止。 
<br/>10.2 除本协议另有约定外，任一方在本协议有效期内提前终止本协议的，须提前30天以书面形式通知对方，通知到达对方时本协议终止。 
<br/>10.3 甲乙双方协商一致，可解除本协议。 
<br/>10.4任何一方严重违反本协议约定，且经另一方书面通知后仍不予纠正时，守约方有权提前一个月以书面形式通知违约方解除本协议。 
<br/>10.5 发生不可抗力事件，致使本协议无法履行的，甲乙双方确认后可终止本协议。双方互不承担违约责任，乙方同意甲方不予退还已经交纳的服务费。   
<br/>10.6 本协议约定的其他解除或终止本协议的情形，依约定解除或终止本协议。 
<br/> 
<br/><b>第十一条	本协议解除或终止后的相关事宜 </b>
<br/>11.1 佣金及代收货款结算：本协议解除或终止之日起一个月后，甲乙双方对最终对账单、费用确认单进行核对，并按照共同确认的结算金额进行财务结算。 
<br/>11.2剩余服务费的返还：乙方已交纳的服务费，甲乙双方已履行的部分，甲方不予返还。甲乙双方未履行的部分，甲方在收到乙方返还的服务费收据后，将甲方系统中记录的服务费剩余金额返还乙方。 
<br/>11.3 保证金的返还 
<br/>11.3.1 甲方在确认乙方已支付所有费用且未发生违约行为后，通知乙方返还保证金收据。甲方在收到保证金收据后3个月内，向乙方返还保证金。 
<br/>11.3.2 如乙方发生需扣除保证金的违约行为的，甲方根据本协议约定扣除部分或全部保证金后通知乙方返还保证金收据。甲方在收到保证金收据后3个月内，向乙方返还剩余保证金。 
<br/>11.4 售后及质量保证：本协议解除或终止后，乙方仍应按本协议约定履行售后服务义务并承担产品质量责任。 
<br/> 
<br/><b>第十二条	保密条款 </b>
<br/>12.1 甲乙双方对于因签订和履行本协议所知悉的对方商业秘密、技术秘密承担保密义务，未经对方书面同意，不得向任何第三方透露。任何一方均应保证其工作人员履行上述保密义务并对此承担连带责任。 
<br/>12.2 一方违反保密义务的，应赔偿对方因此遭受的全部直接和间接损失，且守约方有权据此提前解除本协议及本协议项下的补充协议。 
<br/> 
<br/><b>第十三条	争议解决 </b>
<br/>13.1 执行本协议所发生或与本协议有关的一切争议，双方应通过友好协商解决。 
<br/>13.2 如双方通过协商不能达成一致，则应提交甲方所在地人民法院进行诉讼。  
<br/> 
<br/><b>第十四条	其  他 </b>
<br/>14.1 本协议自乙确认后在本协议1.5条所示有效期内持续有效， 
<br/>14.2 本协议执行中，甲乙双方需后补有权对其条款的任何变更、修改和增减，作为本协议组成部分，并与本协议具有同等效力。 
<br/>14.3 本协议无论是否解除或者终止，双方均永久承诺:不得在未经对方同意的前提下将对方正在使用或者正在申请注册的商标或者公司字号在任何类别申请注册商标，也不得在任何区域将对方正在使用或者正在申请注册的商标或者公司字号作为公司字号。 
<br/>
<br/><b>第十五条</b><br/>	甲乙双方已仔细阅读《平台服务协议》的相关内容，对于各条款甲乙双方相互之间已进行充分的解释和沟通，双方同意遵守协议的相关约定，最终协议内容，以正式纸质协议方式确认。

         </div>
         <div class="msg"><input id="agreed" name="" type="checkbox" value="1" checked="true" />同意协议内容</div>
      </div>
      <div class="Personal">
      <form id="form1" action="${ctx}/kailian/KlSellerShop/saveShop.do" method="post">
       
      	<input id="userType" name="userType" type="hidden" value="2" />
           <div class="list">
              <ul>
                <li><a href="${ctx}/kailian/KlSellerShop/openShop.do?center=center" >个人开店</a></li>
                <li><a href="#" class="aNow">机构开店</a></li>
              </ul>
           </div>
           <div class="form">
                <ul>
                  <li><em>店铺名称</em>
                      <span class="isRed">*</span><div class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="店铺具体名称，如：XXX健身俱乐部（朝外大悦城店）" id="shopName" name="shopName" value="${map.shop.shopName}" type="text" value=""/></div>
                  </li>
                   <li style="height:70px;"><em>店铺LOGO</em>
                       <span class="isRed">*</span><div class="input1 input2"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="" id="logo" name="logo" value="${map.shop.logo}" type="text"/></div>
                      <input type="button" id="logo_button" class="btn1" value="上传"/>
                      <input type="button" class="btn1" value="查看" onclick="showpic('logo');" />
                      <span class="tips">建议尺寸180*120,默认为开练网logo</span>
                  </li>
                  <li><em>开练招商专员</em>
                  <select id="ext10" name="ext10">
                  	<option value="未指定">未指定</option>
                  	<option value="杨宇航">杨宇航</option>
                  	<option value="姜巍">姜巍</option>
                  	<option value="常伟鸣">常伟鸣</option>
                  	<option value="李华鹏">李华鹏</option>
                  </select>
                  </li>
                  <li><em>所属范畴</em>
                      
                      <select id="shoptype" name="shoptype">
                      <option value="1">运动</option>
                      <option value="2">健身</option>
                      </select>
                      
                  </li>
                  <li><em>所在城市</em>
                      
                      <select id="provinceid" name="provinceid" onchange="getcities($(this).val());">
                            <c:forEach var="p" items="${map.provinces}">
                            	<option class="option_pro" value="${p.id}">${p.name}</option>
                            </c:forEach>
                      </select>
                      
                      <span id="citydiv">
                      <select id="cityid" name="cityid">
                            <option value="">请选择</option>
                      </select>
                      </span>
                      
                  </li>
                  <li><em>真实姓名</em>
                     <span class="isRed">*</span><div class="input1"><input id="realName" class="easyui-validatebox textbox" data-options="required:true" placeholder="商家负责人姓名" name="realName" value="${map.shop.realName}" class="input1"><input name="" type="text" /></div>
                  </li>
                  <li><em>身份证号码</em>
                      <div class="input1"><input placeholder="商家负责人身份证号码" id="idNumber" name="idNumber" value="${map.shop.idNumber}" type="text" /></div>
                  </li>
                  <li><em>电话</em>
                      <span class="isRed">*</span><div  class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="商家座机号及负责人手机号码" id="phoneno" name="phoneno" value="${map.shop.phoneno}" type="text" /></div>
                  </li>
                  <li><em>电子邮件</em>
                      <span class="isRed">*</span><div  class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="商家负责人电子邮件" id="email" name="email" value="${map.shop.email}" type="text" /></div>
                  </li>
                  <li><em>通讯地址</em>
                      <span class="isRed">*</span><div  class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="填写店铺具体地址" id="address" name="address" value="${map.shop.address}" type="text" /></div>
                  </li>
                  <li><em>交通方式</em>
                      <span class="isRed">*</span><div  class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="交通方式" id="ext9" name="ext9" value="${map.shop.ext9}" type="text" /></div>
                  </li>
                  <li><em>邮政编码</em>
                      <div  class="input1"><input id="postcode" name="postcode" value="${map.shop.postcode}" type="text" /></div>
                  </li>
                  <li><em>机构名称</em>
                      <span class="isRed">*</span><div  class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="填写公司具体名称（与营业执照相同）" id="companyName" name="companyName" value="${map.shop.companyName}" type="text" /></div>
                  </li>
                  <li><em>营业执照</em>
                  	                  	 <span class="isRed">*</span><div class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="请提供当年年检的营业执照副本正面照片" id="passportPicture" name="passportPicture" value="${map.shop.passportPicture}" type="text" />
                  	                  	 
                  	                  	 </div>
                  	                  	 <input type="button" class="btn1" value="查看" onclick="showpic('passportPicture');" />
                  	
                  </li>
                  <!--
                  <li><input type="button" class="btn2" value="上传其他资质证件照片" /></li>
                  -->
                  <li><em>组织机构代码</em>
                  	 <span class="isRed">*</span><div class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="请提供当年年检的组织机构代码副本正面照片" id="orgNumber" name="orgNumber" value="${map.shop.orgNumber}" type="text" />
                  	 </div>
                  	 <input type="button" class="btn1" value="查看" onclick="showpic('orgNumber');" />
                  </li>
                  <li><em>成立时间</em>
                      <div class="input1"><input id="createDate" name="createDate" value="${map.shop.createDate}" type="text" /></div>
                  </li>
                 
                <!-- 
                  <c:forEach var="v" begin="1" end="${maxcoach}">
                      <li id="coachli${v}" class="li_02"><em>教练介绍</em>
                   		<div class="Agency" style="height:1000px;">
                      <dl>
                        <dd><div  class="name1">姓名</div>
                            <div class="input1 input4"><input id="name${v}" name="name${v}" type="text" /></div>
                        </dd>
                        <dd><div class="name1">性别</div>
                             <input id="sex${v}" sex="name${v}" value="1" class="" type="radio"/>男
                             <input id="sex${v}" name="sex${v}" value="2" class="" type="radio"/>女
                        </dd>
                        <dd><div class="name1">年龄</div>
                            <select id="birthYear${v}" name="birthYear${v}">
                                  <c:forEach var="v1" begin="1900" end="2010">
                            		<option value="${v1}" <c:if test="${v1 eq 1980}"> selected = "selected"</c:if>>${v1}</option>
                         		</c:forEach>
                            </select>
                            <select id="birthMonth${v}" name="birthMonth${v}">
                                  <c:forEach var="v1" begin="1" end="12">
                            		<option value="${v1}">${v1}</option>
                         		</c:forEach>
                            </select>
                            <select id="birthDate${v}" name="birthDate${v}">
                                  <c:forEach var="v1" begin="1" end="30">
                            		<option value="${v1}">${v1}</option>
                         		</c:forEach>
                            </select>
                        </dd>
                        <dd><div class="name1">照片</div>
                        　　　　<input type="button" class="btn1" value="添加照片" />
                        </dd>
                        <dd class="dd_01">
                            <div class="name1">教练履历</div>
                            <textarea id="profile${v}" name="profile${v}" cols="" rows=""></textarea>
                            <span class="clear_f"></span>
                           <div class="btnDiv">
                           <c:if test="${v ne maxcoach}">
                           <input type="button" onclick="addcoach();" class="btn4" value="添加更多教练 " />
                            </c:if>
                            <c:if test="${v ne 1}">
                            	<input type="button" onclick="delcoach(${v});" class="btn4" value="删除该教练 " />
                            </c:if>
                            </div>
                        </dd>
                      </dl>
                     </div>
                  </li>
                     </c:forEach>
                      
                        -->
                  
                  
                  
                  
                  
                  
                  
                   <li><em>开户银行及户名</em>
                      <span class="isRed">*</span><div class="input1 input3"><input class="easyui-validatebox textbox" data-options="required:true" id="bankname" placeholder="请填写具体支行信息" name="bankname" value="${map.shop.bankname}" type="text" /></div>
                      <div class="input1 input3"><input class="easyui-validatebox textbox" data-options="required:true" id="bankopenname" placeholder="户名原则上应与公司名称相同" name="bankopenname" value="${map.shop.bankopenname}" type="text" /></div>
                  </li>
                  <li><em>银行账户</em>
                      <span class="isRed">*</span><div class="input1"><input class="easyui-validatebox textbox" data-options="required:true" placeholder="对公银行账号" id="banknumber" name="banknumber" value="${map.shop.banknumber}" type="text" /></div>
                      <span class="tips">请认真核对</span>
                  </li>
                 <li><input type="button" onclick="if($('#form1').form('validate')) submit1();else alert('请完善资料');" class="btn1" value="资料提交" />
                 &nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="button" onclick="$('#tmp').val('tmp');submit1();" class="btn1" value="资料保存" />
                  </li>
                </ul>
           </div>
          </form>
      </div>
      <!--pageBoxEnd-->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script>

$(document).ready(function(){
	$("#provinceid").find("option[value='${map.shop.provinceid}']").attr("selected",true);
	$("#ext10").find("option[value='${map.shop.ext10}']").attr("selected",true);
	//$("#shoptype").find("option[value='${map.shop.shoptype}']").attr("selected",true);
	<c:choose>
		<c:when test="${map.shop eq null}">
		getcities(174);
		</c:when>
		<c:otherwise>
		getcities(${map.shop.provinceid});
		</c:otherwise>
	</c:choose>
	bankno('banknumber');
});

function submit1() {
	if ($('#form1').form('validate') == false) {
		alert("请完善资料再提交哦!");
		return;
	}
	//alert($('#agreed').attr('checked') );
	if ($('#agreed').attr('checked') == 'true' || $('#agreed').attr('checked') == 'checked') 
		$('#form1').submit();
	else 
		alert("需要同意协议内容才能开店");
}

function getcities(proname) {
	//alert(proname);
	$.ajax({
            type: 'GET',
            url: '${ctx}/kailian/CtUserCity/listAjax.do?provinceid=' + proname,
            dataType: 'json',
            success: function (data) {
				var cont = "<select id='cityid' name='cityid'>";
                for (var i in data['rows']) {
                	
                	//alert(v);
                    cont += "<option value='" + data['rows'][i]['id'] + "'>" + data['rows'][i]['name'] + "</option>";
                }
                cont += "</select>";
                //alert(cont);
                $('#citydiv').html(cont);
                
    
	//haobawode();
            }
        })
}


var nowi = 1;
$(function(){
	for (var i = 2; i <= 100; i ++) {
		$('#coachli' + i).hide();
	}

})

function addcoach() {
	nowi ++;
	$('#coachli' + nowi).show();
}

function delcoach(i) {
	$('#coachli' + i).hide();
}


KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				K('#logo_button').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#logo').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#logo').val(url);
								editor.hideDialog();
							}
						});
					});
					
				});
				
				K('#passportPicture').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#passportPicture').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#passportPicture').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				K('#orgNumber').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#orgNumber').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#orgNumber').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
			});

</script>
</body>
</html>