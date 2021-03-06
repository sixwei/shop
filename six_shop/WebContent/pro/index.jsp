<%@page contentType="text/html; charset=gbk" pageEncoding="gbk" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html>
<head>
<meta charset="gbk">
<title>电商平台首页</title>

<!--js-->
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/common.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/ddsmoothmenu.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/jquery.elastislide.js"></script>
<script src="js/jquery.jcarousel.min.js"></script>
<script src="js/jquery.accordion.js"></script>
<script src="js/light_box.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".inline").colorbox({
			inline : true,
			width : "50%"
		});
	});
</script>
<!--end js-->

<!-- Mobile Specific Metas ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS ================================================== -->

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/orange.css">
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/ddsmoothmenu.css" />
<link rel="stylesheet" href="css/elastislide.css" />
<link rel="stylesheet" href="css/home_flexslider.css" />

<link rel="stylesheet" href="css/light_box.css" />
<script src="js/html5.js"></script>

</head>
<body>
	<div class="mainContainer sixteen container">
		<!--Header Block-->
		<div class="header-wrapper">
			<header class="container">
				<div class="head-right">
					<ul class="top-nav">
						<li class=""><a href="404_error.html" title="我的账户">我的账户</a></li>
						<li class="my-wishlist"><a href="404_error.html" title="我的收藏">我的收藏</a></li>
						<li class="contact-us"><a href="contact_us.html" title="联系我们">联系我们</a></li>
						<li class="checkout"><a href="404_error.html" title="付款">付款</a></li>
						<li class="log-in"><a href="login.html" title="登录">登录</a></li>
					</ul>
					<ul class="currencyBox">
						<li id="header_currancy" class="currency"><a
							class="mainCurrency" href="#">币种: RMB</a>
							<div id="currancyBox" class="currency_detial">
								<a href="#">￥</a> <a href="#"></a> <a href="#">$</a>
							</div></li>
					</ul>
					<section class="header-bottom">
						<div class="cart-block">
							<ul>
								<li>(2)</li>
								<li><a href="cart.html" title="Cart"><img title="Item"
										alt="Item" src="images/item_icon.png" /></a></li>
								<li>Item</li>
							</ul>
							<div id="minicart" class="remain_cart" style="display: none;">
								<p class="empty">购物车中有(2)件商品</p>
								<ol>
									<li>
										<div class="img-block">
											<img src="images/small_img.png" title="" alt="" />
										</div>
										<div class="detail-block">
											<h4>
												<a href="#" title="Htc Mobile 1120">Htc Mobile 1120</a>
											</h4>
											<p>
												<strong>1</strong> x $900.00
											</p>
											<a href="#" title="Details">Details</a>
										</div>
										<div class="edit-delete-block">
											<a href="#" title="编辑"><img src="images/edit_icon.png"
												alt="编辑" title="编辑" /></a> <a href="#" title="删除"><img
												src="images/delete_item_btn.png" alt="删除" title="删除" /></a>
										</div>
									</li>
									<li>
										<div class="img-block">
											<img src="images/small_img.png" title="" alt="" />
										</div>
										<div class="detail-block">
											<h4>
												<a href="#" title="Htc Mobile 1120">Htc Mobile 1120</a>
											</h4>
											<p>
												<strong>1</strong> x $900.00
											</p>
											<a href="#" title="Details">Details</a>
										</div>
										<div class="edit-delete-block">
											<a href="#" title="编辑"><img src="images/edit_icon.png"
												alt="编辑" title="编辑" /></a> <a href="#" title="删除"><img
												src="images/delete_item_btn.png" alt="删除" title="删除" /></a>
										</div>
									</li>
									<li>
										<div class="total-block">
											总计：<span>￥1,900.00</span>
										</div> <a href="cart.html" title="付款" class="orange-btn">付款</a>
										<div class="clear"></div>
									</li>
								</ol>
							</div>
						</div>
						<div class="search-block">
							<input type="text" placeholder="搜索商品" /> <input type="submit"
								value="搜索" title="搜索商品" />
						</div>
					</section>
				</div>
				<h1 class="logo">
					<a href="index.html" title="Logo"> <img title="Logo" alt="Logo"
						src="images/logo.jpg" />
					</a>
				</h1>
				<nav id="smoothmenu1" class="ddsmoothmenu mainMenu">
					<ul id="nav">
						<li class="active"><a href="index-2.html" title="Home">首页</a></li>
						<li class=""><a href="category.html" title="商品类别">商品类别</a>
							<ul>
								<li><a href="category.html">女装</a></li>
								<li><a href="category.html">男装</a></li>
								<li><a href="category.html">饰品</a></li>
								<li><a href="category.html">移动设备</a>
									<ul>
										<li><a href="category.html">二级类别</a></li>
										<li><a href="category.html">二级类别</a></li>
										<li><a href="category.html">二级类别</a></li>
										<li><a href="category.html">二级类别</a></li>
										<li><a href="category.html">二级类别</a></li>
										<li><a href="category.html">二级类别</a></li>
									</ul></li>
								<li><a href="category.html">鞋</a></li>
								<li><a href="category.html">其他</a></li>
							</ul></li>
						<li class=""><a href="blog.html" title="博客">博客</a></li>
						<li class=""><a href="faq.html" title="FAQ">FAQ</a></li>
						<li class=""><a href="about_us.html" title="关于我们">关于我们</a></li>
						<li class=""><a href="404_error.html" title="Pages">Pages</a></li>
						<li class=""><a href="contact_us.html" title="联系我们">联系我们</a></li>
					</ul>
				</nav>

				<div class="mobMenu">
					<h1>
						<span>菜单</span> <a class="menuBox highlight"
							href="javascript:void(0);">ccc</a> <span class="clearfix"></span>
					</h1>
					<div id="menuInnner" style="display: none;">
						<ul class="accordion">
							<li class="active"><a href="index.html" title="主页">主页</a></li>
							<li class="parent"><a href="category.html" title="类别">类别</a>
								<ul>
									<li><a href="category.html">女装</a></li>
									<li><a href="category.html">男装</a></li>
									<li><a href="category.html">饰品</a></li>
									<li><a href="category.html">移动设备</a>
										<ul>
											<li><a href="category.html">二级类别</a></li>
											<li><a href="category.html">二级类别</a></li>
											<li><a href="category.html">二级类别</a></li>
											<li><a href="category.html">二级类别</a></li>
											<li><a href="category.html">二级类别</a></li>
											<li><a href="category.html">二级类别</a></li>
										</ul></li>
									<li><a href="category.html">鞋</a></li>
									<li><a href="category.html">其他</a></li>
								</ul></li>
							<li class=""><a href="blog.html" title="博客">博客</a></li>
							<li class=""><a href="faq.html" title="Faq">Faq</a></li>
							<li class=""><a href="about_us.html" title="关于我们">关于我们</a></li>
							<li class=""><a href="404_error.html" title="Pages">Pages</a></li>
							<li class=""><a href="contact_us.html" title="联系我们">联系我们</a></li>
							<span class="clearfix"></span>
						</ul>

					</div>
				</div>

			</header>
		</div>
		<!--Banner Block-->
		<section class="banner-wrapper">
			<div class="banner-block container">
				<div class="flexslider">
					<ul class="slides">
						<li><img title="Banner" alt="Banner"
							src="images/iPhoneX_big.jpg" /></li>
						<li><img title="Banner" alt="Banner"
							src="images/iPhone4S.jpg" /></li>
						<li><img title="Banner" alt="Banner" src="images/banner3.jpg" /></li>
						<li><img title="Banner" alt="Banner" src="images/iPhone5.jpg" /></li>
					</ul>
				</div>
				<ul class="banner-add">
					<li class="add1"><a href="#" title=""><img title="add1"
							alt="add1" src="images/banner_add1.png" /></a></li>
					<li class="add2"><a href="#" title=""><img title="add2"
							alt="add2" src="images/banner_add2.png" /></a></li>
				</ul>
			</div>
		</section>
		<!--Content Block-->
		<section class="content-wrapper">
			<div class="content-container container">
				<div class="heading-block">
					<h1>推荐商品</h1>
					<ul class="pagination">
						<li class="grid"><a href="#" title="Grid">Grid</a></li>
					</ul>
				</div>
				<div class="feature-block">
					<ul id="mix" class="product-grid">
							
						
						
						
						
						<c:forEach var="pro" items="${lastProduct1 }">
						
						<li>
							<div class="pro-img">
								<img title="推荐商品" alt="推荐商品" src="images/iPhoneX.jpg" />
							</div>
							<div class="pro-hover-block">
								<h4 class="pro-name">${pro.name }</h4>
								<div class="link-block">
									<a href="#quick-view-container" class="quickllook inline"
										title="快速预览">快速预览</a> <a href="view.pro?id=${pro.id }" class="quickproLink"
										title="商品链接">商品链接</a>
								</div>
								<div class="pro-price">￥${pro.normalPrice }</div>
							</div>
						</li>
						</c:forEach>

					</ul>
				</div>
				<!-- 新增最火商品 -->
				<div class="heading-block">
					<h1>最火商品 </h1>
					<ul class="pagination">
						<li class="grid"><a href="#" title="Grid">Grid</a></li>
					</ul>
				</div>
				<div class="feature-block">
					<ul id="mix" class="product-grid" id="firepro">
						
					</ul>
				</div>
				
				
				<div class="heading-block">
					<h1>最新商品</h1>
				</div>
				<div class="new-product-block">
					<ul class="product-grid">
					
					<c:forEach var="pro" items="${lastProduct1 }">
						<li>
							<div class="pro-img">
								<img title="最新商品" alt="最新商品" src="images/zhaji.jpg" />
							</div>
							<div class="pro-content">
								<p>${pro.name }</p>
							</div>
							<div class="pro-price">￥${pro.normalPrice }</div>
							<div class="pro-btn-block">
								<a class="add-cart left" href="#" title="Add to Cart">添加购物车</a>
								<a class="add-cart right quickCart inline"
									href="#quick-view-container" title="快速查看">快速查看</a>
							</div>
							<div class="pro-link-block">
								<a class="add-wishlist left" href="#" title="Add to wishlist">收藏</a>
								<a class="add-compare right" href="#" title="同类比较">同类比较</a>
								<div class="clearfix"></div>
							</div>
							
							
						</li>
						
						</c:forEach>
					</ul>
					
					
					<ul class="product-grid">
					<c:forEach var="pro" items="${lastProduct2}">
						<li>
							<div class="pro-img">
								<img title="最新商品" alt="最新商品" src="images/zhaji.jpg" />
							</div>
							<div class="pro-content">
								<p>${pro.name }</p>
							</div>
							<div class="pro-price">￥${pro.normalPrice}</div>
							<div class="pro-btn-block">
								<a class="add-cart left" href="#" title="Add to Cart">添加购物车</a>
								<a class="add-cart right quickCart inline"
									href="#quick-view-container" title="快速查看">快速查看</a>
							</div>
							<div class="pro-link-block">
								<a class="add-wishlist left" href="#" title="Add to wishlist">收藏</a>
								<a class="add-compare right" href="#" title="同类比较">同类比较</a>
								<div class="clearfix"></div>
							</div>
						</li>
					</c:forEach>
					
					</ul>
				</div>
				<div class="news-letter-container">
					<div class="free-shipping-block">
						<h1>ENJOY FREE SHIPPING</h1>
						<p>on all orders as our holiday gift for you!</p>
					</div>
					<div class="news-letter-block">
						<h2>SIGN UP FOR OUR NEWSLETTER</h2>
						<input type="text" value="Enter email address" title="" /> <input
							type="submit" value="Submit" title="Submit" />
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<!-- 最火商品的javascript -->
	
	
	<!--Quick view Block-->
	<script type="text/javascript">
		jQuery(function() {
			var tabContainers = jQuery('div.tabs > div');
			tabContainers.hide().filter(':first').show();
			jQuery('div.tabs ul.tabNavigation a').click(function() {
				tabContainers.hide();
				tabContainers.filter(this.hash).show();
				jQuery('div.tabs ul.tabNavigation a').removeClass('selected');
				jQuery(this).addClass('selected');
				return false;
			}).filter(':first').click();
		});
	</script>
	<article style="display: none;">
		<section id="quick-view-container" class="quick-view-wrapper">
			<div class="quick-view-container">
				<div class="quick-view-left">
					<h2>炸鸡腿</h2>
					<div class="product-img-box">
						<p class="product-image">
							<img src="images/zhaji.jpg" title="炸鸡腿" alt="炸鸡腿"
								class="sale-img" /> <a href="view.html" title="Image"><img
								src="images/quick_view_img.png" title="Image" alt="Image" /></a>
						</p>
						<ul class="thum-img">
							<li><img src="images/quick_thum_img.png" title="" alt="" /></li>
							<li><img src="images/quick_thum_img.png" title="" alt="" /></li>
						</ul>
					</div>
				</div>
				<div class="quick-view-right tabs">
					<ul class="tab-block tabNavigation">
						<li><a class="selected" title="Overview" href="#tabDetail">商品概述</a></li>
						<li><a title="Description" href="#tabDes">商品描述</a></li>
					</ul>
					<div id="tabDetail" class="tabDetail">
						<div class="first-review">快速查看商品</div>
						<div class="price-box">
							<span class="price">￥13.99</span>
						</div>
						<div class="availability">In stock</div>
						<div class="color-size-block">
							<div class="label-row">
								<label><em>*</em> 颜色</label> <span class="required">* 必填项</span>
							</div>
							<div class="select-row">
								<select>
									<option>-- 请选择 --</option>
									<option>微辣</option>
									<option>普通</option>
									<option>特辣</option>
								</select>
							</div>
							<div class="label-row">
								<label><em>*</em> 大小</label>
							</div>
							<div class="select-row">
								<select>
									<option>-- 请选择 --</option>
									<option>-- 小只--</option>
									<option>-- 中只 --</option>
									<option>-- 大只 --</option>
								</select>
							</div>
						</div>
						<div class="add-to-cart-box">
							<span class="qty-box"> <label for="qty">数量：</label> <a
								class="prev" title="" href="#"><img alt="" title=""
									src="images/qty_prev.png"></a> <input type="text" name="qty"
								class="input-text qty" id="qty" maxlength="12" value="1">
								<a class="next" title="" href="#"><img alt="" title=""
									src="images/qty_next.png"></a>
							</span>
							<button title="添加购物车" class="form-button">
								<span>添加购物车</span>
							</button>
						</div>
					</div>
					<div id="tabDes" class="tabDes">
						<p>要不要吃炸鸡腿</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</section>
	</article>
	<!--Quick view Block-->
	<!--页脚开始-->
	<section class="footer-wrapper">
		<footer class="container">
			<div class="link-block">
				<ul>
					<li class="link-title"><a href="about_us.html" title="关于我们">关于我们</a></li>
					<li><a href="about_us.html" title="关于我们">关于我们</a></li>
					<li><a href="#" title="用户服务">用户服务</a></li>
					<li><a href="#" title="隐私策略">隐私策略</a></li>
				</ul>
				<ul>
					<li class="link-title"><a href="#" title="客户服务">客户服务</a></li>
					<li><a href="#" title="退货/换货">退货/换货</a></li>
					<li><a href="#" title="购物保障">购物保障</a></li>
					<li><a href="contact_us.html" title="联系我们">联系我们</a></li>
				</ul>
				<ul>
					<li class="link-title"><a href="#" title="条款和条件">条款和条件</a></li>
					<li><a href="#" title="驿站">驿站</a></li>
					<li><a href="#" title="帮助">帮助</a></li>
					<li><a href="#" title="Terms & Conditions">Terms &
							Conditions</a></li>
				</ul>
				<ul>
					<li class="link-title"><a href="#" title="关于我们">关于我们</a></li>
					<li class="aboutus-block">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Vivamus sit amet ligula lectus, a
						mollis diam. Nulla porttitor pulvinar elit... <a
						href="about_us.html" title="更多">更多</a>
					</li>
				</ul>
				<ul class="stay-connected-blcok">
					<li class="link-title"><a href="#" title="保持联系">保持联系</a></li>
					<li>
						<ul class="social-links">
							<li><a data-tooltip="Like us on facebook" href="#"><img
									alt="facebook" src="images/facebook.png"></a></li>
							<li><a data-tooltip="Subscribe to RSS feed" href="#"><img
									alt="RSS" src="images/rss.png"></a></li>
							<li><a data-tooltip="Follow us on twitter" href="#"><img
									alt="twitter" src="images/twitter.png"></a></li>
							<li><a data-tooltip="Follow us on Dribbble" href="#"><img
									alt="dribbble" src="images/dribbble.png"></a></li>
							<li><a data-tooltip="Follow us on Youtube" href="#"><img
									alt="youtube" src="images/youtube.png"></a></li>
							<li><a data-tooltip="Follow us on skype" href="#"><img
									alt="skype" src="images/skype.png"></a></li>
						</ul>
						<div class="payment-block">
							<img src="images/payment.png" alt="payment">
						</div>
					</li>
				</ul>
			</div>
			<div class="footer-bottom-block">
				<ul class="bottom-links">
					<li><a href="index-2.html" title="主页">主页</a></li>
					<li><a href="#" title="Pages">PAGES</a></li>
					<li><a href="about_us.html" title="关于">关于</a></li>
					<li><a href="contact_us.html" title="联系我们">联系我们</a></li>
				</ul>
				<p class="copyright-block">
					Copyright &copy; 2017.杨帆远航技术有限公司.<a target="_blank"
						href="http://www.yfyh.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
				</p>
			</div>
		</footer>
	</section>
	<!--页脚结束-->
</body>
</html>