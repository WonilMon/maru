<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="ja-JP">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="글 목록, 공지사항 보기, 공지 알림, 안내 사항, 공지사항 게시판 구성, 공지사항 목록 표시, FAQ, ​We provide value of our clients, 글 목록, 효율적인 공지사항 관리, 공지사항 보기">
<meta name="description" content="">
<title>Shop</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/Shop.css" media="screen">
<script class="u-script" type="text/javascript" src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="${root }js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 6.14.4, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:100,200,300,400,500,600,700,800,900">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Noto+Sans+JP:100,200,300,400,500,600,700,800,900">





<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"logo": "${root}images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name",
				"https://instagram.com/name"
		]
}</script>
<meta name="theme-color" content="#eeb18b">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Shop">
<meta name="twitter:description" content="Site1">
<meta property="og:title" content="Shop">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="ja">

	<!-- 상단 -->
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section class="u-align-center u-clearfix u-section-1"
		id="carousel_502b">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h3 class="u-text u-text-1">Shop</h3>
			<h1 class="u-custom-font u-font-playfair-display u-text u-text-2">Icon</h1>
			<span class="u-file-icon u-icon u-icon-1"><img
				src="${root }images/3004151.png" alt=""></span>
			<h5 class="u-text u-text-default u-text-3">&nbsp; &nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h5>
			<!--products-->
			<!--products_options_json-->
			<!--{"type":"Recent","source":"","tags":"","count":""}-->
			<!--/products_options_json-->
			<div class="u-products u-products-1" data-site-sorting-prop="created"
				data-site-sorting-order="desc" data-items-per-page="8"
				data-products-datasource="site" data-products-id="1">
				<div class="u-list-control"></div>
				<div class="u-repeater u-repeater-1">
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center-md u-container-align-center-sm u-container-align-center-xs u-container-style u-products-item u-repeater-item"
						data-product-id="5">
						<div
							class="u-container-layout u-similar-container u-container-layout-1">
							<!--product_image-->
							<a class="u-product-title-link" href="/products/flip-flops.html"><img
								src="${root }images/6f461f60.svg" alt=""
								class="u-image u-image-contain u-image-default u-product-control u-image-1"
								data-image-width="1066" data-image-height="1085"></a>
							<!--/product_image-->
							<!--product_content-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-desc u-text u-text-grey-40 u-text-4">Sample
								text. Lorem ipsum dolor sit amet, consectetur adipiscing elit
								nullam nunc justo sagittis suscipit ultrices.</div>
							<!--/product_content-->
							<!--product_price-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-price u-product-price-1"
								data-add-zero-cents="true">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-hide-price u-old-price"
										style="text-decoration: line-through !important;">$10.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price"
										style="font-size: 1.25rem; font-weight: 700;">$7.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<a href="#sec-a706"
								class="u-btn u-button-style u-dialog-link u-payment-button u-btn-1"
								data-product-id="">Buy </a>
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center-md u-container-align-center-sm u-container-align-center-xs u-container-style u-products-item u-repeater-item"
						data-product-id="6">
						<div
							class="u-container-layout u-similar-container u-container-layout-2">
							<!--product_image-->
							<a class="u-product-title-link" href="/products/girl-skirt.html"><img
								src="${root }images/caac4e54.svg" alt=""
								class="u-image u-image-contain u-image-default u-product-control u-image-2"
								data-image-width="1133" data-image-height="1184"></a>
							<!--/product_image-->
							<!--product_content-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-desc u-text u-text-grey-40 u-text-5">Sample
								text. Lorem ipsum dolor sit amet, consectetur adipiscing elit
								nullam nunc justo sagittis suscipit ultrices.</div>
							<!--/product_content-->
							<!--product_price-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-price u-product-price-2"
								data-add-zero-cents="true">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-hide-price u-old-price"
										style="text-decoration: line-through !important;">$175.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price"
										style="font-size: 1.25rem; font-weight: 700;">$150.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<a href="#sec-a706"
								class="u-btn u-button-style u-dialog-link u-payment-button u-btn-2"
								data-product-id="">Buy </a>
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center-md u-container-align-center-sm u-container-align-center-xs u-container-style u-products-item u-repeater-item"
						data-product-id="4">
						<div
							class="u-container-layout u-similar-container u-container-layout-3">
							<!--product_image-->
							<a class="u-product-title-link"
								href="/products/leather-gloves.html"><img
								src="${root }images/776587db.svg" alt=""
								class="u-image u-image-contain u-image-default u-product-control u-image-3"
								data-image-width="1066" data-image-height="1127"></a>
							<!--/product_image-->
							<!--product_content-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-desc u-text u-text-grey-40 u-text-6">Sample
								text. Lorem ipsum dolor sit amet, consectetur adipiscing elit
								nullam nunc justo sagittis suscipit ultrices.</div>
							<!--/product_content-->
							<!--product_price-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-price u-product-price-3"
								data-add-zero-cents="true">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-hide-price u-old-price"
										style="text-decoration: line-through !important;">$25.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price"
										style="font-size: 1.25rem; font-weight: 700;">$20.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<a href="#sec-a706"
								class="u-btn u-button-style u-dialog-link u-payment-button u-btn-3"
								data-product-id=""> Buy</a>
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center-md u-container-align-center-sm u-container-align-center-xs u-container-style u-products-item u-repeater-item"
						data-product-id="2">
						<div
							class="u-container-layout u-similar-container u-container-layout-4">
							<!--product_image-->
							<a class="u-product-title-link"
								href="/products/men-s-t-shirt.html"><img
								src="${root }images/53c4c417.svg" alt=""
								class="u-image u-image-contain u-image-default u-product-control u-image-4"
								data-image-width="1133" data-image-height="1204"></a>
							<!--/product_image-->
							<!--product_content-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-desc u-text u-text-grey-40 u-text-7">Sample
								text. Lorem ipsum dolor sit amet, consectetur adipiscing elit
								nullam nunc justo sagittis suscipit ultrices.</div>
							<!--/product_content-->
							<!--product_price-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-price u-product-price-4"
								data-add-zero-cents="true">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-hide-price u-old-price"
										style="text-decoration: line-through !important;">$300.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price"
										style="font-size: 1.25rem; font-weight: 700;">$245.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<a href="#sec-a706"
								class="u-btn u-button-style u-dialog-link u-payment-button u-btn-4"
								data-product-id=""> Buy</a>
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center-md u-container-align-center-sm u-container-align-center-xs u-container-style u-products-item u-repeater-item"
						data-product-id="3">
						<div
							class="u-container-layout u-similar-container u-container-layout-5">
							<!--product_image-->
							<a class="u-product-title-link" href="/products/summer-hat.html"><img
								src="${root }images/6537f30a.svg" alt=""
								class="u-image u-image-contain u-image-default u-product-control u-image-5"
								data-image-width="1133" data-image-height="1191"></a>
							<!--/product_image-->
							<!--product_content-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-desc u-text u-text-grey-40 u-text-8">Sample
								text. Lorem ipsum dolor sit amet, consectetur adipiscing elit
								nullam nunc justo sagittis suscipit ultrices.</div>
							<!--/product_content-->
							<!--product_price-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-price u-product-price-5"
								data-add-zero-cents="true">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-hide-price u-old-price"
										style="text-decoration: line-through !important;">$25.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price"
										style="font-size: 1.25rem; font-weight: 700;">$19.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<a href="#sec-a706"
								class="u-btn u-button-style u-dialog-link u-payment-button u-btn-5"
								data-product-id=""> Buy</a>
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center-md u-container-align-center-sm u-container-align-center-xs u-container-style u-products-item u-repeater-item"
						data-product-id="1">
						<div
							class="u-container-layout u-similar-container u-container-layout-6">
							<!--product_image-->
							<a class="u-product-title-link"
								href="/products/women-s-shoes.html"><img
								src="${root }images/d754debf.svg" alt=""
								class="u-image u-image-contain u-image-default u-product-control u-image-6"
								data-image-width="1133" data-image-height="1149"></a><img
								src="${root }images/414330ad.svg" class="u-product-second-image">
							<!--/product_image-->
							<!--product_content-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-desc u-text u-text-grey-40 u-text-9">Sample
								text. Lorem ipsum dolor sit amet, consectetur adipiscing elit
								nullam nunc justo sagittis suscipit ultrices.</div>
							<!--/product_content-->
							<!--product_price-->
							<div
								class="u-align-center-md u-align-center-sm u-align-center-xs u-product-control u-product-price u-product-price-6"
								data-add-zero-cents="true">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-hide-price u-old-price"
										style="text-decoration: line-through !important;">$20.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price"
										style="font-size: 1.25rem; font-weight: 700;">$17.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<a href="#sec-a706"
								class="u-btn u-button-style u-dialog-link u-payment-button u-btn-6"
								data-product-id=""> Buy</a>
						</div>
					</div>
					<!--/product_item-->





				</div>
				<div class="u-list-control"></div>
			</div>
			<!--/products-->
		</div>
	</section>
	
	<!-- 하단 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

	<section
		class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-payment-dialog u-valign-middle u-dialog-section-4"
		id="sec-a706">
		<div
			class="u-align-center u-container-style u-dialog u-radius-25 u-shape-round u-white u-dialog-1">
			<div class="u-container-layout u-valign-top u-container-layout-1">
				<h5 class="u-align-left u-text u-text-1" data-lang-ko="Buy Now"
					data-lang-ja="Buy Now">Buy Now</h5>
				<div class="u-expanded-width u-products u-products-1"
					data-site-sorting-prop="created" data-site-sorting-order="desc"
					data-items-per-page="1">
					<div class="u-list-control"></div>
					<div class="u-repeater u-repeater-1">
						<!--product_item-->
						<div class="u-container-style u-products-item u-repeater-item">
							<div
								class="u-container-layout u-similar-container u-container-layout-2">
								<h5 class="u-align-left u-product-control u-text u-text-2"
									data-lang-ko="
                <a class=&quot;u-product-title-link&quot; href=&quot;#&quot;>Product 1 Title</a>
              "
									data-lang-ja="
                <a class=&quot;u-product-title-link&quot; href=&quot;#&quot;>Product 1 Title</a>
              ">
									<a class="u-product-title-link" href="#">Product 1 Title</a>
								</h5>
								<div
									class="u-align-left u-product-control u-product-desc u-text u-text-3"
									data-lang-ko="
                <p>Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices.</p>
              "
									data-lang-ja="
                <p>Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices.</p>
              ">
									<p>Sample text. Lorem ipsum dolor sit amet, consectetur
										adipiscing elit nullam nunc justo sagittis suscipit ultrices.</p>
								</div>
								<div
									class="u-align-left u-product-control u-product-quantity u-product-quantity-1">
									<div class="u-hidden u-quantity-label">Quantity</div>
									<div
										class="u-border-1 u-border-grey-30 u-quantity-input u-radius-50">
										<a
											class="disabled minus u-button-style u-quantity-button u-text-body-color"
											data-lang-ko="
                    <svg xmlns=&quot;http://www.w3.org/2000/svg&quot; viewBox=&quot;0 016 16&quot;><path
												d=&quot;m 4 8 h 8&quot; fill=&quot;none&quot;
												stroke=&quot;currentColor&quot; stroke-width=&quot;1&quot;
												fill-rule=&quot;evenodd&quot;></path>
											</svg> " data-lang-ja=" <svg
												xmlns=&quot;http://www.w3.org/2000/svg&quot; viewBox=&quot;00 16 16&quot;><path d=&quot;m 4 8 h 8&quot; fill=&quot;none&quot; stroke=&quot;currentColor&quot; stroke-width=&quot;1&quot; fill-rule=&quot;evenodd&quot;></path></svg>
											"> <svg xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 16 16">
												<path d="m 4 8 h 8" fill="none" stroke="currentColor"
													stroke-width="1" fill-rule="evenodd"></path></svg> </a> <input
											class="u-input" type="text" value="1" data-lang-ko=""
											data-lang-ja=""> <a
											class="plus u-button-style u-quantity-button u-text-body-color"
											data-lang-ko="
                    <svg xmlns=&quot;http://www.w3.org/2000/svg&quot; viewBox=&quot;0 016 16&quot;><path
												d=&quot;m 4 8 h 8 M 8 4 v 8&quot; fill=&quot;none&quot;
												stroke=&quot;currentColor&quot; stroke-width=&quot;1&quot;
												fill-rule=&quot;evenodd&quot;></path>
											</svg> " data-lang-ja=" <svg
												xmlns=&quot;http://www.w3.org/2000/svg&quot; viewBox=&quot;00 16 16&quot;><path d=&quot;m 4 8 h 8 M 8 4 v 8&quot; fill=&quot;none&quot; stroke=&quot;currentColor&quot; stroke-width=&quot;1&quot; fill-rule=&quot;evenodd&quot;></path></svg>
											"> <svg xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 16 16">
												<path d="m 4 8 h 8 M 8 4 v 8" fill="none"
													stroke="currentColor" stroke-width="1" fill-rule="evenodd"></path></svg>
										</a>
									</div>
								</div>
								<div data-add-zero-cents="true"
									class="u-align-left u-product-control u-product-price u-product-price-1">
									<div class="u-price-wrapper u-spacing-10">
										<div class="u-old-price"
											style="text-decoration: line-through !important;"
											data-lang-ko="$20.00" data-lang-ja="$20.00">$20.00</div>
										<div class="u-price"
											style="font-size: 1.25rem; font-weight: 700;"
											data-lang-ko="$17.00" data-lang-ja="$17.00">$17.00</div>
									</div>
								</div>
							</div>
						</div>
						<!--/product_item-->
					</div>
					<div class="u-list-control"></div>
				</div>
				<div
					class="u-expanded-width u-payment-services u-tab-links-align-justify u-tab-payment u-tab-vertical u-tabs u-payment-services-1"
					data-payment-order-approved-message="Your order has been approved. Thank you!"
					data-payment-order-cancelled-message="Unable to process your order. Please try again later."
					data-lang-ko="{&quot;loading-message&quot;:&quot;Loading...&quot;,&quot;payment-order-approved-message&quot;:&quot;Your order has been approved. Thank you!&quot;,&quot;payment-order-cancelled-message&quot;:&quot;Unable to process your order. Please try again later.&quot;}"
					data-lang-ja="{&quot;loading-message&quot;:&quot;Loading...&quot;,&quot;payment-order-approved-message&quot;:&quot;Your order has been approved. Thank you!&quot;,&quot;payment-order-cancelled-message&quot;:&quot;Unable to process your order. Please try again later.&quot;}">
					<ul class="u-tab-list u-unstyled" role="tablist">
						<li class="u-tab-item" role="presentation"><a
							class="active u-active-grey-10 u-button-style u-payment-paypal u-tab-link u-text-body-color"
							id="link-tab-9cb3" href="#tab-9cb3" role="tab"
							data-lang-ko="<input type=&quot;radio&quot; class=&quot;u-field-input u-grey-15 u-radius-15&
							quot; name=&quot;payment-group&quot; checked=&quot;checked&quot;><span>Paypal</span>
							<svg class=&quot;u-svg-content&quot;
									xmlns=&quot;http://www.w3.org/2000/svg&quot; x=&quot;0px&quot;
									y=&quot;0px&quot;>
									<path fill=&quot;#009EE3&quot;
										d=&quot;M11,5.9H18c3.8,0,5.2,1.9,4.9,4.7c-0.3,4.7-3.2,7.2-6.9,7.2h-1.9c-0.5,0-0.8,0.3-0.9,1.3l-0.8,4.3c-0.1,0.3-0.2,0.5-0.5,0.6H7.6c-0.4,0-0.5-0.3-0.4-1l2.6-16C9.9,6.3,10.2,5.9,11,5.9z&quot;></path>
									<path fill=&quot;#113984&quot;
										d=&quot;M6.7,0h7.1c2,0,4.3,0.1,5.9,1.5c1.1,0.9,1.6,2.4,1.5,4c-0.4,5.4-3.7,8.5-8,8.5H9.6c-0.6,0-0.9,0.4-1.2,1.5l-0.9,5.1C7.4,21,7.3,21.3,7,21.3H2.6C2,21.3,1.9,21,2,20.1L5.2,1.3C5.3,0.4,5.7,0,6.7,0z&quot;></path>
									<path fill=&quot;#172C70&quot;
										d=&quot;M8.6,14.8l1.3-7.9c0.1-0.7,0.5-1,1.3-1h7.1c1.2,0,2.1,0.2,2.8,0.5c-0.7,4.8-3.8,7.5-7.9,7.5H9.6C9.1,13.9,8.8,14.1,8.6,14.8z&quot;></path></svg>
								" data-lang-ja="<input type=&quot;radio&quot;
								class=&quot;u-field-input u-grey-15
								u-radius-15&quot; name=&quot;payment-group&quot;
								checked=&quot;checked&quot;><span>Paypal</span>
							<svg class=&quot;u-svg-content&quot;
									xmlns=&quot;http://www.w3.org/2000/svg&quot; x=&quot;0px&quot;
									y=&quot;0px&quot;>
									<path fill=&quot;#009EE3&quot;
										d=&quot;M11,5.9H18c3.8,0,5.2,1.9,4.9,4.7c-0.3,4.7-3.2,7.2-6.9,7.2h-1.9c-0.5,0-0.8,0.3-0.9,1.3l-0.8,4.3c-0.1,0.3-0.2,0.5-0.5,0.6H7.6c-0.4,0-0.5-0.3-0.4-1l2.6-16C9.9,6.3,10.2,5.9,11,5.9z&quot;></path>
									<path fill=&quot;#113984&quot;
										d=&quot;M6.7,0h7.1c2,0,4.3,0.1,5.9,1.5c1.1,0.9,1.6,2.4,1.5,4c-0.4,5.4-3.7,8.5-8,8.5H9.6c-0.6,0-0.9,0.4-1.2,1.5l-0.9,5.1C7.4,21,7.3,21.3,7,21.3H2.6C2,21.3,1.9,21,2,20.1L5.2,1.3C5.3,0.4,5.7,0,6.7,0z&quot;></path>
									<path fill=&quot;#172C70&quot;
										d=&quot;M8.6,14.8l1.3-7.9c0.1-0.7,0.5-1,1.3-1h7.1c1.2,0,2.1,0.2,2.8,0.5c-0.7,4.8-3.8,7.5-7.9,7.5H9.6C9.1,13.9,8.8,14.1,8.6,14.8z&quot;></path></svg>
								"><input type="radio"
								class="u-field-input u-grey-15 u-radius-15" name="payment-group"
								checked="checked" data-lang-ko="" data-lang-ja=""><span>Paypal</span>
							<svg class="u-svg-content" xmlns="http://www.w3.org/2000/svg"
									x="0px" y="0px">
									<path fill="#009EE3"
										d="M11,5.9H18c3.8,0,5.2,1.9,4.9,4.7c-0.3,4.7-3.2,7.2-6.9,7.2h-1.9c-0.5,0-0.8,0.3-0.9,1.3l-0.8,4.3
  c-0.1,0.3-0.2,0.5-0.5,0.6H7.6c-0.4,0-0.5-0.3-0.4-1l2.6-16C9.9,6.3,10.2,5.9,11,5.9z"></path>
									<path fill="#113984"
										d="M6.7,0h7.1c2,0,4.3,0.1,5.9,1.5c1.1,0.9,1.6,2.4,1.5,4c-0.4,5.4-3.7,8.5-8,8.5H9.6c-0.6,0-0.9,0.4-1.2,1.5
  l-0.9,5.1C7.4,21,7.3,21.3,7,21.3H2.6C2,21.3,1.9,21,2,20.1L5.2,1.3C5.3,0.4,5.7,0,6.7,0z"></path>
									<path fill="#172C70"
										d="M8.6,14.8l1.3-7.9c0.1-0.7,0.5-1,1.3-1h7.1c1.2,0,2.1,0.2,2.8,0.5c-0.7,4.8-3.8,7.5-7.9,7.5H9.6
  C9.1,13.9,8.8,14.1,8.6,14.8z"></path></svg>
						</a></li>
						<li class="u-tab-item" role="presentation"><a
							class="u-active-grey-10 u-button-style u-payment-stripe u-tab-link u-text-body-color"
							id="link-tab-ab80" href="#tab-ab80" role="tab"
							data-lang-ko="<input type=&quot;radio&quot; class=&quot;u-field-input u-grey-15 u-radius-15&
							quot; name=&quot;payment-group&quot;><span>Stripe</span>
							<svg class=&quot;u-svg-content&quot;
									xmlns=&quot;http://www.w3.org/2000/svg&quot; x=&quot;0px&quot;
									y=&quot;0px&quot; viewBox=&quot;00 24 24&quot;><path fill=&quot;#635BFF&quot; d=&quot;M14,9.2c-2.3-0.8-3.4-1.5-3.4-2.4c0-0.8,0.8-1.3,2-1.3c2.3,0,4.7,0.8,6.4,1.6l0.9-5.5
  c-1.3-0.5-4-1.6-7.7-1.6C9.6,0,7.5,0.7,5.8,1.9C4.1,3.2,3.4,4.9,3.4,7.2c0,4,2.6,5.7,6.8,7.2c2.7,0.9,3.6,1.6,3.6,2.5
  c0,0.9-0.9,1.6-2.4,1.6c-1.9,0-5.2-0.9-7.3-2.1L3,22c1.8,0.9,5.1,2,8.7,2c2.8,0,5.1-0.7,6.6-1.9c1.8-1.3,2.7-3.2,2.7-5.7
  C20.9,12.3,18.2,10.7,14,9.2L14,9.2z&quot;></path></svg> "
								data-lang-ja="<input type=&quot;radio&quot;
								class=&quot;u-field-input u-grey-15
								u-radius-15&quot; name=&quot;payment-group&quot;><span>Stripe</span>
							<svg class=&quot;u-svg-content&quot;
									xmlns=&quot;http://www.w3.org/2000/svg&quot; x=&quot;0px&quot;
									y=&quot;0px&quot; viewBox=&quot;00 24 24&quot;><path fill=&quot;#635BFF&quot; d=&quot;M14,9.2c-2.3-0.8-3.4-1.5-3.4-2.4c0-0.8,0.8-1.3,2-1.3c2.3,0,4.7,0.8,6.4,1.6l0.9-5.5
  c-1.3-0.5-4-1.6-7.7-1.6C9.6,0,7.5,0.7,5.8,1.9C4.1,3.2,3.4,4.9,3.4,7.2c0,4,2.6,5.7,6.8,7.2c2.7,0.9,3.6,1.6,3.6,2.5
  c0,0.9-0.9,1.6-2.4,1.6c-1.9,0-5.2-0.9-7.3-2.1L3,22c1.8,0.9,5.1,2,8.7,2c2.8,0,5.1-0.7,6.6-1.9c1.8-1.3,2.7-3.2,2.7-5.7
  C20.9,12.3,18.2,10.7,14,9.2L14,9.2z&quot;></path></svg> "><input
								type="radio" class="u-field-input u-grey-15 u-radius-15"
								name="payment-group" data-lang-ko="" data-lang-ja=""><span>Stripe</span>
							<svg class="u-svg-content" xmlns="http://www.w3.org/2000/svg"
									x="0px" y="0px" viewBox="0 0 24 24">
									<path fill="#635BFF"
										d="M14,9.2c-2.3-0.8-3.4-1.5-3.4-2.4c0-0.8,0.8-1.3,2-1.3c2.3,0,4.7,0.8,6.4,1.6l0.9-5.5
  c-1.3-0.5-4-1.6-7.7-1.6C9.6,0,7.5,0.7,5.8,1.9C4.1,3.2,3.4,4.9,3.4,7.2c0,4,2.6,5.7,6.8,7.2c2.7,0.9,3.6,1.6,3.6,2.5
  c0,0.9-0.9,1.6-2.4,1.6c-1.9,0-5.2-0.9-7.3-2.1L3,22c1.8,0.9,5.1,2,8.7,2c2.8,0,5.1-0.7,6.6-1.9c1.8-1.3,2.7-3.2,2.7-5.7
  C20.9,12.3,18.2,10.7,14,9.2L14,9.2z"></path></svg>
						</a></li>
					</ul>
					<div class="u-tab-content">
						<div
							class="u-container-style u-payment-paypal u-tab-active u-tab-pane"
							id="tab-9cb3" role="tabpanel" aria-labelledby="link-tab-9cb3">
							<div
								class="u-container-layout u-payment-services-inner u-container-layout-3">Loading...</div>
						</div>
						<div class="u-container-style u-payment-stripe u-tab-pane"
							id="tab-ab80" role="tabpanel" aria-labelledby="link-tab-ab80">
							<div class="u-container-layout u-container-layout-4">
								<a href="#" class="u-btn u-button-style u-stripe-button u-btn-1"
									data-lang-ko="{&quot;content&quot;:&quot;Pay with Stripe&quot;,&quot;href&quot;:&quot;#&quot;}"
									data-lang-ja="{&quot;content&quot;:&quot;Pay with Stripe&quot;,&quot;href&quot;:&quot;#&quot;}">Pay
									with Stripe</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button class="u-dialog-close-button u-icon u-text-grey-40 u-icon-1">
				<svg class="u-svg-link" preserveAspectRatio="xMidYMin slice"
					viewBox="0 0 16 16" style="">
					<use xmlns:xlink="http://www.w3.org/1999/xlink"
						xlink:href="#svg-efe9"></use></svg>
				<svg xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
					xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16"
					x="0px" y="0px" id="svg-efe9">
					<rect x="7" y="0"
						transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)"
						width="2" height="16"></rect>
					<rect x="0" y="7"
						transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)"
						width="16" height="2"></rect></svg>
			</button>
		</div>
	</section>
	<style>
.u-dialog-section-4 .u-dialog-1 {
	width: 570px;
	min-height: 578px;
	height: auto;
	box-shadow: 0px 0px 8px 0px rgba(0, 0, 0, 0.2);
	margin: 60px auto;
}

.u-dialog-section-4 .u-container-layout-1 {
	padding: 34px 35px;
}

.u-dialog-section-4 .u-text-1 {
	font-weight: 700;
	margin: 0 165px 0 0;
}

.u-dialog-section-4 .u-products-1 {
	margin-top: 30px;
	margin-bottom: 0;
}

.u-dialog-section-4 .u-repeater-1 {
	grid-template-columns: 100%;
	min-height: 206px;
	grid-gap: 10px;
}

.u-dialog-section-4 .u-container-layout-2 {
	padding: 0 0 30px;
}

.u-dialog-section-4 .u-text-2 {
	background-image: none;
	margin: 0;
}

.u-dialog-section-4 .u-text-3 {
	font-size: 0.875rem;
	margin: 20px 0 0;
}

.u-dialog-section-4 .u-product-quantity-1 {
	width: 125px;
	margin: 30px auto 0 0;
}

.u-dialog-section-4 .u-product-price-1 {
	margin: -34px 0 0 auto;
}

.u-dialog-section-4 .u-payment-services-1 {
	min-height: 250px;
	min-width: 50px;
	margin: 0;
}

.u-dialog-section-4 .u-container-layout-3 {
	padding: 20px 0 0;
}

.u-dialog-section-4 .u-container-layout-4 {
	padding: 20px 0 0;
}

.u-dialog-section-4 .u-btn-1 {
	width: 100%;
	margin: 0 auto;
}

.u-dialog-section-4 .u-icon-1 {
	width: 20px;
	height: 20px;
	left: auto;
	top: 36px;
	position: absolute;
	right: 35px;
	padding: 0;
}

@media ( max-width : 1199px) {
	.u-dialog-section-4 .u-text-1 {
		margin-right: 165px;
	}
	.u-dialog-section-4 .u-payment-services-1 {
		margin-right: initial;
		margin-left: initial;
	}
}

@media ( max-width : 991px) {
	.u-dialog-section-4 .u-container-layout-1 {
		padding: 30px;
	}
	.u-dialog-section-4 .u-container-layout-3 {
		padding-bottom: 0;
		padding-left: 0;
		padding-right: 0;
	}
	.u-dialog-section-4 .u-container-layout-4 {
		padding-bottom: 0;
		padding-left: 0;
		padding-right: 0;
	}
	.u-dialog-section-4 .u-icon-1 {
		top: 32px;
		right: 30px;
	}
}

@media ( max-width : 767px) {
	.u-dialog-section-4 .u-dialog-1 {
		width: 540px;
	}
}

@media ( max-width : 575px) {
	.u-dialog-section-4 .u-dialog-1 {
		width: 340px;
	}
	.u-dialog-section-4 .u-container-layout-1 {
		padding-left: 20px;
		padding-right: 20px;
	}
	.u-dialog-section-4 .u-text-1 {
		margin-right: 5px;
	}
	.u-dialog-section-4 .u-icon-1 {
		right: 20px;
	}
}
</style>
</body>
</html>
