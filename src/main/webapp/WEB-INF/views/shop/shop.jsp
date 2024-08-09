<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="Shop​">
<meta name="description" content="">
<title>shop</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/shop.css" media="screen">
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">




<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "${root }images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name"
		]
}</script>
<meta name="theme-color" content="#fda270">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="shop">
<meta name="twitter:description" content="">
<meta property="og:title" content="shop">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">


	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section
		class="skrollable u-align-center u-clearfix u-container-align-center u-image u-parallax u-shading u-section-1"
		id="sec-de03" data-image-width="425" data-image-height="425">
		<div class="u-clearfix u-sheet u-sheet-1"></div>
	</section>
	<section class="u-align-center u-clearfix u-section-2" id="sec-e42d">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-subtitle u-text u-text-default u-text-1">Shop</h2>
			<span class="u-file-icon u-icon u-icon-1"><img
				src="${root }images/82815.png" alt=""></span>
			<p class="u-align-center u-text u-text-default u-text-2">money</p>
			<!--products-->
			<!--products_options_json-->
			<!--{"type":"Recent","source":"","tags":"","count":""}-->
			<!--/products_options_json-->
			<div class="u-expanded-width u-products u-products-1"
				data-site-sorting-prop="created" data-site-sorting-order="desc"
				data-products-datasource="site" data-items-per-page="8"
				data-products-id="1">
				<div class="u-list-control"></div>
				<div class="u-repeater u-repeater-1">
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center u-container-style u-products-item u-repeater-item"
						data-product-id="2">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
							<!--product_image-->
							<a class="u-product-title-link"
								href="/products/men-s-t-shirt.html"><img alt=""
								class="u-expanded-width u-image u-image-contain u-image-default u-product-control u-image-1"
								src="${root }images/53c4c417.svg"></a>
							<!--/product_image-->
							<!--product_title-->
							<h4
								class="u-align-center u-product-control u-text u-text-default u-text-3">
								<a class="u-product-title-link"
									href="/products/men-s-t-shirt.html">Men's T-Shirt</a>
							</h4>
							<!--/product_title-->
							<!--product_price-->
							<div data-add-zero-cents="true"
								class="u-align-center u-product-control u-product-price u-product-price-1">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-old-price"
										style="text-decoration: line-through !important;">$300.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price u-text-palette-2-base"
										style="font-size: 1.25rem; font-weight: 700;">$245.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<!--product_button-->
							<!--options_json-->
							<!--{"clickType":"buy-now","content":""}-->
							<!--/options_json-->
							<a href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-1 u-dialog-link u-payment-button"
								data-product-button-click-type="buy-now" data-product-id="2"
								data-product="{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;men-s-t-shirt&quot;,&quot;title&quot;:&quot;Men's T-Shirt&quot;,&quot;description&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit.&quot;,&quot;fullDescription&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&quot;,&quot;price&quot;:&quot;245&quot;,&quot;oldPrice&quot;:&quot;300&quot;,&quot;quantity&quot;:1,&quot;currency&quot;:&quot;USD&quot;,&quot;sku&quot;:&quot;&quot;,&quot;outOfStock&quot;:false,&quot;isFeatured&quot;:false,&quot;categories&quot;:[&quot;1&quot;],&quot;images&quot;:[{&quot;url&quot;:&quot;/images/53c4c417.svg&quot;}],&quot;created&quot;:1723079443425,&quot;updated&quot;:1723079443425,&quot;isDefault&quot;:true,&quot;categoriesData&quot;:[{&quot;link&quot;:&quot;./products/products.html#/1///1&quot;,&quot;title&quot;:&quot;Clothes&quot;}]}">
								<!--product_button_content-->Add to Cart<!--/product_button_content-->
							</a>
							<!--/product_button-->
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center u-container-style u-products-item u-repeater-item"
						data-product-id="3">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
							<!--product_image-->
							<a class="u-product-title-link" href="/products/summer-hat.html"><img
								alt=""
								class="u-expanded-width u-image u-image-contain u-image-default u-product-control u-image-2"
								src="${root }images/6537f30a.svg"></a>
							<!--/product_image-->
							<!--product_title-->
							<h4
								class="u-align-center u-product-control u-text u-text-default u-text-4">
								<a class="u-product-title-link" href="/products/summer-hat.html">Summer
									Hat</a>
							</h4>
							<!--/product_title-->
							<!--product_price-->
							<div data-add-zero-cents="true"
								class="u-align-center u-product-control u-product-price u-product-price-2">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-old-price"
										style="text-decoration: line-through !important;">$25.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price u-text-palette-2-base"
										style="font-size: 1.25rem; font-weight: 700;">$19.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<!--product_button-->
							<!--options_json-->
							<!--{"clickType":"buy-now","content":""}-->
							<!--/options_json-->
							<a href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-2 u-dialog-link u-payment-button"
								data-product-button-click-type="buy-now" data-product-id="3"
								data-product="{&quot;id&quot;:&quot;3&quot;,&quot;name&quot;:&quot;summer-hat&quot;,&quot;title&quot;:&quot;Summer Hat&quot;,&quot;description&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit.&quot;,&quot;fullDescription&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&quot;,&quot;price&quot;:&quot;19&quot;,&quot;oldPrice&quot;:&quot;25&quot;,&quot;quantity&quot;:1,&quot;currency&quot;:&quot;USD&quot;,&quot;sku&quot;:&quot;&quot;,&quot;outOfStock&quot;:false,&quot;isFeatured&quot;:false,&quot;categories&quot;:[&quot;3&quot;],&quot;images&quot;:[{&quot;url&quot;:&quot;/images/6537f30a.svg&quot;}],&quot;created&quot;:1723079443425,&quot;updated&quot;:1723079443425,&quot;isDefault&quot;:true,&quot;categoriesData&quot;:[{&quot;link&quot;:&quot;./products/products.html#/1///3&quot;,&quot;title&quot;:&quot;Accessories&quot;}]}">
								<!--product_button_content-->Add to Cart<!--/product_button_content-->
							</a>
							<!--/product_button-->
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center u-container-style u-products-item u-repeater-item"
						data-product-id="4">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
							<!--product_image-->
							<a class="u-product-title-link"
								href="/products/leather-gloves.html"><img alt=""
								class="u-expanded-width u-image u-image-contain u-image-default u-product-control u-image-3"
								src="${root }images/776587db.svg"></a>
							<!--/product_image-->
							<!--product_title-->
							<h4
								class="u-align-center u-product-control u-text u-text-default u-text-5">
								<a class="u-product-title-link"
									href="/products/leather-gloves.html">Leather Gloves</a>
							</h4>
							<!--/product_title-->
							<!--product_price-->
							<div data-add-zero-cents="true"
								class="u-align-center u-product-control u-product-price u-product-price-3">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-old-price"
										style="text-decoration: line-through !important;">$25.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price u-text-palette-2-base"
										style="font-size: 1.25rem; font-weight: 700;">$20.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<!--product_button-->
							<!--options_json-->
							<!--{"clickType":"buy-now","content":""}-->
							<!--/options_json-->
							<a href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-3 u-dialog-link u-payment-button"
								data-product-button-click-type="buy-now" data-product-id="4"
								data-product="{&quot;id&quot;:&quot;4&quot;,&quot;name&quot;:&quot;leather-gloves&quot;,&quot;title&quot;:&quot;Leather Gloves&quot;,&quot;description&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit.&quot;,&quot;fullDescription&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&quot;,&quot;price&quot;:&quot;20&quot;,&quot;oldPrice&quot;:&quot;25&quot;,&quot;quantity&quot;:1,&quot;currency&quot;:&quot;USD&quot;,&quot;sku&quot;:&quot;&quot;,&quot;outOfStock&quot;:false,&quot;isFeatured&quot;:false,&quot;categories&quot;:[&quot;3&quot;],&quot;images&quot;:[{&quot;url&quot;:&quot;/images/776587db.svg&quot;}],&quot;created&quot;:1723079443425,&quot;updated&quot;:1723079443425,&quot;isDefault&quot;:true,&quot;categoriesData&quot;:[{&quot;link&quot;:&quot;./products/products.html#/1///3&quot;,&quot;title&quot;:&quot;Accessories&quot;}]}">
								<!--product_button_content-->Add to Cart<!--/product_button_content-->
							</a>
							<!--/product_button-->
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center u-container-style u-products-item u-repeater-item"
						data-product-id="5">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
							<!--product_image-->
							<a class="u-product-title-link" href="/products/flip-flops.html"><img
								alt=""
								class="u-expanded-width u-image u-image-contain u-image-default u-product-control u-image-4"
								src="${root }images/6f461f60.svg"></a>
							<!--/product_image-->
							<!--product_title-->
							<h4
								class="u-align-center u-product-control u-text u-text-default u-text-6">
								<a class="u-product-title-link" href="/products/flip-flops.html">Flip
									Flops</a>
							</h4>
							<!--/product_title-->
							<!--product_price-->
							<div data-add-zero-cents="true"
								class="u-align-center u-product-control u-product-price u-product-price-4">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-old-price"
										style="text-decoration: line-through !important;">$10.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price u-text-palette-2-base"
										style="font-size: 1.25rem; font-weight: 700;">$7.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<!--product_button-->
							<!--options_json-->
							<!--{"clickType":"buy-now","content":""}-->
							<!--/options_json-->
							<a href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-4 u-dialog-link u-payment-button"
								data-product-button-click-type="buy-now" data-product-id="5"
								data-product="{&quot;id&quot;:&quot;5&quot;,&quot;name&quot;:&quot;flip-flops&quot;,&quot;title&quot;:&quot;Flip Flops&quot;,&quot;description&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit.&quot;,&quot;fullDescription&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&quot;,&quot;price&quot;:&quot;7&quot;,&quot;oldPrice&quot;:&quot;10&quot;,&quot;quantity&quot;:1,&quot;currency&quot;:&quot;USD&quot;,&quot;sku&quot;:&quot;&quot;,&quot;outOfStock&quot;:false,&quot;isFeatured&quot;:false,&quot;categories&quot;:[&quot;2&quot;],&quot;images&quot;:[{&quot;url&quot;:&quot;/images/6f461f60.svg&quot;}],&quot;created&quot;:1723079443425,&quot;updated&quot;:1723079443425,&quot;isDefault&quot;:true,&quot;categoriesData&quot;:[{&quot;link&quot;:&quot;./products/products.html#/1///2&quot;,&quot;title&quot;:&quot;Shoes&quot;}]}">
								<!--product_button_content-->Add to Cart<!--/product_button_content-->
							</a>
							<!--/product_button-->
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center u-container-style u-products-item u-repeater-item"
						data-product-id="6">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-5">
							<!--product_image-->
							<a class="u-product-title-link" href="/products/girl-skirt.html"><img
								alt=""
								class="u-expanded-width u-image u-image-contain u-image-default u-product-control u-image-5"
								src="${root }images/caac4e54.svg"></a>
							<!--/product_image-->
							<!--product_title-->
							<h4
								class="u-align-center u-product-control u-text u-text-default u-text-7">
								<a class="u-product-title-link" href="/products/girl-skirt.html">Girl
									Skirt</a>
							</h4>
							<!--/product_title-->
							<!--product_price-->
							<div data-add-zero-cents="true"
								class="u-align-center u-product-control u-product-price u-product-price-5">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-old-price"
										style="text-decoration: line-through !important;">$175.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price u-text-palette-2-base"
										style="font-size: 1.25rem; font-weight: 700;">$150.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<!--product_button-->
							<!--options_json-->
							<!--{"clickType":"buy-now","content":""}-->
							<!--/options_json-->
							<a href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-5 u-dialog-link u-payment-button"
								data-product-button-click-type="buy-now" data-product-id="6"
								data-product="{&quot;id&quot;:&quot;6&quot;,&quot;name&quot;:&quot;girl-skirt&quot;,&quot;title&quot;:&quot;Girl Skirt&quot;,&quot;description&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit.&quot;,&quot;fullDescription&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&quot;,&quot;price&quot;:&quot;150&quot;,&quot;oldPrice&quot;:&quot;175&quot;,&quot;quantity&quot;:1,&quot;currency&quot;:&quot;USD&quot;,&quot;sku&quot;:&quot;&quot;,&quot;outOfStock&quot;:false,&quot;isFeatured&quot;:false,&quot;categories&quot;:[&quot;1&quot;],&quot;images&quot;:[{&quot;url&quot;:&quot;/images/caac4e54.svg&quot;}],&quot;created&quot;:1723079443425,&quot;updated&quot;:1723079443425,&quot;isDefault&quot;:true,&quot;categoriesData&quot;:[{&quot;link&quot;:&quot;./products/products.html#/1///1&quot;,&quot;title&quot;:&quot;Clothes&quot;}]}">
								<!--product_button_content-->Add to Cart<!--/product_button_content-->
							</a>
							<!--/product_button-->
						</div>
					</div>
					<!--/product_item-->
					<!--product_item-->
					<div
						class="u-align-center u-container-align-center u-container-style u-products-item u-repeater-item"
						data-product-id="1">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-6">
							<!--product_image-->
							<a class="u-product-title-link"
								href="/products/women-s-shoes.html"><img alt=""
								class="u-expanded-width u-image u-image-contain u-image-default u-product-control u-image-6"
								src="${root }images/d754debf.svg"></a><img
								src="${root }images/414330ad.svg" class="u-product-second-image">
							<!--/product_image-->
							<!--product_title-->
							<h4
								class="u-align-center u-product-control u-text u-text-default u-text-8">
								<a class="u-product-title-link"
									href="/products/women-s-shoes.html">Women's Shoes</a>
							</h4>
							<!--/product_title-->
							<!--product_price-->
							<div data-add-zero-cents="true"
								class="u-align-center u-product-control u-product-price u-product-price-6">
								<div class="u-price-wrapper u-spacing-10">
									<!--product_old_price-->
									<div class="u-old-price"
										style="text-decoration: line-through !important;">$20.00</div>
									<!--/product_old_price-->
									<!--product_regular_price-->
									<div class="u-price u-text-palette-2-base"
										style="font-size: 1.25rem; font-weight: 700;">$17.00</div>
									<!--/product_regular_price-->
								</div>
							</div>
							<!--/product_price-->
							<!--product_button-->
							<!--options_json-->
							<!--{"clickType":"buy-now","content":""}-->
							<!--/options_json-->
							<a href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-6 u-dialog-link u-payment-button"
								data-product-button-click-type="buy-now" data-product-id="1"
								data-product="{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;women-s-shoes&quot;,&quot;title&quot;:&quot;Women's Shoes&quot;,&quot;description&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit.&quot;,&quot;fullDescription&quot;:&quot;Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&quot;,&quot;price&quot;:&quot;17&quot;,&quot;oldPrice&quot;:&quot;20&quot;,&quot;quantity&quot;:1,&quot;currency&quot;:&quot;USD&quot;,&quot;sku&quot;:&quot;&quot;,&quot;outOfStock&quot;:false,&quot;isFeatured&quot;:false,&quot;categories&quot;:[&quot;2&quot;],&quot;images&quot;:[{&quot;url&quot;:&quot;/images/d754debf.svg&quot;},{&quot;url&quot;:&quot;/images/414330ad.svg&quot;}],&quot;created&quot;:1723079443424,&quot;updated&quot;:1723079443424,&quot;isDefault&quot;:true,&quot;categoriesData&quot;:[{&quot;link&quot;:&quot;./products/products.html#/1///2&quot;,&quot;title&quot;:&quot;Shoes&quot;}]}">
								<!--product_button_content-->Add to Cart<!--/product_button_content-->
							</a>
							<!--/product_button-->
						</div>
					</div>
					<!--/product_item-->





				</div>
				<div class="u-list-control"></div>
			</div>
			<!--/products-->
			<a href="#"
				class="u-align-center u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-7"><span
				class="u-file-icon u-icon u-text-white"><img
					src="${root }images/120826-a013365f.png" alt=""></span>&nbsp;Next </a> <a
				href="#"
				class="u-align-center u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-8">Next&nbsp;<span
				class="u-icon u-text-white"><svg class="u-svg-content"
						viewBox="0 0 512 512" x="0px" y="0px"
						style="width: 1em; height: 1em;">
						<path
							d="M506.134,241.843c-0.006-0.006-0.011-0.013-0.018-0.019l-104.504-104c-7.829-7.791-20.492-7.762-28.285,0.068 c-7.792,7.829-7.762,20.492,0.067,28.284L443.558,236H20c-11.046,0-20,8.954-20,20c0,11.046,8.954,20,20,20h423.557 l-70.162,69.824c-7.829,7.792-7.859,20.455-0.067,28.284c7.793,7.831,20.457,7.858,28.285,0.068l104.504-104 c0.006-.006,0.011-.013,0.018-.019C513.968,262.339,513.943,249.635,506.134,241.843z"></path></svg></span>
			</a>
			<p class="u-align-center u-text u-text-default u-text-9">목록번호 들어갈
				곳</p>
		</div>
	</section>



	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
	
</body>
</html>