<%@ page contentType="text/html;charset=UTF-8" %>
<div class="Cooperation">
	<c:set var="bs" value="${my:getBiaodans('合作伙伴')}" />
          <div class="list">
               <ul>
               	<c:forEach var="v" items="${bs}">
               		<li><table><tr><td width="125" height="45" align="center" valign="middle">
               			<a href="${my:jvalue(v.content,'url')}" target="_blank"><img style="max-width:125px;max-height:45px;" src="${ctx}/${my:jvalue(v.content,'logo')}" alt="${v.title}" /></a>
               			</td></tr></table>
               		</li>
               	</c:forEach>
                 <!-- 
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_3.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_4.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_1.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_3.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_4.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_1.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_3.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_4.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_1.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_3.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_4.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_1.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_3.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_4.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_1.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_3.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_4.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_1.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_2.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_3.jpg" alt="" /></a></li>
                 <li><a href=""><img src="${ctx}/image/limg125_4.jpg" alt="" /></a></li>
                  -->
               </ul>
               <span class="clear_f"></span>
               <div class="h25"></div>
          </div>
          <!-- 
          <div class="list1">
               <ul>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
                 <li><a href="">合作伙伴单位名称</a></li>
               </ul>
               <span class="clear_f"></span>
               <div class="h25"></div>
          </div>
          <div class="pageNum">
          每页有40条记录　　第1页　　共1页<a href="">首页</a>|<a href="">末页</a>转到<input type="text" class="input1" />页
          </div>
           -->
     </div> 