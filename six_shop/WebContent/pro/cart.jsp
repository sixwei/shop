
<%@page contentType="text/html; charset=gbk" pageEncoding="gbk" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!doctype html>
<html>
<head>
<meta charset="gbk">
<title>����ƽ̨��ҳ</title>
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
	
	<%@include file="header.jsp" %>
		
		<!--Content Block-->
		<section class="content-wrapper">
			<div class="content-container container">
				<div class="col-1-layout">
					<c:forEach var="item" items="${cart.items }">
							<ul class="shopping-cart-table">
								<li>
									<div class="img-box">
										<img src="images/cart_img.png" title="" alt="" />
									</div> <a class="edit-btn" href="#" title="�༭">�༭</a>
								</li>
								<li>
									<div class="remove-item-btn">
										<a href="#" title="Remove"><img
											src="images/delete_item_btn.png" title="ɾ��" alt="ɾ��" /></a>
									</div>
									<div class="pro-name">${item.p.name }</div>
									<div class="pro-qty">
										<input type="text" value="${item.qty }" />
									</div>
									<div class="pro-price">��${item.p.normalPrice }</div>
									<div class="pro-price">С��:��${item.totals }</div>
								</li>
							</ul>
						</c:forEach>
					<div class="show-option-block">
						<a href="#" title="Show Options">��ʾѡ��</a>
					</div>
					<div class="update-shopping-cart">
						<button class="orange-btn">���¹��ﳵ</button>
					</div>
					<div class="shopping-cart-collaterals">
						<div class="cart-box">
							<div class="box-title">�ۿ�</div>
							<div class="box-content">
								<p>��������Ż�ȯ�������������Ż�ȯ����</p>
							</div>
							<button class="orange-btn" title="Apply Coupon">ʹ���Ż�ȯ</button>
						</div>
						<div class="cart-box">
							<div class="box-title">�˷Ѽ�˰����;</div>
							<div class="box-content">
								<p>Enter your destnation to get a shipping estimate</p>
								<ul>
									<li><label>����<em>*</em></label> <select><option>�й�</option></select>
									</li>
									<li><label>����</label> <select><option>��ѡ��������ݻ�ʡ</option></select>
									</li>
									<li><label>�ʱ�</label> <input type="text" /></li>
								</ul>
							</div>
							<button class="orange-btn" title="��ȡ����">��ȡ����</button>
						</div>
					</div>
					<div class="shopping-cart-totals">
						
						<div class="grand-row">
							<div class="left">�ܼ�</div>
							<div class="right">��${cart.totals }</div>
						</div>
						<ul class="checkout-types">
							<li><button class="orange-btn" title="����" onclick="location.href='order.pro'">����</button></li>
							<li><a href="#" title="�����ַ">�����ַ</a></li>
						</ul>
					</div>
					<div class="generic-product-list">
						<h4>����ϲ����</h4>
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
										<button class="orange-btn" title="���ӹ��ﳵ">���ӹ��ﳵ</button>
									</div>
									<a href="#" class="add-wishlist" title="�����ղ�">�����ղ�</a>
									<a href="#" class="add-compare" title="ͬ��Ƚ�">ͬ��Ƚ�</a>
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
										<button class="orange-btn" title="���ӹ��ﳵ">���ӹ��ﳵ</button>
									</div>
									<a href="#" class="add-wishlist" title="�����ղ�">�����ղ�</a>
									<a href="#" class="add-compare" title="ͬ��Ƚ�">ͬ��Ƚ�</a>
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
										<button class="orange-btn" title="���ӹ��ﳵ">���ӹ��ﳵ</button>
									</div>
									<a href="#" class="add-wishlist" title="�����ղ�">�����ղ�</a>
									<a href="#" class="add-compare" title="ͬ��Ƚ�">ͬ��Ƚ�</a>
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
										<button class="orange-btn" title="���ӹ��ﳵ">���ӹ��ﳵ</button>
									</div>
									<a href="#" class="add-wishlist" title="�����ղ�">�����ղ�</a>
									<a href="#" class="add-compare" title="ͬ��Ƚ�">ͬ��Ƚ�</a>
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
	<!--ҳ�ſ�ʼ-->
	<section class="footer-wrapper">
		<footer class="container">
			<div class="link-block">
				<ul>
					<li class="link-title"><a href="about_us.html" title="��������">��������</a></li>
					<li><a href="about_us.html" title="��������">��������</a></li>
					<li><a href="#" title="�û�����">�û�����</a></li>
					<li><a href="#" title="��˽����">��˽����</a></li>
				</ul>
				<ul>
					<li class="link-title"><a href="#" title="�ͻ�����">�ͻ�����</a></li>
					<li><a href="#" title="�˻�/����">�˻�/����</a></li>
					<li><a href="#" title="���ﱣ��">���ﱣ��</a></li>
					<li><a href="contact_us.html" title="��ϵ����">��ϵ����</a></li>
				</ul>
				<ul>
					<li class="link-title"><a href="#" title="���������">���������</a></li>
					<li><a href="#" title="��վ">��վ</a></li>
					<li><a href="#" title="����">����</a></li>
					<li><a href="#" title="Terms & Conditions">Terms &
							Conditions</a></li>
				</ul>
				<ul>
					<li class="link-title"><a href="#" title="��������">��������</a></li>
					<li class="aboutus-block">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Vivamus sit amet ligula lectus, a
						mollis diam. Nulla porttitor pulvinar elit... <a
						href="about_us.html" title="����">����</a>
					</li>
				</ul>
				<ul class="stay-connected-blcok">
					<li class="link-title"><a href="#" title="������ϵ">������ϵ</a></li>
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
					<li><a href="index-2.html" title="��ҳ">��ҳ</a></li>
					<li><a href="#" title="Pages">PAGES</a></li>
					<li><a href="about_us.html" title="����">����</a></li>
					<li><a href="contact_us.html" title="��ϵ����">��ϵ����</a></li>
				</ul>
				<p class="copyright-block">
					Copyright &copy; 2017.�Զ���������޹�˾.<a target="_blank"
						href="http://www.yfyh.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
				</p>
			</div>
		</footer>
	</section>
	<!--ҳ�Ž���-->
</body>
</html>