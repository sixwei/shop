<%@page contentType="text/html; charset=gbk" pageEncoding="gbk" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<div class="header-wrapper">
			<header class="container">
				<div class="head-right">
					<ul class="top-nav">
						<li class=""><a href="404_error.html" title="�ҵ��˻�">�ҵ��˻�</a></li>
						<li class="my-wishlist"><a href="404_error.html" title="�ҵ��ղ�">�ҵ��ղ�</a></li>
						<li class="contact-us"><a href="contact_us.html" title="��ϵ����">��ϵ����</a></li>
						<li class="checkout"><a href="404_error.html" title="����">����</a></li>
						<li class="log-in"><a href="login.html" title="��¼">��¼</a></li>
					</ul>
					<ul class="currencyBox">
						<li id="header_currancy" class="currency"><a
							class="mainCurrency" href="#">����: RMB</a>
							<div id="currancyBox" class="currency_detial">
								<a href="#">��</a> <a href="#"></a> <a href="#">$</a>
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
								<p class="empty">���ﳵ����(2)����Ʒ</p>
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
											<a href="#" title="�༭"><img src="images/edit_icon.png"
												alt="�༭" title="�༭" /></a> <a href="#" title="ɾ��"><img
												src="images/delete_item_btn.png" alt="ɾ��" title="ɾ��" /></a>
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
											<a href="#" title="�༭"><img src="images/edit_icon.png"
												alt="�༭" title="�༭" /></a> <a href="#" title="ɾ��"><img
												src="images/delete_item_btn.png" alt="ɾ��" title="ɾ��" /></a>
										</div>
									</li>
									<li>
										<div class="total-block">
											�ܼƣ�<span>��1,900.00</span>
										</div> <a href="cart.html" title="����" class="orange-btn">����</a>
										<div class="clear"></div>
									</li>
								</ol>
							</div>
						</div>
						<div class="search-block">
							<input type="text" placeholder="������Ʒ" /> <input type="submit"
								value="����" title="������Ʒ" />
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
						<li class="active"><a href="index-2.html" title="Home">��ҳ</a></li>
						<li class=""><a href="category.html" title="��Ʒ���">��Ʒ���</a>
							<ul>
								<li><a href="category.html">Ůװ</a></li>
								<li><a href="category.html">��װ</a></li>
								<li><a href="category.html">��Ʒ</a></li>
								<li><a href="category.html">�ƶ��豸</a>
									<ul>
										<li><a href="category.html">�������</a></li>
										<li><a href="category.html">�������</a></li>
										<li><a href="category.html">�������</a></li>
										<li><a href="category.html">�������</a></li>
										<li><a href="category.html">�������</a></li>
										<li><a href="category.html">�������</a></li>
									</ul></li>
								<li><a href="category.html">Ь</a></li>
								<li><a href="category.html">����</a></li>
							</ul></li>
						<li class=""><a href="blog.html" title="����">����</a></li>
						<li class=""><a href="faq.html" title="FAQ">FAQ</a></li>
						<li class=""><a href="about_us.html" title="��������">��������</a></li>
						<li class=""><a href="404_error.html" title="Pages">Pages</a></li>
						<li class=""><a href="contact_us.html" title="��ϵ����">��ϵ����</a></li>
					</ul>
				</nav>

				<div class="mobMenu">
					<h1>
						<span>�˵�</span> <a class="menuBox highlight"
							href="javascript:void(0);">ccc</a> <span class="clearfix"></span>
					</h1>
					<div id="menuInnner" style="display: none;">
						<ul class="accordion">
							<li class="active"><a href="index.html" title="��ҳ">��ҳ</a></li>
							<li class="parent"><a href="category.html" title="���">���</a>
								<ul>
									<li><a href="category.html">Ůװ</a></li>
									<li><a href="category.html">��װ</a></li>
									<li><a href="category.html">��Ʒ</a></li>
									<li><a href="category.html">�ƶ��豸</a>
										<ul>
											<li><a href="category.html">�������</a></li>
											<li><a href="category.html">�������</a></li>
											<li><a href="category.html">�������</a></li>
											<li><a href="category.html">�������</a></li>
											<li><a href="category.html">�������</a></li>
											<li><a href="category.html">�������</a></li>
										</ul></li>
									<li><a href="category.html">Ь</a></li>
									<li><a href="category.html">����</a></li>
								</ul></li>
							<li class=""><a href="blog.html" title="����">����</a></li>
							<li class=""><a href="faq.html" title="Faq">Faq</a></li>
							<li class=""><a href="about_us.html" title="��������">��������</a></li>
							<li class=""><a href="404_error.html" title="Pages">Pages</a></li>
							<li class=""><a href="contact_us.html" title="��ϵ����">��ϵ����</a></li>
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
					<h1>�Ƽ���Ʒ</h1>
					<ul class="pagination">
						<li class="grid"><a href="#" title="Grid">Grid</a></li>
					</ul>
				</div>
				<div class="feature-block">
					<ul id="mix" class="product-grid">
							
						
						
						
						
						<c:forEach var="pro" items="${lastProduct1 }">
						
						<li>
							<div class="pro-img">
								<img title="�Ƽ���Ʒ" alt="�Ƽ���Ʒ" src="images/iPhoneX.jpg" />
							</div>
							<div class="pro-hover-block">
								<h4 class="pro-name">${pro.name }</h4>
								<div class="link-block">
									<a href="#quick-view-container" class="quickllook inline"
										title="����Ԥ��">����Ԥ��</a> <a href="view.pro?id=${pro.id }" class="quickproLink"
										title="��Ʒ����">��Ʒ����</a>
								</div>
								<div class="pro-price">��${pro.normalPrice }</div>
							</div>
						</li>
						</c:forEach>

					</ul>
				</div>
				<!-- ���������Ʒ -->
				<div class="heading-block">
					<h1>�����Ʒ </h1>
					<ul class="pagination">
						<li class="grid"><a href="#" title="Grid">Grid</a></li>
					</ul>
				</div>
				<div class="feature-block">
					<ul id="mix" class="product-grid" id="firepro">
						
					</ul>
				</div>
				
				
				<div class="heading-block">
					<h1>������Ʒ</h1>
				</div>
				<div class="new-product-block">
					<ul class="product-grid">
					
					<c:forEach var="pro" items="${lastProduct1 }">
						<li>
							<div class="pro-img">
								<img title="������Ʒ" alt="������Ʒ" src="images/zhaji.jpg" />
							</div>
							<div class="pro-content">
								<p>${pro.name }</p>
							</div>
							<div class="pro-price">��${pro.normalPrice }</div>
							<div class="pro-btn-block">
								<a class="add-cart left" href="#" title="Add to Cart">���ӹ��ﳵ</a>
								<a class="add-cart right quickCart inline"
									href="#quick-view-container" title="���ٲ鿴">���ٲ鿴</a>
							</div>
							<div class="pro-link-block">
								<a class="add-wishlist left" href="#" title="Add to wishlist">�ղ�</a>
								<a class="add-compare right" href="#" title="ͬ��Ƚ�">ͬ��Ƚ�</a>
								<div class="clearfix"></div>
							</div>
							
							
						</li>
						
						</c:forEach>
					</ul>
					
					
					<ul class="product-grid">
					<c:forEach var="pro" items="${lastProduct2}">
						<li>
							<div class="pro-img">
								<img title="������Ʒ" alt="������Ʒ" src="images/zhaji.jpg" />
							</div>
							<div class="pro-content">
								<p>${pro.name }</p>
							</div>
							<div class="pro-price">��${pro.normalPrice}</div>
							<div class="pro-btn-block">
								<a class="add-cart left" href="#" title="Add to Cart">���ӹ��ﳵ</a>
								<a class="add-cart right quickCart inline"
									href="#quick-view-container" title="���ٲ鿴">���ٲ鿴</a>
							</div>
							<div class="pro-link-block">
								<a class="add-wishlist left" href="#" title="Add to wishlist">�ղ�</a>
								<a class="add-compare right" href="#" title="ͬ��Ƚ�">ͬ��Ƚ�</a>
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
	<!-- �����Ʒ��javascript -->
	
	<script type="text/javascript">
	
	      $(function(){
	    	  $("#firepro").append("
				<li>
				<div class="pro-img">
					<img title="�����Ʒ " alt="�����Ʒ " src="images/iPhoneX.jpg" />
				</div>
				<div class="pro-hover-block">
					<h4 class="pro-name">${pro.name }</h4>
					<div class="link-block">
						<a href="#quick-view-container" class="quickllook inline"
							title="����Ԥ��">����Ԥ��</a> <a href="view.pro?id=${pro.id }" class="quickproLink"
							title="��Ʒ����">��Ʒ����</a>
					</div>
					<div class="pro-price">��${pro.normalPrice }</div>
				</div>
			</li>")
	      });
	
	
	</script>
	
	
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
					<h2>ը����</h2>
					<div class="product-img-box">
						<p class="product-image">
							<img src="images/zhaji.jpg" title="ը����" alt="ը����"
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
						<li><a class="selected" title="Overview" href="#tabDetail">��Ʒ����</a></li>
						<li><a title="Description" href="#tabDes">��Ʒ����</a></li>
					</ul>
					<div id="tabDetail" class="tabDetail">
						<div class="first-review">���ٲ鿴��Ʒ</div>
						<div class="price-box">
							<span class="price">��13.99</span>
						</div>
						<div class="availability">In stock</div>
						<div class="color-size-block">
							<div class="label-row">
								<label><em>*</em> ��ɫ</label> <span class="required">* ������</span>
							</div>
							<div class="select-row">
								<select>
									<option>-- ��ѡ�� --</option>
									<option>΢��</option>
									<option>��ͨ</option>
									<option>����</option>
								</select>
							</div>
							<div class="label-row">
								<label><em>*</em> ��С</label>
							</div>
							<div class="select-row">
								<select>
									<option>-- ��ѡ�� --</option>
									<option>-- Сֻ--</option>
									<option>-- ��ֻ --</option>
									<option>-- ��ֻ --</option>
								</select>
							</div>
						</div>
						<div class="add-to-cart-box">
							<span class="qty-box"> <label for="qty">������</label> <a
								class="prev" title="" href="#"><img alt="" title=""
									src="images/qty_prev.png"></a> <input type="text" name="qty"
								class="input-text qty" id="qty" maxlength="12" value="1">
								<a class="next" title="" href="#"><img alt="" title=""
									src="images/qty_next.png"></a>
							</span>
							<button title="���ӹ��ﳵ" class="form-button">
								<span>���ӹ��ﳵ</span>
							</button>
						</div>
					</div>
					<div id="tabDes" class="tabDes">
						<p>Ҫ��Ҫ��ը����</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</section>
	</article>
	<!--Quick view Block-->
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