<%@page contentType="text/html; charset=gbk" pageEncoding="gbk" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!doctype html>
<html>
<head>
<meta charset="gbk">
<title>����ƽ̨��Ʒ����</title>

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
<!-- Header Block -->
<%@include file="header.jsp" %>

   <!-- Content Block -->
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
								
								
								<c:forEach var="item" items="cart.items">
										<li>
											<div class="img-block">
												<img src="images/small_img.png" title="" alt="" />
											</div>
											<div class="detail-block">
												<h4>
													<a href="#" title="Htc Mobile 1120">
													
													</a>
												</h4>
												<p>
													<strong>1</strong> ��
												</p>
												<a href="#" title="����">����</a>
											</div>
											<div class="edit-delete-block">
												<a href="#" title="�༭"><img src="images/edit_icon.png"
													alt="�༭" title="�༭" /></a> <a href="#" title="ɾ��"><img
													src="images/delete_item_btn.png" alt="ɾ��" title="ɾ��" /></a>
											</div>
										</li>
									</c:forEach>
									<li>
										<div class="total-block">
											�ܼƣ�<span>��${cart.totals }</span>
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
		
		<!-- Content Block -->>
	
		<section class="content-wrapper">
			<div class="content-container container">
				<div class="breadcrum-container">
					<ul>
						<li><a href="index.html" title="Home">��ҳ</a></li>
						<li>${product.name }</li>
					</ul>
				</div>
				<div class="main">

					<div class="product-info-box">
						<div class="product-essential">
							<div class="product-img-box">
								<p class="product-image-zoom">
									<img src="images/zhaji.jpg" alt="Image" title="Image" />
								</p>
								<p>����鿴��ͼ</p>
								<div class="img-slider">
									<a href="#" title="Prev" class="prev slider-btn"><img
										src="images/prev_img_btn.png" title="Prev" alt="Prev" /></a> <a
										href="#" title="Next" class="next slider-btn"><img
										src="images/next_img_btn.png" title="Next" alt="Next" /></a>
									<ul id="moreView">
										<li><a class="ajax" href="images/view_img.png"><img
												src="images/small_img.png" alt="" title="" /></a></li>
										<li><a class="ajax" href="images/view_img.png"><img
												src="images/small_img.png" alt="" title="" /></a></li>
										<li><a class="ajax" href="images/view_img.png"><img
												src="images/small_img.png" alt="" title="" /></a></li>
										<li><a class="ajax" href="images/view_img.png"><img
												src="images/small_img.png" alt="" title="" /></a></li>
										<li><a class="ajax" href="images/view_img.png"><img
												src="images/small_img.png" alt="" title="" /></a></li>
										<li><a class="ajax" href="images/view_img.png"><img
												src="images/small_img.png" alt="" title="" /></a></li>
									</ul>
								</div>
							</div>
							<form action="toCart.pro" method="post">
							<div class="product-shop">
							
							
								<h3 class="product-name">${product.name }</h3>
								<div class="price-box">
									<span class="price">��${product.normalPrice }</span> <span class="availability">�л�</span>
								</div>
								<div class="model-block">
									<p>
										<span>��棺 </span>20
									</p>
									<p>
										<span>���</span>${product.category1.name }
									</p>
								</div>
								<div class="first-review">Be the first to review this
									product</div>
								<div class="color-size-block">
									<div class="label-row">
										<label><em>*</em> ��ɫ</label> <span class="required">*
											������</span>
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
								<input type="hidden" name="id" value="${product.id }">
									<span class="qty-box"> <label for="qty">����������</label> <a
										href="javascript:void(0)" title="" class="prev jian"><img
											src="images/qty_prev.png" title="" alt="add" /></a> 
											<input	type="text" value="1" maxlength="12" id="qty"	class="input-text qty" name="qty">
											 <a	href="javascript:void(0)" title="" class="next dec add">
											 <img src="images/qty_next.png" title="" alt="" /></a>
									</span>
									<script type="text/javascript">
										jQuery(document).ready(function() {
											jQuery(".ajax").colorbox();
										});
										jQuery(function() {
											jQuery(".add")
													.click(
															function() {
																var jQueryadd = jQuery(this);
																var oldValue = jQueryadd
																		.parent()
																		.find(
																				"input")
																		.val();
																var newVal = 0;

																if (jQueryadd
																		.text() == "") {
																	newVal = parseFloat(oldValue) + 1;
																}
																jQueryadd
																		.parent()
																		.find(
																				"input")
																		.val(
																				newVal);
															});

											jQuery(".jian")
													.click(
															function() {
																var jQueryadd = jQuery(this);
																var oldValue = jQueryadd
																		.parent()
																		.find(
																				"input")
																		.val();
																var newVal = 0;

																if (jQueryadd
																		.text() == "") {
																	newVal = parseFloat(oldValue) - 1;
																}
																if (newVal <= 0) {
																	newVal = 1;
																}
																jQueryadd
																		.parent()
																		.find(
																				"input")
																		.val(
																				newVal);
															});

										});
									</script>
									<button type="submit" class="form-button" title="���ӹ��ﳵ" >
										<span>���ӹ��ﳵ</span>
									</button>
									<ul class="add-to-box">
										<li><a href="#" title="Add to Wishlist"
											class="add-wishlist">�����ղ�</a></li>
										<li><a href="#" title="Add to Compare"
											class="add-compare">ͬ��Ƚ�</a></li>
										<li><a href="#" title="Email to a Friend"
											class="email-friend">Email to a Friend</a></li>
										<li class="last"><a href="images/size_chart.gif"
											title="Size Guide" class="size-guide ajax">Size Guide</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					</form>
					<aside class="right">
						<ol class="pro-slider-btn">
							<li><a href="#" title="Prev"><img
									src="images/pro_prev_btn.png" title="Prev" alt="Prev" /></a></li>
							<li><a href="#" title="Next"><img
									src="images/pro_next_btn.png" title="Next" alt="Next" /></a></li>
						</ol>
						<ul class="right-img">
							<li><a href="#" title="Image"><img
									src="images/view_right_img01.png" title="Image" alt="Image" /></a></li>
							<li><a href="#" title="Image"><img
									src="images/view_right_img02.png" title="Image" alt="Image" /></a></li>
							<li><a href="#" title="Image"><img
									src="images/view_right_img03.png" title="Image" alt="Image" /></a></li>
						</ul>
					</aside>
					<section class="product-collateral">
						<script type="text/javascript">
							$(function() {
								var tabContainers = $('section.product-collateral > div.commonContent');
								tabContainers.hide().filter(':first').show();
								$('section.product-collateral ul.tab-block a')
										.click(
												function() {
													tabContainers.hide();
													tabContainers.filter(
															this.hash).show();
													$(
															'section.product-collateral ul.tab-block a')
															.removeClass(
																	'active');
													$(this).addClass('active');
													return false;
												}).filter(':first').click();
							});
						</script>
						<ul class="tab-block">
							<li><a href="#pro-detail" title="Description" class="active">Description</a></li>
							<li><a href="#pro-review" title="Reviews">Reviews</a></li>
							<li><a href="#pro-tags" title="Product Tags">Product
									Tags</a></li>
							<li class="video-box"><a href="#pro-video" title="Video Box">Video
									Box</a></li>
						</ul>
						<div id="pro-detail" class="pro-detail commonContent">
							<ol>
								<li>Praesent interdum gravida turpis, eu aliquet</li>
								<li>Praesent interdum gravida turpis, eu aliquet</li>
								<li>Praesent interdum gravida turpis, eu aliquet</li>
								<li>Praesent interdum gravida turpis, eu aliquet</li>
								<li>Praesent interdum gravida turpis, eu aliquet</li>
							</ol>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum. to make a type specimen book.
								It has survived not only five centuries, but also the leap into
								electronic typesetting, remaining essentially unchanged. It was
								popularised in the 1960s with the release of Letraset</p>
						</div>

						<div id="pro-review" class="pro-detail commonContent">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum. to make a type specimen book.
								It has survived not only five centuries, but also the leap into
								electronic typesetting, remaining essentially unchanged. It was
								popularised in the 1960s with the release of Letraset Lorem
								Ipsum is simply dummy text of the printing and typesetting
								industry. Lorem Ipsum has been the industry's standard dummy
								text ever since the 1500s, when an unknown printer took a galley
								of type and scrambled it to make a type specimen book. It has
								survived not only five centuries, but also the leap into
								electronic typesetting, remaining essentially unchanged. It was
								popularised in the 1960s with the release of Letraset sheets
								containing Lorem Ipsum passages, and more recently with desktop
								publishing software like Aldus PageMaker including versions of
								Lorem Ipsum. to make a type specimen book. It has survived not
								only five centuries, but also the leap into electronic
								typesetting, remaining essentially unchanged. It was popularised
								in the 1960s with the release of Letraset</p>
						</div>

						<div id="pro-tags" class="pro-detail commonContent">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset</p>
						</div>
						<div id="pro-video" class="pro-detail commonContent">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum. to make a type specimen book.
								It has survived not only five centuries, but also the leap into
								electronic typesetting, remaining essentially unchanged. It was
								popularised in the 1960s with the release of Letraset</p>
						</div>




					</section>
					<div class="like-pro-block">
						<div class="title-block">
							<h2>����ϲ��</h2>
						</div>
						<div class="like-pro">
							<ul id="like-pro" class="product-grid">
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="related-pro-block">
						<div class="title-block">
							<h2>������Ʒ</h2>
						</div>
						<div class="related-pro">
							<ul id="related-pro" class="product-grid">
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
								<li>
									<div class="pro-img">
										<img title="Freature Product" alt="Freature Product"
											src="images/default_img.png" />
									</div>
									<div class="pro-detail-block">
										<h4 class="pro-name">Sunglass RB3186</h4>
										<div class="pro-price">$600.00</div>
									</div>
								</li>
							</ul>
						</div>
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
							type="submit" value="Submit" title="Submit" />
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