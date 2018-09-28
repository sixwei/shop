
<%@page contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<meta charset="gbk">
<title>电商平台首页</title>
<!--js-->
<script src="js/prototype.js"></script>
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

		<%@include file="header.jsp"%>

		<!--Content Block-->
		<section class="content-wrapper">
			<div class="content-container container">
				<div class="col-1-layout">
					<c:forEach var="item" items="${cart.items }">
						<ul class="shopping-cart-table">
							<li>
								<div class="img-box">
									<img src="images/cart_img.png" title="" alt="" />
								</div> <a class="edit-btn" href="#" title="编辑">编辑</a>
							</li>
							<li>
								<div class="remove-item-btn">
									<a href="#" title="Remove"><img
										src="images/delete_item_btn.png" title="删除" alt="删除" /></a>
								</div>
								<div class="pro-name">${item.p.name }</div>
								<div class="pro-qty">
									<input type="text" value="${item.qty }" />
								</div>
								<div class="pro-price">￥${item.p.normalPrice }</div>
								<div class="pro-price">小计:￥${item.totals }</div>
							</li>
						</ul>
					</c:forEach>
					<div class="show-option-block">
						<a href="#" title="Show Options">显示选项</a>
					</div>
					<div class="update-shopping-cart">
						<button class="orange-btn">更新购物车</button>
					</div>
					<div class="shopping-cart-collaterals">
						<div class="cart-box">
							<div class="box-title">折扣</div>
							<div class="box-content">
								<p>如果您有优惠券，请输入您的优惠券代码</p>
							</div>
							<button class="orange-btn" title="Apply Coupon">使用优惠券</button>
						</div>
						<div class="cart-box">

							<form action="addAddre.pro" method="post">
								<div class="box-title">请选择地址</div>
								<div class="box-content">
									<p>Enter your destnation to get a shipping estimate</p>
									<ul>
										<li><label>国家<em>*</em></label> <select id="province">
												<option value="-1">---请选择省份---</option>
										</select></li>
										<li><label>地区</label> <select id="city">
												<option value="-1">---请选择城市---</option>

										</select></li>
										<li><label>邮编</label> <select id="area">
												<option value="-1">---请选择区---</option>

										</select></li>
									</ul>
								</div>
								<input type="submit" class="orange-btn" value="添加地址"></input>
							</form>
						</div>
					</div>
					<div class="shopping-cart-totals">

						<div class="grand-row">
							<div class="left">总计</div>
							<div class="right">￥${cart.totals }</div>
						</div>
						<ul class="checkout-types">
							<li><button class="orange-btn" title="付款"
									onclick="location.href='order.pro'">付款</button></li>
							<li><a href="#" title="更多地址">更多地址</a></li>
						</ul>
					</div>
					<div class="generic-product-list">
						<h4>猜你喜欢：</h4>
						<ul>
							<li>
								<div class="left-img">
									<img src="images/tshir_img.png" title="" alt="" />
								</div>
								<div class="right-content">
									<div class="pro-name">
										White Round Neck <br>T-Shirt
									</div>
									<div class="pro-price">$600.00</div>
									<div class="add-cart-row">
										<button class="orange-btn" title="添加购物车">添加购物车</button>
									</div>
									<a href="#" class="add-wishlist" title="添加收藏">添加收藏</a> <a
										href="#" class="add-compare" title="同类比较">同类比较</a>
								</div>
							</li>
							<li>
								<div class="left-img">
									<img src="images/tshir_img.png" title="" alt="" />
								</div>
								<div class="right-content">
									<div class="pro-name">
										White Round Neck <br>T-Shirt
									</div>
									<div class="pro-price">$600.00</div>
									<div class="add-cart-row">
										<button class="orange-btn" title="添加购物车">添加购物车</button>
									</div>
									<a href="#" class="add-wishlist" title="添加收藏">添加收藏</a> <a
										href="#" class="add-compare" title="同类比较">同类比较</a>
								</div>
							</li>
							<li>
								<div class="left-img">
									<img src="images/tshir_img.png" title="" alt="" />
								</div>
								<div class="right-content">
									<div class="pro-name">
										White Round Neck <br>T-Shirt
									</div>
									<div class="pro-price">$600.00</div>
									<div class="add-cart-row">
										<button class="orange-btn" title="添加购物车">添加购物车</button>
									</div>
									<a href="#" class="add-wishlist" title="添加收藏">添加收藏</a> <a
										href="#" class="add-compare" title="同类比较">同类比较</a>
								</div>
							</li>
							<li>
								<div class="left-img">
									<img src="images/tshir_img.png" title="" alt="" />
								</div>
								<div class="right-content">
									<div class="pro-name">
										White Round Neck <br>T-Shirt
									</div>
									<div class="pro-price">$600.00</div>
									<div class="add-cart-row">
										<button class="orange-btn" title="添加购物车">添加购物车</button>
									</div>
									<a href="#" class="add-wishlist" title="添加收藏">添加收藏</a> <a
										href="#" class="add-compare" title="同类比较">同类比较</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="news-letter-container">
					<div class="free-shipping-block">
						<h1>ENJOY FREE SHIPPING</h1>
						<p>on all orders as our holiday gift for you!</p>
					</div>
					<div class="news-letter-block">
						<h2>SIGN UP FOR OUR NEWSLETTER</h2>
						<input type="text" value="Enter email address" title="" /> <input
							class="submit-btn" type="submit" value="Submit" title="Submit" />
					</div>
				</div>
			</div>
		</section>
	</div>
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

<script type="text/javascript">
	$(function() {
		$.ajax({
			type : "get",
			url : "province.menu",
			async : true,
			success : function(provinces) {
				var ps = provinces.evalJSON();
				for (i = 0; i < ps.length; ++i) {
					$("#province").append(
							"<option value='"+ps[i].provinceid+"'>"
									+ ps[i].province + "</option>")
				}
			}
		});

		$("#province").change(
				function() {
					$("#city").html("");
					$.ajax({
						type : "get",
						url : "city.menu?provinceid=" + $("#province").val(),
						async : true,
						success : function(cities) {
							var cs = cities.evalJSON();
							for (i = 0; i < cs.length; i++) {
								$("#city").append(
										"<option value='"+cs[i].cityID+"'>"
												+ cs[i].city + "</option>")
							}
						}
					});
				});

		$("#city").change(
				function() {
					$("#area").html("");
					$.ajax({
						type : "get",
						url : "area.menu?cityid=" + $("#city").val(),
						async : true,
						success : function(areas) {
							var as = areas.evalJSON();
							for (i = 0; i < as.length; i++) {
								$("#area").append(
										"<option value='"+as[i].areaID+"'>"
												+ as[i].area + "</option>")
							}
						}
					});
				});
	});
</script>