<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>会员注册</title>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<link type="text/css" rel="stylesheet" href="../css/register.css" />
		<script type="text/jscript" src="../js/jquery.js"></script>
		<script type="text/jscript" src="../js/register.js"></script>
        <LINK href="../../css/top.css" rel=stylesheet>
	    <SCRIPT src="../../js/top.js" type="text/javascript"></SCRIPT>	
       <link href="../../front/css/favicon.css" rel="stylesheet" type="text/css" />
       <link href="../../front/css/style.css" rel="stylesheet" type="text/css" />
    
    </head>
    <body style="background-color:black;color: white;">
 <!-- 头部导航栏 -->
<div id="top">
    <div id=page>
	<div class="chl-poster simple" id=header>
		<div id=site-nav>
			<UL class=quick-menu>
			  <LI style="color: white;">${sessionScope.user.uname}&nbsp;&nbsp;&nbsp;亲，欢迎浏览尊驾网!</LI>
			  <LI>[<A href="Login.jsp">登录</A>]</LI>
			  <LI>[<A href="Register.jsp">免费注册</A>]</LI>
			  <LI class=home><A href="../../index.jsp">尊驾网首页</A> </LI>
			  <LI><A href="../../product_list.jsp">我要买</A></LI>
			  <LI class="mytaobao menu-item">
				  <div class=menu>
					  <A class=menu-hd href="front/page/MyPage.jsp" target=_top rel=nofollow>我的尊驾<B></B></A> 
					  <div class=menu-bd>
						  <div class=menu-bd-panel>
							  <div>
								  <A href="#" rel=nofollow>已买到的宝贝</A>
								  <A href="#" rel=nofollow>已卖出的宝贝</A> 
							  </div>
						  </div>
						  <S class=r></S><S class=rt></S><S class=lt></S><S class=b></S><S class="b b2"></S><S class=rb></S><S class=lb></S>
					  </div>
				  </div>
			  </LI>
			  <LI class=cart><A href="../../cart.jsp" rel=nofollow><S></S>购物车 </A></LI>
			  <LI class=favorite><A href="#" rel=nofollow>收藏夹</A></LI>
			  <LI class="search menu-item">
				  <div class=menu><SPAN class=menu-hd><S></S>搜索<B></B></SPAN> 
					  <div class=menu-bd>
						  <div class=menu-bd-panel>
							  <FORM name=topSearch action=http://s.taobao.com/search?ssid=s0><INPUT 
							  maxLength=60 name=q><BUTTON type=submit>搜 索</BUTTON> <INPUT type=hidden 
							  value=newsearch name=shopf> </FORM>
						  </div>
					  <S class=r></S><S class=rt></S><S class=lt></S><S class=b></S><S class="b b2"></S><S class=rb></S><S class=lb></S>
					  </div>
				  </div>
			  </LI>
			  <LI class="services menu-item last">
				  <div class=menu>
					  <A class=menu-hd href="../../index.jsp" target=_top>网站导航<B></B></A> 
					  <div class=menu-bd style="WIDTH: 210px; HEIGHT: 262px; _width: 202px">
						  <div class=menu-bd-panel>
							  <DL>
								<DT><A href="../../product_list.jsp">购车</A>
								<DD>
										<A href="../../product_list.jsp">所有车型</A>
										<A href="../../product.jsp">微型车</A> 
										<A href="../../product.jsp">小型车</A> 
										<A href="../../product.jsp">紧凑型车</A>
										<A href="../../product.jsp">中型车</A>
										<A href="../../product.jsp">中大型车</A> 
										<A href="../../product.jsp">豪华型车</A>
										<A href="../../product.jsp">跑车</A>
										<A href="../../product.jsp">商用车</A>
								</DD>
							</DL>
							  <DL>
								<DT><A href="../../product_list.jsp">品牌</A> 
								<DD><A href="../../product_list.jsp">奥迪</A> <A href="product_list.jsp">奔驰</A> <A href="product_list.jsp">汽车</A> <A href="product_list.jsp">雪佛兰</A> <A href="product_list.jsp">林肯</A> <A href="#">大众</A> <A href="product_list.jsp">北京现代</A> <A href="product_list.jsp">丰田</A> <A href="product_list.jsp">本田</A> <A href="product_list.jsp">别克</A> <A href="product_list.jsp">东风</A> <A href="product_list.jsp">跑车</A> <A href="#">桑塔纳</A> <A href="product_list.jsp">卡车</A> <A href="product_list.jsp">新品推出</A>
								</DD>
							</DL>
							  <DL>
								<DT><A href="../../product_list.jsp">淘江湖</A> &nbsp;<A href="product_list.jsp">淘二手车</A> </DT></DL>
							  <DL>
								<DT><A href="../../product.jsp">帮助中心</A> 
								<DD><A href="#">交易安全</A> <A href="#">维权中心</A> </DD></DL>
							  <DL class=last>
								<DD><STRONG style="FONT-WEIGHT: bold"><A href="../../product_list.jsp">更多内容</A></STRONG></DD>
							  </DL>
						  </div>
						  <S class=r></S><S class=rt></S><S class=lt></S><S class=b style="WIDTH: 169px"></S><S class="b b2" style="WIDTH: 169px"></S><S class=rb></S><S class=lb></S>
					  </div>
				  </div>
			  </LI>
		    </UL>
		</div>
    </div>
    </div>
    </div>   
    <!-- 头部结束 -->	
    	<center>	
            <div id="page">
                <div id="head"><img src="../image/logo8.jpg" alt=""/><h1 style="color: white;">---账户注册</h1></div>
				<div id="main" style="background-image: url('../image/nds4_0.jpg');">
					<div class="m01">
						<ul>
							<li><div class="xx">1.填写账户信息</div></li>
							<li><div class="xx">2.验证账户信息</div></li>
							<li><div class="yy">3.注册成功</div></li>
						</ul>
					</div>
					<input id="state" type="hidden" value="${state}"/>
					<input id="flag" type="hidden" value="${flag}"/>
					<div class="m02">
					<c:if test="${empty state or state eq 0}">
						<form action="userAction!register.action" method="post" style="margin-top: 70px;">
							<div class="f">
								<div class="ft">会员名：</div>
								<div class="co">
									<input class="tx" type="text" name="user.uname"/>
									<div class="error" id="ne"></div>
								</div>
							</div>
							<div class="f">
								<div class="ft">登录密码：</div>
								<div class="co">
									<input class="tx" type="password" name="user.pswd"/><div class="error" id="pe"></div><br>
									<div class="qd"><span id="s1"></span><span id="s2"></span><span id="s3"></span></div>
								</div>
							</div>
							<div class="f">
								<div class="ft">确认密码：</div>
								<div class="co">
									<input class="tx" type="password" name="pswd" readonly="readonly"/><div class="error" id="ce"></div>
								</div>
							</div>
							<div class="f">
								<div class="ft">验证码${state}：</div>
								<div class="co">
									<input class="tv" type="text" name="verify"/><input type="hidden" id="vv"/>
									<img id="yz" class="tv" src="userAction!getVerifyCode.action" title="请点击此处，填写验证码"/><div class="error" id="ve"></div>
								</div>
							</div>
							<div class="f">
								<div class="co">
									<input id="tj" class="tx" type="button" value="下一步" style="background-color: #E87F24;"/><br>
									<p class="xy">《尊驾服务协议》</p><br><textarea id="xy"></textarea>
								</div>
							</div>
						</form>
					</c:if>
					
					<c:if test="${state eq 1}">
						<form action="userAction!register.action" method="post" style="margin-top: 70px;">
							<input name="flag" type="hidden" value="1"/>
							<div id="next">
								<div>详细信息填写：</div>
								<div>用户邮箱：<input class="tx" type="text" name="user.uemail"/></div>
								<div>联系电话：<input class="tx" type="text" name="user.uphone"/></div>
								<div><input class="tx" type="submit" value="下一步" style="background-color: #E87F24;"/></div>
							</div>
						</form>
					</c:if>
					
					<c:if test="${state eq 2}">
						<div class="tishi">欢迎${sessionScope.user.uname}成为本站会员！&nbsp;<a href="Login.jsp">此处登录</a>&nbsp;!!!</div>
					</c:if>
					</div>
				</div>
			</div>
        </center> 
        
        <!-- ssi footer navigation start -->
<div id="footerarea" class="content">
  <div id="footer" class="clearfix">
    <ul class="footer_a1">
      <li><strong>关于本站</strong></li>
      <li><a href="/"><img class="arrow" src="./front/image/clear.jpg" alt="" />首页&nbsp;</a></li>
      <li><a href="/component/static/?view=legal"><img class="arrow" src="./front/image/clear.jpg" alt="" />网站声明&nbsp;</a></li>
      <li><a href="/component/static/?view=browser"><img class="arrow" src="./front/image/clear.jpg" alt="" />最佳浏览设置&nbsp;</a></li>
      <li><a href="/component/static/?view=contact"><img class="arrow" src="./front/image/clear.jpg" alt="" />联系我们&nbsp;</a></li>
    </ul>
        <ul class="footer_a1">
      <li><strong>尊驾车型</strong></li>
	  	    <li><a href="/models/newds5"><img class="arrow" src="./front/image/clear.jpg" alt="" />全新汽车</a></li>
	    	<li><a href="/models/ds3"><img class="arrow" src="./front/image/clear.jpg" alt="" />小型车</a></li>
	    	<li><a href="/models/ds4"><img class="arrow" src="./front/image/clear.jpg" alt="" />中型车</a></li>
	    	<li><a href="/models/ds5"><img class="arrow" src="./front/image/clear.jpg" alt="" />大型车</a></li>
	    	<li><a href="/models/concept-cars"><img class="arrow" src="./front/image/clear.jpg" alt="" />豪华车</a></li>
	    	
    </ul>
        <ul class="footer_a1">
      <li><strong>尊驾精神</strong></li>
	  	    	  		      
      <li><a href="/spirit/explore-ds-spirit"><img class="arrow" src="./front/image/clear.jpg" alt="" />探索汽车精神</a></li>
   	 	      
      <li><a href="/spirit/heritage"><img class="arrow" src="./front/image/clear.jpg" alt="" />经典传承</a></li>
   	 	      
      <li><a href="/spirit/motor-sports"><img class="arrow" src="./front/image/clear.jpg" alt="" />尊驾汽车活动</a></li>
   	 	
    </ul>
        <ul class="footer_a1">
      <li><strong>尊驾世界</strong></li>
	  	    	  		      
      <li><a href="/highlight/news"><img class="arrow" src="./front/image/clear.jpg" alt="" />新闻</a></li>
   	 	      
      <li><a href="/highlight/events"><img class="arrow" src="./front/image/clear.jpg" alt="" />活动</a></li>
   	 	      
      <li><a href="/highlight/dsworld"><img class="arrow" src="./front/image/clear.jpg" alt="" />尊驾汽车旗舰店</a></li>
   	 	      
      <li><a href="/highlight/dealer"><img class="arrow" src="./front/image/clear.jpg" alt="" />尊驾经销商</a></li>
   	 	      
      <li><a href="/highlight/boutique"><img class="arrow" src="./front/image/clear.jpg" alt="" />尊驾汽车精品</a></li>
   	 	      
      <li><a href="/highlight/about-capsa"><img class="arrow" src="./front/image/clear.jpg" alt="" />长安标致雪铁龙</a></li>
   	 	
    </ul>
        <ul class="footer_a1">
      <li><strong>尊驾服务</strong></li>
	  	    	  		      
      <li><a href="/service/introduction"><img class="arrow" src="./front/image/clear.jpg" alt="" />尊驾服务介绍</a></li>
   	 	      
      <li><a href="/service/human-smart-service"><img class="arrow" src="./front/image/clear.jpg" alt="" />人性智能服务</a></li>
   	 	      
      <li><a href="/service/genuine-spare"><img class="arrow" src="./front/image/clear.jpg" alt="" />尊驾汽车纯正配件</a></li>
   	 	      
      <li><a href="/service/accessories"><img class="arrow" src="./front/image/clear.jpg" alt="" />尊驾附件</a></li>
   	 	      
      <li><a href="/service/user-space"><img class="arrow" src="./front/image/clear.jpg" alt="" />用户空间</a></li>
   	 	      
      <li><a href="/form/service-onlineorder"><img class="arrow" src="./front/image/clear.jpg" alt="" />车主在线预约</a></li>
   	 	
    </ul>
       
    <div class="footer_a2">
      <div id="DSWeiboDownTitle"><strong>一键关注尊驾精神</strong></div>
      <div id="DSWeiboDown">
        <iframe style="margin-right:15px;" width="63" height="24" frameborder="0" allowtransparency="true" marginwidth="0" marginheight="0" scrolling="no" border="0" src="http://widget.weibo.com/relationship/followbutton.php?language=zh_cn&width=63&height=24&uid=2671713813&style=1&btn=red&dpc=1"></iframe>
      </div>
      <div class="homeCode" style="width:180px;height:86px;overflow:hidden"><div style="float:left;font-size:12px;text-align:right;height:150px;padding-top:20px;"><p>扫描二维码</p><p>关注尊驾官方微信</p></div><img src="../image/code.jpg" align="right" style="float:right;"/></div>      <p class="b01">客服热线：400-650-5556&nbsp;&nbsp;&nbsp;&nbsp;</p>
      <p class="b01">客服热线：400-650-5556&nbsp;&nbsp;&nbsp;&nbsp;</p>
      <p class="b02"><a href="#" target="_blank">粤ICP备12023369号-2&nbsp;&nbsp;&nbsp;&nbsp;</a></p>
    </div>
  </div>
</div>
<!-- ssi footer navigation end -->
    </body>
</html>