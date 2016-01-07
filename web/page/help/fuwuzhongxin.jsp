<%@ page contentType="text/html;charset=UTF-8" %>
<div class="ServiceCenter">
          <div class="tel">电话客服：<b>400-062-0600</b>服务时间：周一至周五 9点到18点</div>
          <div class="h20"></div>
          <h2>你也可以通过网站提交反馈问题，我们会及时给您反馈！</h2>
         <form id="form1">
          <div class="form">
          
          <ul>
            <li><em>标　题：</em>
                <input type="text" id="title" class="input1 input_hover"  placeholder="请输入标题文字..." title="请输入标题文字..."/><div class="tips">*</div>
            </li>
            <li><em>邮　箱：</em>
                <input type="text" id="email" class="input1 input_hover" placeholder="请输入正确的邮件地址..." title="请输入正确的邮件地址..." /><div class="tips">*</div>
            </li>
            <li><em>电　话：</em>
                <input type="text" id="phone" class="input1 input_hover" placeholder="请输入可以准确联系到您的电话号码..." title="请输入可以准确联系到您的电话号码..." />
            </li>
            <li><em>称　呼：</em>
                <input type="text" id="name" class="input1 input2 input_hover" placeholder="如何称呼您..." title="如何称呼您..." />
                <div class="selectDiv"><span></span>
                     <select name="" id="sex">
                         <option value="先生">先生</option>
                         <option value="女士">女士</option>
                     </select>
                </div>
            </li>
            <li class="li_01"><em>内　容：</em>
                <textarea name="" cols="" rows="" id="content" class="input_hover" placeholder="留言内容..."></textarea>
            </li>
            <!-- 
            <li><em>验证码：</em>
                <input id="validnum" name="validnum" type="text" class="input1 input2" />
                 <div class="lzm"><img id="validnumimg" src="${ctx}/valid" onclick="$('#validnumimg').attr('src','${ctx}/valid');" /></div>
                 <a href="#" onclick="$('#validnumimg').attr('src','${ctx}/valid');">换一张</a>
            </li>
             -->
          </ul>
          
       </div>
       <div class="btnDiv"><a href="#" onclick="$('#form1').reset();">重  置</a><a href="#" onclick="tijiao();">提  交</a></div>
       </form>
     </div>
	<script>
		function tijiao() {
			var title = $('#title').val();
			var email = $('#email').val();
			var phone = $('#phone').val();
			var content = $('#content').val();	
			var sex = $('#sex').val();	
			var name = $('#name').val();	
			
			if (email=="" && phone == "") {
				alert("请至少输入一种联系方式");
			}
			else if (content == "") {
				alert("请输入内容");
			}
			else if (name == "") {
				alert("请输入称呼");
			}
			else {
				var username1 =name+"" +sex;
				var addition1 = phone + "," + email + "," + title;
				$.ajax({
            		type: 'POST',
            		url: '${ctx}/kailian/CmsCommonComment/save.do',
            		dataType: 'json',
            		data: {ajax:'ajax',username:username1,comment:content,addition:addition1,targetType:'2',validnum:$('#validnum').val()},
            		success: function (data) {
						alert("提交成功，感谢您的参与");
						//window.location.href = "${ctx}/index.html";
					}
				});
			}
			
		}
	</script>