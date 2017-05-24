<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="Content-Language" content="zh-cn" />
	<meta name="robots" content="all" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="Description" content="QQ登录是QQ互联的一种接入方式，通过接入QQ登录，用户可以使用QQ账号直接登录接入的站点，QQ登录同时提供API授权，帮助网站主将用户操作同步到QQ空间和朋友网；" />
	<meta name="Keywords" content="QQ登录、QQ登陆、QQ互联、API、QQ账号、QQ互联Wiki" />
	<title>get_user_info &#8212; 文档资料--QQ互联</title>
  <script type="text/javascript">var _speedMark = new Date();</script>
	<link rel="profile" href="http://gmpg.org/xfn/11" />
  <link rel="pingback" href="http://wiki.connect.qq.com/xmlrpc.php" />
  <link media="all" rel="stylesheet" type="text/css" href="http://pub.idqqimg.com/qconn/site/css/common.css?t=20130523001"/>
  <link media="all" rel="stylesheet" type="text/css" href="http://pub.idqqimg.com/qconn/wiki/connectwikiv1/style.css?v=1.0.0"/>
  <link rel='dns-prefetch' href='//pub.idqqimg.com' />
<link rel='dns-prefetch' href='//s.w.org' />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/wiki.connect.qq.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.6.1"}};
			!function(a,b,c){function d(a){var c,d,e,f,g,h=b.createElement("canvas"),i=h.getContext&&h.getContext("2d"),j=String.fromCharCode;if(!i||!i.fillText)return!1;switch(i.textBaseline="top",i.font="600 32px Arial",a){case"flag":return i.fillText(j(55356,56806,55356,56826),0,0),!(h.toDataURL().length<3e3)&&(i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,65039,8205,55356,57096),0,0),c=h.toDataURL(),i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,55356,57096),0,0),d=h.toDataURL(),c!==d);case"diversity":return i.fillText(j(55356,57221),0,0),e=i.getImageData(16,16,1,1).data,f=e[0]+","+e[1]+","+e[2]+","+e[3],i.fillText(j(55356,57221,55356,57343),0,0),e=i.getImageData(16,16,1,1).data,g=e[0]+","+e[1]+","+e[2]+","+e[3],f!==g;case"simple":return i.fillText(j(55357,56835),0,0),0!==i.getImageData(16,16,1,1).data[0];case"unicode8":return i.fillText(j(55356,57135),0,0),0!==i.getImageData(16,16,1,1).data[0];case"unicode9":return i.fillText(j(55358,56631),0,0),0!==i.getImageData(16,16,1,1).data[0]}return!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i;for(i=Array("simple","flag","unicode8","diversity","unicode9"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<link rel='https://api.w.org/' href='http://wiki.connect.qq.com/wp-json/' />
<link rel="alternate" type="application/json+oembed" href="http://wiki.connect.qq.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fwiki.connect.qq.com%2Fget_user_info" />
<link rel="alternate" type="text/xml+oembed" href="http://wiki.connect.qq.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fwiki.connect.qq.com%2Fget_user_info&#038;format=xml" />
		<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
		  <!--[if lt IE 9]>
  <script src="http://pub.idqqimg.com/qconn/wiki/connectwikiv1/js/html5.js" type="text/javascript"></script>
  <![endif]-->
</head>

<body>
<!--页面header-->
<header class="header">
  <nav>
    <a href="http://connect.qq.com" class="logo" id="top"></a>
    <!-- <div class="searchBar">
      <input type="text" name="searchBar" id="searchBar" value="搜索资料库/API" />
    </div> -->

    <!-- ul class="userInfo" id="userInfo">
      <li>
        <a href="javascript:void(0);" id="login" hidefocus="false">登录</a>
        <a href="javascript:void(0);" class="subNav" id="subNav"></a>
        <a href="javascript:void(0);" id="subNav_hover"></a>
        <ul id="personal_list">
            <li><a href="http://connect.qq.com/toc/auth_manager">授权管理</a></li>
                        <li><a id="logout" href="javascript:void(0)">退出</a></li>
        </ul>
      </li>
    </ul -->

	 <!--start navigator-->
    <!-- ul class="navigator">
      <li id="nav_index"><a href="http://connect.qq.com" hidefocus="false">首页</a></li>
      <li id="nav_qqlogin"><a href="http://connect.qq.com/intro/login" hidefocus="false">QQ登录</a></li>
      <li id="nav_intro"><a href="http://connect.qq.com/intro/wpa" hidefocus="false">功能组件</a></li>
	    <li id="nav_manage"><a href="http://connect.qq.com/manage/login" hidefocus="false">管理中心</a></li>
      <li class="current"><a href="/" hidefocus="false" target="_blank">文档资料</a></li>
      <li><a href="http://bbs.open.qq.com/forum.php?gid=110" hidefocus="false" target="_blank">论坛</a></li>
      <li><a href="/faq" hidefocus="false">FAQ</a></li>
    </ul -->

  </nav>
</header>

<!-- 回到顶部 -->
<a href="#top" class="backtotop" id="backtotop">
	<i class="icon"></i><span>返回顶部</span>
</a>
<!-- container 开始 -->
<div class="container clearfix">
<div class="breadcrumb">
	<ul>
		<li class="navbithome">
			<a class="navbit_text" href="http://connect.qq.com" title="首页">
				<img src="http://qzonestyle.gtimg.cn/open_proj/img/open_platform_v3/ico_home.png"/>
			</a>
		</li>
		<li class="navbit">
			<i></i><a class="navbit_text" href="/" title="文档资料">文档资料</a>
		</li>
			<li class="navbit">
			<i></i><a class="navbit_text" href="###" title="get_user_info">get_user_info</a>
		</li>
		</ul>
</div>		<div class="left_col">
			<ul class="sidebar_menu" id="sidebar_menu">

		
				<li>
					<h4>
						<a href="http://wiki.connect.qq.com/" title="重要更新"  class="current">  重要更新</a>
					</h4>

			
				</li>

		
				<li>
					<h4>
						<a href="javascript:void(0);" title="接入指南"  > <i class="ico ico_li"></i> 接入指南</a>
					</h4>

			
					<ul >

			
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e6%88%90%e4%b8%ba%e5%bc%80%e5%8f%91%e8%80%85" title="成为开发者"   > 成为开发者</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/__trashed-2" title="创建应用"   > 创建应用</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/sdk%e4%b8%8b%e8%bd%bd" title="SDK下载"   > SDK下载</a>
							</h5>

										</ul>

			
				</li>

		
				<li>
					<h4>
						<a href="javascript:void(0);" title="网站应用"  > <i class="ico ico_li"></i> 网站应用</a>
					</h4>

			
					<ul >

			
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e7%bd%91%e7%ab%99%e5%ba%94%e7%94%a8%e6%8e%a5%e5%85%a5%e6%b5%81%e7%a8%8b" title="网站应用接入概述"   > 网站应用接入概述</a>
							</h5>

					
						<li>
							<h5 class="hassub">
								<a href="javascript:void(0);" title="网站开发流程"   > <i class="ico ico_hassub" title="点击展开"></i>网站开发流程</a>
							</h5>

												<ul >

														<li>
									<a href="http://wiki.connect.qq.com/%e5%87%86%e5%a4%87%e5%b7%a5%e4%bd%9c_oauth2-0" title="准备工作_OAuth2.0"  >准备工作_OAuth2.0</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/%e6%94%be%e7%bd%aeqq%e7%99%bb%e5%bd%95%e6%8c%89%e9%92%ae_oauth2-0" title="放置“QQ登录”按钮"  >放置“QQ登录”按钮</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/%e4%bd%bf%e7%94%a8authorization_code%e8%8e%b7%e5%8f%96access_token" title="获取Access_Token"  >获取Access_Token</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/%e8%8e%b7%e5%8f%96%e7%94%a8%e6%88%b7openid_oauth2-0" title="获取用户OpenID"  >获取用户OpenID</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/openapi%e8%b0%83%e7%94%a8%e8%af%b4%e6%98%8e_oauth2-0" title="OpenAPI调用说明"  >OpenAPI调用说明</a>
								</li>

						
							</ul>
									</ul>

			
				</li>

		
				<li>
					<h4>
						<a href="javascript:void(0);" title="移动应用"  > <i class="ico ico_li"></i> 移动应用</a>
					</h4>

			
					<ul >

			
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/?p=2195" title="移动应用接入概述"   > 移动应用接入概述</a>
							</h5>

					
						<li>
							<h5 class="hassub">
								<a href="javascript:void(0);" title="Android应用"   > <i class="ico ico_hassub" title="点击展开"></i>Android应用</a>
							</h5>

												<ul >

														<li>
									<a href="http://wiki.connect.qq.com/qq%e7%99%bb%e5%bd%95" title="QQ登录"  >QQ登录</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/%e5%88%86%e4%ba%ab%e6%b6%88%e6%81%af%e5%88%b0qq%ef%bc%88%e5%ae%9a%e5%90%91%e5%88%86%e4%ba%ab%ef%bc%89_android_sdk" title="QQ分享"  >QQ分享</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/android_sdk%e6%8e%a5%e5%8f%a3%e5%88%97%e8%a1%a8" title="Android_SDK接口列表"  >Android_SDK接口列表</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/android%e5%b8%b8%e8%a7%81%e9%97%ae%e9%a2%98" title="Android常见问题"  >Android常见问题</a>
								</li>

						
							</ul>
				
						<li>
							<h5 class="hassub">
								<a href="javascript:void(0);" title="iOS应用"   > <i class="ico ico_hassub" title="点击展开"></i>iOS应用</a>
							</h5>

												<ul >

														<li>
									<a href="http://wiki.connect.qq.com/ios_sdk%e7%8e%af%e5%a2%83%e6%90%ad%e5%bb%ba" title="iOS_SDK环境搭建"  >iOS_SDK环境搭建</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/ios_sdk_api_%e4%bd%bf%e7%94%a8%e8%af%b4%e6%98%8e" title="iOS_SDK_API_使用说明"  >iOS_SDK_API_使用说明</a>
								</li>

						
							</ul>
									</ul>

			
				</li>

		
				<li>
					<h4>
						<a href="javascript:void(0);" title="OAuth协议介绍"  > <i class="ico ico_li"></i> OAuth协议介绍</a>
					</h4>

			
					<ul >

			
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/oauth2-0%e7%ae%80%e4%bb%8b" title="OAuth2.0简介"   > OAuth2.0简介</a>
							</h5>

					
						<li>
							<h5 class="hassub">
								<a href="javascript:void(0);" title="OAuth2.0开发指引"   > <i class="ico ico_hassub" title="点击展开"></i>OAuth2.0开发指引</a>
							</h5>

												<ul >

														<li>
									<a href="http://wiki.connect.qq.com/%e5%bc%80%e5%8f%91%e6%94%bb%e7%95%a5_server-side" title="开发攻略_Server-side"  >开发攻略_Server-side</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/%e5%bc%80%e5%8f%91%e6%94%bb%e7%95%a5_client-side" title="开发攻略_Client-side"  >开发攻略_Client-side</a>
								</li>

						
							</ul>
				
						<li>
							<h5 class="hassub">
								<a href="javascript:void(0);" title="OAuth2.0升级指引"   > <i class="ico ico_hassub" title="点击展开"></i>OAuth2.0升级指引</a>
							</h5>

												<ul >

														<li>
									<a href="http://wiki.connect.qq.com/oauth1-0%e5%8d%87%e7%ba%a7%e5%88%b0oauth2-0%e6%8c%87%e5%bc%95" title="OAuth1.0升级到OAuth2.0指引"  >OAuth1.0升级到OAuth2.0指引</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/%e7%bd%91%e7%ab%99%e5%8d%87%e7%ba%a7oauth2-0%e8%af%b4%e6%98%8e%e6%8c%87%e5%8d%97" title="网站升级OAuth2.0说明指南"  >网站升级OAuth2.0说明指南</a>
								</li>

														<li>
									<a href="http://wiki.connect.qq.com/%e5%8d%87%e7%ba%a7oauth2-0%e5%b8%b8%e8%a7%81%e9%97%ae%e9%a2%98" title="升级OAuth2.0常见问题"  >升级OAuth2.0常见问题</a>
								</li>

						
							</ul>
									</ul>

			
				</li>

		
				<li>
					<h4>
						<a href="javascript:void(0);" title="API文档"  > <i class="ico ico_li"></i> API文档</a>
					</h4>

			
					<ul >

			
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/api%e5%88%97%e8%a1%a8" title="API列表"   > API列表</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://connect.qq.com/sdk/webtools/index.html" title="API调试工具"  target="_blank" > API调试工具</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e9%9b%86%e6%88%90%e6%8f%92%e4%bb%b6" title="集成插件"   > 集成插件</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e5%85%ac%e5%85%b1%e8%bf%94%e5%9b%9e%e7%a0%81%e8%af%b4%e6%98%8e" title="返回码说明"   > 返回码说明</a>
							</h5>

										</ul>

			
				</li>

		
				<li>
					<h4>
						<a href="javascript:void(0);" title="SDK及资源下载"  > <i class="ico ico_li"></i> SDK及资源下载</a>
					</h4>

			
					<ul >

			
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/sdk%e4%b8%8b%e8%bd%bd" title="SDK下载"   > SDK下载</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e8%a7%86%e8%a7%89%e7%b4%a0%e6%9d%90%e4%b8%8b%e8%bd%bd" title="视觉素材下载"   > 视觉素材下载</a>
							</h5>

										</ul>

			
				</li>

		
				<li>
					<h4>
						<a href="javascript:void(0);" title="问题&amp;解答"  > <i class="ico ico_li"></i> 问题&amp;解答</a>
					</h4>

			
					<ul >

			
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e5%b8%b8%e8%a7%84%e9%97%ae%e9%a2%98-20170322" title="开发者须知"   > 开发者须知</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e7%89%b9%e6%ae%8a%e9%97%ae%e9%a2%98-top10" title="常见问题"   > 常见问题</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e5%bc%80%e5%8f%91%e8%81%94%e8%b0%83%e7%9b%b8%e5%85%b3%e9%97%ae%e9%a2%98" title="开发联调相关问题"   > 开发联调相关问题</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e5%9b%9e%e8%b0%83%e5%9c%b0%e5%9d%80%e5%b8%b8%e8%a7%81%e9%97%ae%e9%a2%98%e5%8f%8a%e4%bf%ae%e6%94%b9%e6%96%b9%e6%b3%95" title="回调地址常见问题及修改方法"   > 回调地址常见问题及修改方法</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e5%bc%80%e5%8f%91%e8%80%85%e5%8f%8d%e9%a6%88" title="开发者反馈"   > 开发者反馈</a>
							</h5>

										</ul>

			
				</li>

		
				<li>
					<h4>
						<a href="http://wiki.connect.qq.com/%e6%a6%82%e5%bf%b5%e5%92%8c%e6%9c%af%e8%af%ad" title="概念和术语"  >  概念和术语</a>
					</h4>

			
				</li>

		
				<li>
					<h4>
						<a href="javascript:void(0);" title="政策与规范"  > <i class="ico ico_li"></i> 政策与规范</a>
					</h4>

			
					<ul >

			
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e7%bd%91%e7%ab%99%e5%ae%a1%e6%a0%b8%e8%a7%84%e8%8c%83" title="网站审核规范"   > 网站审核规范</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e7%a7%bb%e5%8a%a8%e5%ba%94%e7%94%a8%e6%8e%a5%e5%85%a5%e6%b5%81%e7%a8%8b%ef%bc%88%e6%94%b9%ef%bc%89test" title="网站前端页面规范"   > 网站前端页面规范</a>
							</h5>

					
						<li>
							<h5 >
								<a href="http://wiki.connect.qq.com/%e5%bc%80%e5%8f%91%e8%80%85%e5%8d%8f%e8%ae%ae" title="开发者协议"   > 开发者协议</a>
							</h5>

										</ul>

			
				</li>

		
			</ul>
		</div>

		<div class="main">
<!-- 首页 -->
	
<div id="post-383" class="post">
	<h2 class="entry-title">get_user_info</h2>

	<div class="entry-content wp-editor clearfix">
		<h2><span class="mw-headline">What&#8217;s New?</span></h2>
<p>2013年5月，网站和移动应用都可以调用本接口。用户信息字段增加了QQ头像字段。</p>
<p>2012年9月20日，新增返回参数&#8221;is_yellow_year_vip&#8221;，支持获取用户是否年费黄钻的信息。</p>
<h2><span class="mw-headline">1.接口说明</span></h2>
<p>获取登录用户在QQ空间的信息，包括昵称、头像、性别及黄钻信息（包括黄钻等级、是否年费黄钻等）。</p>
<h2><span class="mw-headline">2.使用场景</span></h2>
<p>此接口主要用于网站使用QQ登录时，直接拉取用户在QQ空间的昵称、头像、性别等信息，降低用户的注册成本。</p>
<h2><span class="mw-headline">3.接口调用说明</span></h2>
<h3><span class="mw-headline">3.1请求说明</span></h3>
<table class="t">
<tbody>
<tr class="h">
<td>url</td>
<td>https://graph.qq.com/user/get_user_info</td>
</tr>
<tr>
<td>支持验证方式</td>
<td><a title="OAuth2.0简介" href="http://wiki.connect.qq.com/oauth2-0%e7%ae%80%e4%bb%8b">oauth2.0</a></td>
</tr>
<tr class="h">
<td>格式</td>
<td>JSON</td>
</tr>
<tr>
<td>http请求方式</td>
<td>GET</td>
</tr>
<tr class="h">
<td>是否需要鉴权</td>
<td>需要</td>
</tr>
<tr>
<td>接口调试</td>
<td><a class="external text" title="http://connect.qq.com/sdk/webtools/index.html#get_user_info" href="http://connect.qq.com/sdk/webtools/index.html#get_user_info" target="_blank" rel="nofollow">点击这里测试</a></td>
</tr>
</tbody>
</table>
<h3><span class="mw-headline">3.2输入参数说明</span></h3>
<p><span style="color: red;">各个参数请进行URL 编码，编码时请遵守</span> <a class="external text" title="http://tools.ietf.org/html/rfc1738" href="http://tools.ietf.org/html/rfc1738" target="_blank" rel="nofollow">RFC 1738</a>。</p>
<p>（1）通用参数</p>
<p>-OAuth2.0协议必须传入的通用参数，详见<a title="OpenAPI调用说明_OAuth2.0" href="http://wiki.connect.qq.com/openapi%e8%b0%83%e7%94%a8%e8%af%b4%e6%98%8e_oauth2-0">这里</a></p>
<h3><span class="mw-headline">3.3请求示例</span></h3>
<p>以OAuth2.0协议为例（敏感信息都用*号进行了处理，实际请求中需要替换成真实的值）：</p>
<div class="code">
<p>https://graph.qq.com/user/get_user_info?</p>
<p>access_token=*************&amp;</p>
<p>oauth_consumer_key=12345&amp;</p>
<p>openid=****************</p>
</div>
<h3><span class="mw-headline">3.4返回参数说明</span></h3>
<table class="t">
<tbody>
<tr>
<th width="80"><b>参数说明</b></th>
<th width="150"><b>描述</b></th>
</tr>
<tr>
<td>ret</td>
<td>返回码</td>
</tr>
<tr class="h">
<td>msg</td>
<td>如果ret&lt;0，会有相应的错误信息提示，返回数据全部用UTF-8编码。</td>
</tr>
<tr>
<td>nickname</td>
<td>用户在QQ空间的昵称。</td>
</tr>
<tr class="h">
<td>figureurl</td>
<td>大小为30×30像素的QQ空间头像URL。</td>
</tr>
<tr>
<td>figureurl_1</td>
<td>大小为50×50像素的QQ空间头像URL。</td>
</tr>
<tr class="h">
<td>figureurl_2</td>
<td>大小为100×100像素的QQ空间头像URL。</td>
</tr>
<tr>
<td>figureurl_qq_1</td>
<td>大小为40×40像素的QQ头像URL。</td>
</tr>
<tr class="h">
<td>figureurl_qq_2</td>
<td>大小为100×100像素的QQ头像URL。需要注意，不是所有的用户都拥有QQ的100&#215;100的头像，但40&#215;40像素则是一定会有。</td>
</tr>
<tr>
<td>gender</td>
<td>性别。 如果获取不到则默认返回&#8221;男&#8221;</td>
</tr>
<tr class="h">
<td>is_yellow_vip</td>
<td>标识用户是否为黄钻用户（0：不是；1：是）。</td>
</tr>
<tr>
<td>vip</td>
<td>标识用户是否为黄钻用户（0：不是；1：是）</td>
</tr>
<tr class="h">
<td>yellow_vip_level</td>
<td>黄钻等级</td>
</tr>
<tr>
<td>level</td>
<td>黄钻等级</td>
</tr>
<tr class="h">
<td>is_yellow_year_vip</td>
<td>标识是否为年费黄钻用户（0：不是； 1：是）</td>
</tr>
</tbody>
</table>
<h3><span class="mw-headline">3.5返回码说明</span></h3>
<p><b>0</b>: 正确返回</p>
<p><b>其它</b>: 失败。错误码说明详见：<a title="公共返回码说明" href="http://wiki.connect.qq.com/%e5%85%ac%e5%85%b1%e8%bf%94%e5%9b%9e%e7%a0%81%e8%af%b4%e6%98%8e">公共返回码说明</a>。</p>
<h3><span class="mw-headline">3.6正确返回示例</span></h3>
<p>JSON示例:</p><!-- Crayon Syntax Highlighter v2.2.1 -->

		<div id="crayon-5911e062be7d5" class="crayon-syntax crayon-theme-familiar crayon-font-monaco crayon-os-pc print-yes" data-settings=" minimize scroll-mouseover wrap" style=" margin-top: 12px; margin-bottom: 12px; float: none; clear: both; font-size: 12px !important; line-height: 15px !important;">
		
			<div class="crayon-plain-wrap"></div>
			<div class="crayon-main" style="">
				<table class="crayon-table">
					<tr class="crayon-row">
				<td class="crayon-nums " data-settings="show">
					<div class="crayon-nums-content" style="font-size: 12px !important; line-height: 15px !important;"><div class="crayon-num" data-line="crayon-5911e062be7d5-1">1</div><div class="crayon-num" data-line="crayon-5911e062be7d5-2">2</div><div class="crayon-num" data-line="crayon-5911e062be7d5-3">3</div><div class="crayon-num" data-line="crayon-5911e062be7d5-4">4</div><div class="crayon-num" data-line="crayon-5911e062be7d5-5">5</div><div class="crayon-num" data-line="crayon-5911e062be7d5-6">6</div><div class="crayon-num" data-line="crayon-5911e062be7d5-7">7</div><div class="crayon-num" data-line="crayon-5911e062be7d5-8">8</div><div class="crayon-num" data-line="crayon-5911e062be7d5-9">9</div><div class="crayon-num" data-line="crayon-5911e062be7d5-10">10</div><div class="crayon-num" data-line="crayon-5911e062be7d5-11">11</div><div class="crayon-num" data-line="crayon-5911e062be7d5-12">12</div><div class="crayon-num" data-line="crayon-5911e062be7d5-13">13</div><div class="crayon-num" data-line="crayon-5911e062be7d5-14">14</div><div class="crayon-num" data-line="crayon-5911e062be7d5-15">15</div><div class="crayon-num" data-line="crayon-5911e062be7d5-16">16</div><div class="crayon-num" data-line="crayon-5911e062be7d5-17">17</div><div class="crayon-num" data-line="crayon-5911e062be7d5-18">18</div><div class="crayon-num" data-line="crayon-5911e062be7d5-19">19</div><div class="crayon-num" data-line="crayon-5911e062be7d5-20">20</div><div class="crayon-num" data-line="crayon-5911e062be7d5-21">21</div><div class="crayon-num" data-line="crayon-5911e062be7d5-22">22</div><div class="crayon-num" data-line="crayon-5911e062be7d5-23">23</div><div class="crayon-num" data-line="crayon-5911e062be7d5-24">24</div><div class="crayon-num" data-line="crayon-5911e062be7d5-25">25</div><div class="crayon-num" data-line="crayon-5911e062be7d5-26">26</div><div class="crayon-num" data-line="crayon-5911e062be7d5-27">27</div><div class="crayon-num" data-line="crayon-5911e062be7d5-28">28</div><div class="crayon-num" data-line="crayon-5911e062be7d5-29">29</div><div class="crayon-num" data-line="crayon-5911e062be7d5-30">30</div><div class="crayon-num" data-line="crayon-5911e062be7d5-31">31</div></div>
				</td>
						<td class="crayon-code"><div class="crayon-pre" style="font-size: 12px !important; line-height: 15px !important;"><div class="crayon-line" id="crayon-5911e062be7d5-1"><span class="crayon-sy">{</span></div><div class="crayon-line" id="crayon-5911e062be7d5-2">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-3"><span class="crayon-s">"ret"</span><span class="crayon-o">:</span><span class="crayon-cn">0</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-4">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-5"><span class="crayon-s">"msg"</span><span class="crayon-o">:</span><span class="crayon-s">""</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-6">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-7"><span class="crayon-s">"nickname"</span><span class="crayon-o">:</span><span class="crayon-s">"Peter"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-8">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-9"><span class="crayon-s">"figureurl"</span><span class="crayon-o">:</span><span class="crayon-s">"http://qzapp.qlogo.cn/qzapp/111111/942FEA70050EEAFBD4DCE2C1FC775E56/30"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-10">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-11"><span class="crayon-s">"figureurl_1"</span><span class="crayon-o">:</span><span class="crayon-s">"http://qzapp.qlogo.cn/qzapp/111111/942FEA70050EEAFBD4DCE2C1FC775E56/50"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-12">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-13"><span class="crayon-s">"figureurl_2"</span><span class="crayon-o">:</span><span class="crayon-s">"http://qzapp.qlogo.cn/qzapp/111111/942FEA70050EEAFBD4DCE2C1FC775E56/100"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-14">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-15"><span class="crayon-s">"figureurl_qq_1"</span><span class="crayon-o">:</span><span class="crayon-s">"http://q.qlogo.cn/qqapp/100312990/DE1931D5330620DBD07FB4A5422917B6/40"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-16">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-17"><span class="crayon-s">"figureurl_qq_2"</span><span class="crayon-o">:</span><span class="crayon-s">"http://q.qlogo.cn/qqapp/100312990/DE1931D5330620DBD07FB4A5422917B6/100"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-18">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-19"><span class="crayon-s">"gender"</span><span class="crayon-o">:</span><span class="crayon-s">"男"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-20">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-21"><span class="crayon-s">"is_yellow_vip"</span><span class="crayon-o">:</span><span class="crayon-s">"1"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-22">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-23"><span class="crayon-s">"vip"</span><span class="crayon-o">:</span><span class="crayon-s">"1"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-24">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-25"><span class="crayon-s">"yellow_vip_level"</span><span class="crayon-o">:</span><span class="crayon-s">"7"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-26">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-27"><span class="crayon-s">"level"</span><span class="crayon-o">:</span><span class="crayon-s">"7"</span><span class="crayon-sy">,</span></div><div class="crayon-line" id="crayon-5911e062be7d5-28">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-29"><span class="crayon-s">"is_yellow_year_vip"</span><span class="crayon-o">:</span><span class="crayon-s">"1"</span></div><div class="crayon-line" id="crayon-5911e062be7d5-30">&nbsp;</div><div class="crayon-line" id="crayon-5911e062be7d5-31"><span class="crayon-sy">}</span></div></div></td>
					</tr>
				</table>
			</div>
		</div>
<!-- [Format Time: 0.0045 seconds] -->
<p>&nbsp;</p>
<h3><span class="mw-headline">3.7错误返回示例</span></h3>
<p>&nbsp;</p>
<div class="code"> { &#8220;ret&#8221;:1002, &#8220;msg&#8221;:&#8221;请先登录&#8221; }</div>
<h2><span class="mw-headline">4.相关问题</span></h2>
<p>你可以直接通过我们的<a class="external text" title="http://support.qq.com/discuss/710_1.shtml" href="http://support.qq.com/discuss/710_1.shtml" target="_blank" rel="nofollow">支持系统</a>查看更多问题或提问，也可以直接联系我们的在线客服<br />
<a class="external text" title="http://b.qq.com/webc.htm?new=0&amp;sid=800030681&amp;eid=2188z8p8p8p8P8p8x8z8q&amp;o=opensns.qq.com&amp;q=7" href="http://b.qq.com/webc.htm?new=0&amp;sid=800030681&amp;eid=2188z8p8p8p8P8p8x8z8q&amp;o=opensns.qq.com&amp;q=7" target="_blank" rel="nofollow"><img alt="zx_qq.gif" src="http://im.bizapp.qq.com:8000/zx_qq.gif" /></a></p>
	</div><!-- .entry-content -->

</div><!-- #post-383 -->
	</div>
</div>
<!-- container 结束 -->

<!--页脚部分-->
<footer>
  <!--页脚链接-->
  <section class="links">
    <a href="http://connect.qq.com/about">联系我们</a>
    <a href="http://open.qq.com/">开放平台</a>
    <a href="http://user.qzone.qq.com/1240081547">认证空间</a>
    <a href="http://e.t.qq.com/QQConnect">官方微博</a>
    <a href="http://b.qq.com/webc.htm?new=0&sid=800030681&eid=2188z8p8p8p8P8p8x8z8q&o=opensns.qq.com&q=7" target="_blank">在线客服</a>
  </section>

  <!--版权声明-->
  <section class="copyright">
  Copyright &copy; 1998 - 2013 Tencent. <a href="http://www.tencent.com/en-us/le/copyrightstatement.shtml" target="_blank" class="c_tx2">All Rights Reserved.</a><br />
  腾讯公司 版权所有
  </section>
</footer>
<link rel='stylesheet' id='crayon-css'  href='http://wiki.connect.qq.com/wp-content/plugins/crayon-syntax-highlighter/css/min/crayon.min.css?ver=2.2.1' type='text/css' media='all' />
<link rel='stylesheet' id='crayon-theme-familiar-css'  href='http://wiki.connect.qq.com/wp-content/plugins/crayon-syntax-highlighter/themes/familiar/familiar.css?ver=2.2.1' type='text/css' media='all' />
<link rel='stylesheet' id='crayon-font-monaco-css'  href='http://wiki.connect.qq.com/wp-content/plugins/crayon-syntax-highlighter/fonts/monaco.css?ver=2.2.1' type='text/css' media='all' />
<script type='text/javascript' src='http://pub.idqqimg.com/lib/jquery/1.7.2/jquery.min.js?ver=1.7.3'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var CrayonSyntaxSettings = {"version":"2.2.1","is_admin":"0","ajaxurl":"http:\/\/wiki.connect.qq.com\/wp-admin\/admin-ajax.php","prefix":"crayon-","setting":"crayon-setting","selected":"crayon-setting-selected","changed":"crayon-setting-changed","special":"crayon-setting-special","orig_value":"data-orig-value","debug":""};
var CrayonSyntaxStrings = {"copy":"\u4f7f\u7528 %s \u590d\u5236\uff0c\u4f7f\u7528 %s \u7c98\u8d34\u3002","minimize":"Click To Expand Code"};
/* ]]> */
</script>
<script type='text/javascript' src='http://wiki.connect.qq.com/wp-content/plugins/crayon-syntax-highlighter/js/min/crayon.min.js?ver=2.2.1'></script>
<script type='text/javascript' src='http://wiki.connect.qq.com/wp-includes/js/wp-embed.min.js?ver=4.6.1'></script>
<script type="text/javascript" src="http://pub.idqqimg.com/qconn/wiki/connectwikiv1/js/all.js?v=1.0.1"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=25033303" charset="UTF-8"></script>
</html>