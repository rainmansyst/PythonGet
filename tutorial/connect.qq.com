<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<title>QQ互联官网首页</title>
	<link rel="stylesheet" type="text/css" href="./src/component/main/css/index.css" />

	<style>
		/* Reset CSS
		 * --------------------------------------- */
		body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,
		form,fieldset,input,textarea,p,blockquote,th,td {
		    padding: 0;
		    margin: 0;
		}
		a{
			text-decoration:none;
		}
		table {
		    border-spacing: 0;
		}
		fieldset,img {
		    border: 0;
		}
		address,caption,cite,code,dfn,em,strong,th,var {
		    font-weight: normal;
		    font-style: normal;
		}
		strong{
			font-weight: bold;
		}
		ol,ul {
		    list-style: none;
		    margin:0;
		    padding:0;
		}
		caption,th {
		    text-align: left;
		}
		q:before,q:after {
		    content:'';
		}
		abbr,acronym {
			 border: 0;
		}
	</style>
	<script type="text/javascript" src="./lib/browserDetect.js"></script>
	<script>
		var noSupportItems = {ie: [7, 5, 6]}
		BrowserDetect.init(noSupportItems);
	</script>
	<script type="text/javascript" src="./lib/jquery.min.js"></script>
	<script type="text/javascript" src="./src/component/main/js/jquery.fullPage.js"></script>
	<script type="text/javascript" src="./src/component/main/js/index.js"></script>
</head>
<body>
	<div class="container">

		<div id="fullpage" class="show-mobile">

			<!-- section0 -->
			<div class="section " id="section0">
				<div class="banner-bg-warp"><img src="" class="banner-bg"/></div>
				<div class="header">
					<!-- <div class="blur-bg blur"></div> -->
					<div class="nav-warp">
						<div class="nav-logo-warp"></div>
						<div class="nav">
							<ul>
								<li> <a href="./index.html" class="mnav" name="m1">首页</a><span class="mnav-bg"></span></li>
								<li><a id="goManager" class="mnav" name="m2">应用管理</a><span class="mnav-bg"></span></li>
								<li><a href="http://wiki.connect.qq.com/ " class="mnav" name="m3">文档资料</a><span class="mnav-bg"></span></li>
							</ul>
						</div>
						<div class="nav-login-warp">
							
						</div>
					</div>
				</div>
				<div class="emergency-notice">【最新通知】<span style="color:#0273C0" class = "stop_business_audit">QQ互联2017年春节期间审核业务暂停公告</span><span style="color:#0273C0" class = "safety_upgrade">   【重要通知】QQ互联iOS应用接口安全升级公告</span></div>
				<div class="content">
					<div class="slide" id="slide1">
						<div class="banner-warp">
							<div class="banner-top">
								<img src="./src/component/main/img/sdk-logo.png"/>
							</div>
							<div class="banner-bottom">
								<h1>QQ互联 移动终端SDK</h1>
								<span> 将SDK集成在您的移动应用中，轻松登录，乐于分享。</span>
							</div>
							<button class="btn-learn-more" onclick="">了解更多</button>
						</div>
					</div>
					<div class="slide" id="slide2">
						<div class="banner-warp">
							<div class="banner-top">
								<img src="./src/component/main/img/sdk-logo.png"/>
							</div>
							<div class="banner-bottom">
								<h1>QQ互联 消息通知</h1>
								<span> 将SDK集成在您的移动应用中，轻松登录，乐于分享。</span>
							</div>
							<button class="btn-learn-more" onclick="">了解更多</button>
						</div>
					</div>
				</div>
			</div>
			<!-- section0 end -->

			<!-- section1 -->
			<div class="section" id="section1">
				<div class="site">
					<div class="ui-title">
						<h1>网站应用接入</h1>
						<span>接入QQ互联平台，让你的移动应用支持QQ帐号登录、分享到QQ等功能。</span>
					</div>
					<div class="ui-step">
						<ul>
							<li class="step step-1">
								<div class="step-content">
									<span class="arrow"></span>
									<div class="step-info">
										<div class="step-logo"></div>
										<div class="step-title">开发者注册</div>
									</div>
									<div class="step-desc">开发者根据需要可以申请成<br/>为个人或公司类型的开发者</div>
								</div>
							</li>
							<li class="step step-2">
								<div class="step-content">
									<span class="arrow"></span>
									<div class="step-info">
										<div class="step-logo"></div>
										<div class="step-title">创建应用</div>
									</div>
									<div class="step-desc">填写应用相关信息，开发者就可以<br/>创建网站应用</div>
								</div>
							</li>
							<li class="step step-3">
								<div class="step-content">
									<span class="arrow"></span>
									<div class="step-info">
										<div class="step-logo"></div>
										<div class="step-title">完善资料</div>
									</div>
									<div class="step-desc">完善更加丰富的应用信息<br/>如应用图标、下载地址等</div>
								</div>
							</li>
							<li class="step step-4">
								<div class="step-content">
									<div class="step-info">
										<div class="step-logo"></div>
										<div class="step-title">提交审核</div>
									</div>
									<div class="step-desc">QQ互联团队将对应用信息<br/>进行审核，把控应用质量</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="ui-bottom">
						<button type="button" class="btn-create" id = "goCreateWeb"></button>
					</div>
				</div>

				<div class="mobile">
					<div class="ui-title">
						<h1>移动应用接入</h1>
						<span>接入QQ互联平台，让你的移动应用支持QQ帐号登录、分享到QQ等功能。</span>
					</div>
					<div class="ui-step">
						<ul>
							<li class="step step-1">
								<div class="step-content">
									<span class="arrow"></span>
									<div class="step-info">
										<div class="step-logo"></div>
										<div class="step-title">开发者注册</div>
									</div>
									<div class="step-desc">开发者根据需要可以申请成<br/>为个人或公司类型的开发者</div>
								</div>
							</li>
							<li class="step step-2">
								<div class="step-content">
									<span class="arrow"></span>
									<div class="step-info">
										<div class="step-logo"></div>
										<div class="step-title">创建应用</div>
									</div>
									<div class="step-desc">填写应用相关信息，开发者就可以<br/>创建移动应用</div>
								</div>
							</li>
							<li class="step step-3">
								<div class="step-content">
									<span class="arrow"></span>
									<div class="step-info">
										<div class="step-logo"></div>
										<div class="step-title">完善资料</div>
									</div>
									<div class="step-desc">完善更加丰富的应用信息<br/>如应用图标、下载地址等</div>
								</div>
							</li>
							<li class="step step-4">
								<div class="step-content">
									<div class="step-info">
										<div class="step-logo"></div>
										<div class="step-title">提交审核</div>
									</div>
									<div class="step-desc">QQ互联团队将对应用信息<br/>进行审核，把控应用质量</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="ui-bottom">
						<button type="button" class="btn-create" id = "goCreateMobile"></button>
					</div>
				</div>

			</div>
			<!-- section1 end -->

			<!-- section2 -->
			<div class="section" id="section2">
				<div class="site">
					<div class="content">
						<div class="ui-left">
							<div class="tips-warp">
								<div class="tips-title"></div>
								<div class="tips-desc">
									通过接入QQ登录功能，用户可使
									用QQ帐号快速登录你的网站，降低注册门槛，为你的
									网站带来海量新用户。
								</div>
							</div>
						</div>
						<div class="ui-right">
							<div class="pc-mod">
								<div class="login-frame">
									<i class="ball-1"></i>
									<i class="ball-2"></i>
									<i class="ball-3"></i>
									<i class="ball-4"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="mobile">
					<div class="content">
						<div class="ui-left">
							<div class="tips-warp">
								<div class="tips-title"></div>
								<div class="tips-desc">
									通过接入QQ登录功能，用户可使
									用QQ帐号快速登录你的APP，降低APP注册门槛，进而给
									APP带来海量新用户。
								</div>
							</div>
						</div>
						<div class="ui-right">
							<div class="pc-mod">
								<div class="login-frame">
									<i class="ball-1"></i>
									<i class="ball-2"></i>
									<i class="ball-3"></i>
									<i class="ball-4"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- section2 end -->

			<!-- section3 -->
			<div class="section" id="section3">
				<div class="site">
					<div class="content">
						<div class="ui-left">
							<div class="pc-mod">
								<div class="login-frame">
									<i class="logo logo-1"></i>
									<i class="logo logo-2"></i>
									<i class="logo logo-3"></i>
									<i class="logo logo-4"></i>
									<i class="logo logo-5"></i>
									<i class="logo logo-6"></i>
									<i class="logo logo-7"></i>
									<i class="logo logo-8"></i>
									<i class="point point-1"></i>
									<i class="point point-2"></i>
									<i class="point point-3"></i>
									<i class="point point-4"></i>
									<i class="point point-5"></i>
									<i class="point point-6"></i>
									<i class="point point-7"></i>
									<i class="point point-8"></i>
								</div>
							</div>
						</div>
						<div class="ui-right">
							<div class="tips-warp">
								<div class="tips-title"></div>
								<div class="tips-desc">
									网站应用接入QQ分享组件，方便用户将资讯
									等内容分享给QQ好友、群、讨论组或空间,进行
									快速社交传播，为你的网站带回大量流量
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="mobile">
					<div class="content">
						<div class="ui-left">
							<div class="pc-mod">
								<div class="login-frame">
									<i class="logo logo-1"></i>
									<i class="logo logo-2"></i>
									<i class="logo logo-3"></i>
									<i class="logo logo-4"></i>
									<i class="logo logo-5"></i>
									<i class="logo logo-6"></i>
									<i class="logo logo-7"></i>
									<i class="logo logo-8"></i>
									<i class="point point-1"></i>
									<i class="point point-2"></i>
									<i class="point point-3"></i>
									<i class="point point-4"></i>
									<i class="point point-5"></i>
									<i class="point point-6"></i>
									<i class="point point-7"></i>
									<i class="point point-8"></i>
								</div>
							</div>
						</div>
						<div class="ui-right">
							<div class="tips-warp">
								<div class="tips-title"></div>
								<div class="tips-desc">
									移动应用接入QQ分享组件，方便用户将资讯
									等内容分享给QQ好友、群、讨论组或空间，进行
									快速社交传播，为你的APP带回大量流量
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="footer">
					<div class="footer-content">
						<div class="line"></div>
						<div class="footer-info">
							<div class="ui-left">
								<span>1998 - 2016 Tencent All Right Reserved.</span>
							</div>
							<div class="ui-right">
								<span><a href="http://support.qq.com/write.shtml?fid=1213&ADPUBNO=">联系我们</a></span>|
								<span><a href="http://open.qq.com/ ">开放平台</a></span>|
								<span><a href="http://crm2.qq.com/page/portalpage/wpa.php?uin=800013811&cref=http://open.qq.com/support/&dm=qq.com&&f=1&ty=1 ">在线客服</a></span>|
								<span><a href="http://wiki.connect.qq.com/%E5%BC%80%E5%8F%91%E8%80%85%E5%8D%8F%E8%AE%AE ">开发者协议</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- section3 end -->
		</div>

		<div class="ui-app-tab">
			<div class="btn-app-warp">
				<span class="bottom-line"></span>
				<a href="javascript:" class="btn-app mobile-app" name="mobile">移动应用</a>
				<a href="javascript:" class="btn-app site-app" name="site">网站应用</a>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="./src/component/main/js/funParabola.js"></script>
	<script src="https://imgcache.qq.com/ptlogin/ac/v9/js/ptloginout.js"></script>
	<script type="text/javascript" src="./src/component/main/js/jquery.login.js"></script>
</body>

</html>
