<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Demo.Customer.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="app-content">

        <!--====== Anti Flash White Background ======-->
        <div class="bg-anti-flash-white">

            <!--====== White Container ======-->
            <div class="white-container">
                <div class="container">

                    <!--====== Primary Slider ======-->
                    <div class="s-skeleton s-skeleton--h-600 s-skeleton--bg-black">
                        <div class="owl-carousel primary-style-2" id="hero-slider">
                            <!-- Slider Top -->
                            <div class="hero-slide hero-slide--1">
                                <div class="primary-style-2-container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="slider-content slider-content--animation">

                                                <span class="content-span-1 u-c-white">Find Top Brands</span>

                                                <span class="content-span-2 u-c-white">10% Off On Intimates</span>

                                                <span class="content-span-3 u-c-white">Find Intimates on best prices</span>

                                                <span class="content-span-4 u-c-white">Starting At

                                                    <span class="u-c-brand">$100.00</span></span>

                                                <a class="shop-now-link btn--e-brand" href="shop-side-version-2.html">SHOP NOW</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="hero-slide hero-slide--2">
                                <div class="primary-style-2-container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="slider-content slider-content--animation">

                                                <span class="content-span-1 u-c-white">Find Top Brands</span>

                                                <span class="content-span-2 u-c-white">10% Off On Electronics</span>

                                                <span class="content-span-3 u-c-white">Find electronics on best prices</span>

                                                <span class="content-span-4 u-c-white">Starting At

                                                    <span class="u-c-brand">$1000.00</span></span>

                                                <a class="shop-now-link btn--e-brand" href="shop-side-version-2.html">SHOP NOW</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="hero-slide hero-slide--3">
                                <div class="primary-style-2-container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="slider-content slider-content--animation">

                                                <span class="content-span-1 u-c-white">Find Top Brands</span>

                                                <span class="content-span-2 u-c-white">10% Off On Outwear</span>

                                                <span class="content-span-3 u-c-white">Find outwear on best prices</span>

                                                <span class="content-span-4 u-c-white">Starting At

                                                    <span class="u-c-brand">$100.00</span></span>

                                                <a class="shop-now-link btn--e-brand" href="shop-side-version-2.html">SHOP NOW</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--====== End - Primary Slider ======-->
                </div>

                <!--====== Section 1 ======-->


                <!--====== Electronic Category ======-->
                <div class="u-s-p-y-60" id="electronic-01">

                    <!--====== Section Intro ======-->
                    <div class="section__intro u-s-m-b-46">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="block">

                                        <span class="block__title">PRODUCT CATEGORY</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Intro ======-->


                    <!--====== Section Content ======-->
                    <div class="section__content">
                        <div class="container">
                            <div class="row" id="row-category">
                                
                                
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Content ======-->
                </div>

                <!--====== Electronic Category ======-->
                <!--====== End - Section 1 ======-->


                <!--====== Section 2 ======-->


                <!--====== Electronics Tab ======-->
                <div class="u-s-p-b-60">

                    <!--====== Section Intro ======-->
                    <div class="section__intro u-s-m-b-46">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="block">

                                        <span class="block__title">TOP PRODUCTS</span>
                                        <ul class="nav tab-list">
                                            <li class="nav-item">

                                                <a class="nav-link btn--e-white-brand-shadow" data-toggle="tab" href="#e-l-p">LATEST PRODUCTS</a></li>
                                            <li class="nav-item">

                                                <a class="nav-link btn--e-white-brand-shadow active" data-toggle="tab" href="#e-b-s">BEST SELLING</a></li>
                                            <li class="nav-item">
                                                <a class="nav-link btn--e-white-brand-shadow" data-toggle="tab" href="#e-t-r">TOP DISCOUNTS</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Intro ======-->


                    <!--====== Section Content ======-->
                    <div class="section__content">
                        <div class="container">
                            <div class="tab-content">

                                <!--====== Tab 1 ======-->
                                <div class="tab-pane" id="e-l-p">
                                    <div class="slider-fouc">
                                        <div class="owl-carousel tab-slider" data-item="4" id="tab-latest-prod">
                                            <!-- tab1 last product -->
                                             <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!--====== End - Tab 1 ======-->


                                <!--====== Tab 2 ======-->
                                <div class="tab-pane fade show active" id="e-b-s">
                                    <div class="slider-fouc">
                                        <div class="owl-carousel tab-slider" data-item="4" id ="tab-best-selling">
                                            <!-- tab2 selling -->
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30" >
                                                <div class="product-o product-o--hover-on" >
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--====== End - Tab 2 ======-->


                                <!--====== Tab 3 ======-->
                                <div class="tab-pane" id="e-t-r">
                                    <div class="slider-fouc">
                                        <div class="owl-carousel tab-slider" data-item="4" id ="tab-top-discounts">
                                             <!-- tab3 discount -->
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--====== End - Tab 3 ======-->


                                <!--====== Tab 4 ======-->
                                <div class="tab-pane" id="e-f-p">
                                    <div class="slider-fouc">
                                        <div class="owl-carousel tab-slider" data-item="4">
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product2.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Email me When the price drops"><i class="fas fa-envelope"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Red Wireless Headphone</a></span>
                                                    <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                                        <span class="product-o__review">(223)</span></div>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product1.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Email me When the price drops"><i class="fas fa-envelope"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Beats Bomb Wireless Headphone</a></span>
                                                    <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                                        <span class="product-o__review">(23)</span></div>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product33.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Email me When the price drops"><i class="fas fa-envelope"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Samsung 4k LED Oplex</a></span>
                                                    <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                                        <span class="product-o__review">(23)</span></div>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product34.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Email me When the price drops"><i class="fas fa-envelope"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Samsung 4k OLED</a></span>
                                                    <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                                        <span class="product-o__review">(23)</span></div>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product6.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Email me When the price drops"><i class="fas fa-envelope"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Canon DSLR Camera 4k</a></span>
                                                    <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                                        <span class="product-o__review">(23)</span></div>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="Assets/images//product/electronic/product7.jpg" alt=""></a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="Email me When the price drops"><i class="fas fa-envelope"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">Electronics</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">Nikon DSLR Camera 4k</a></span>
                                                    <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                                        <span class="product-o__review">(23)</span></div>

                                                    <span class="product-o__price">$125.00

                                                        <span class="product-o__discount">$160.00</span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--====== End - Tab 4 ======-->
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Content ======-->
                </div>
                <!--====== End - Electronics Tab ======-->
                <!--====== End - Section 2 ======-->

                <!--====== Section 5 ======-->


                <!--====== Men Category ======-->
                <div class="u-s-p-b-60" id="male-03">

                    <!--====== Section Intro ======-->
                    <div class="section__intro u-s-m-b-46">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="block">



                                        <span class="block__title">MANUFACTURER</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Intro ======-->


                    <!--====== Section Content ======-->
                    <div class="section__content">
                        <div class="container">
                            <div class="row" id="row-trade-mark">
                                <!--
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                                    <div class="category-o">
                                        <div class="aspect aspect--bg-grey aspect--square category-o__img-wrap">

                                            <img class="aspect__img category-o__img" src="Assets/images//product/men/product1.jpg" alt=""></div>
                                        <div class="category-o__info">

                                            <a class="category-o__shop-now btn--e-white-brand" href="shop-side-version-2.html">Outwear</a></div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                                    <div class="category-o">
                                        <div class="aspect aspect--bg-grey aspect--square category-o__img-wrap">

                                            <img class="aspect__img category-o__img" src="Assets/images//product/men/product2.jpg" alt=""></div>
                                        <div class="category-o__info">

                                            <a class="category-o__shop-now btn--e-white-brand" href="shop-side-version-2.html">Underwear</a></div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                                    <div class="category-o">
                                        <div class="aspect aspect--bg-grey aspect--square category-o__img-wrap">

                                            <img class="aspect__img category-o__img" src="Assets/images//product/men/product3.jpg" alt=""></div>
                                        <div class="category-o__info">

                                            <a class="category-o__shop-now btn--e-white-brand" href="shop-side-version-2.html">Sunglasses</a></div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                                    <div class="category-o">
                                        <div class="aspect aspect--bg-grey aspect--square category-o__img-wrap">

                                            <img class="aspect__img category-o__img" src="Assets/images//product/men/product4.jpg" alt=""></div>
                                        <div class="category-o__info">

                                            <a class="category-o__shop-now btn--e-white-brand" href="shop-side-version-2.html">Jackets</a></div>
                                    </div>
                                </div>
                                -->
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Content ======-->
                </div>

                <!--====== Men Category ======-->
                <!--====== End - Section 5 ======-->


                <!--====== Section 6 ======-->


                
                <!--====== End - Section 6 ======-->


                <!--====== Section 7 ======-->
                <div class="u-s-p-b-60">

                    <!--====== Section Intro ======-->
                    <div class="section__intro u-s-m-b-46">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="section__text-wrap">
                                        <h1 class="section__heading u-c-secondary u-s-m-b-12">EXCLUSIVE PRODUCT</h1>

                                        <span class="section__span u-c-silver">FIND EXCLUSIVE PRODUCT</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Intro ======-->


                    <!--====== Section Content ======-->
                    <div class="section__content">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 u-s-m-b-30">
                                    <div class="x-product u-h-100">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4 col-sm-4">
                                                <ul class="x-product__feature-list">
                                                    <li class="feature">

                                                        <span class="feature__name">NAME</span>

                                                        <span class="feature__value">New Fashion A Sweater</span></li>
                                                    <li class="feature">

                                                        <span class="feature__name">PRICE</span>

                                                        <span class="feature__value">$125.00</span></li>
                                                    <li class="feature">

                                                        <span class="feature__name">COLOR</span>

                                                        <span class="feature__value">Black</span></li>
                                                    <li class="feature">

                                                        <span class="feature__name">SIZE</span>

                                                        <span class="feature__value">XL</span></li>
                                                    <li class="feature">

                                                        <span class="feature__name">MATERIAL</span>

                                                        <span class="feature__value">Cotton</span></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-8">
                                                <div class="x-product__img-wrap">

                                                    <a class="u-d-block" href="product-detail.html">

                                                        <img class="u-d-block u-img-fluid" src="Assets/images//product/men/product11.jpg" alt=""></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 u-s-m-b-30">
                                    <div class="x-product u-h-100">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4 col-sm-4">
                                                <ul class="x-product__feature-list">
                                                    <li class="feature">

                                                        <span class="feature__name">NAME</span>

                                                        <span class="feature__value">New Fashion A Nice Elegant</span></li>
                                                    <li class="feature">

                                                        <span class="feature__name">PRICE</span>

                                                        <span class="feature__value">$125.00</span></li>
                                                    <li class="feature">

                                                        <span class="feature__name">COLOR</span>

                                                        <span class="feature__value">White Black</span></li>
                                                    <li class="feature">

                                                        <span class="feature__name">SIZE</span>

                                                        <span class="feature__value">XL</span></li>
                                                    <li class="feature">

                                                        <span class="feature__name">MATERIAL</span>

                                                        <span class="feature__value">Cotton</span></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-8">
                                                <div class="x-product__img-wrap">

                                                    <a class="u-d-block" href="product-detail.html">

                                                        <img class="u-d-block u-img-fluid" src="Assets/images//product/women/product20.jpg" alt=""></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--====== Section Content ======-->
                </div>
                <!--====== End - Section 7 ======-->





                <!--====== Section 9 ======-->
                <div class="u-s-p-b-60">

                    <!--====== Section Intro ======-->
                    <div class="section__intro u-s-m-b-46">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="section__text-wrap">
                                        <h1 class="section__heading u-c-secondary u-s-m-b-12">LATEST FROM BLOG</h1>

                                        <span class="section__span u-c-silver">START YOU DAY WITH FRESH AND LATEST NEWS</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Intro ======-->


                    <!--====== Section Content ======-->
                    <div class="section__content">
                        <div class="container">
                            <div class="row" id="blog-area">
                                <!-- blog newest area -->
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Content ======-->
                </div>
                <!--====== End - Section 9 ======-->


                <!--====== Section 10 ======-->
                <div class="u-s-p-b-60">

                    <!--====== Section Content ======-->
                    <div class="section__content">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 u-s-m-b-30">
                                    <div class="service u-h-100">
                                        <div class="service__icon"><i class="fas fa-truck"></i></div>
                                        <div class="service__info-wrap">

                                            <span class="service__info-text-1">Free Shipping</span>

                                            <span class="service__info-text-2">Free shipping on all US order or order above $200</span></div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 u-s-m-b-30">
                                    <div class="service u-h-100">
                                        <div class="service__icon"><i class="fas fa-redo"></i></div>
                                        <div class="service__info-wrap">

                                            <span class="service__info-text-1">Shop with Confidence</span>

                                            <span class="service__info-text-2">Our Protection covers your purchase from click to delivery</span></div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 u-s-m-b-30">
                                    <div class="service u-h-100">
                                        <div class="service__icon"><i class="fas fa-headphones-alt"></i></div>
                                        <div class="service__info-wrap">

                                            <span class="service__info-text-1">24/7 Help Center</span>

                                            <span class="service__info-text-2">Round-the-clock assistance for a smooth shopping experience</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--====== End - Section Content ======-->
                </div>
                <!--====== End - Section 10 ======-->
            </div>
            <!--====== End - White Container ======-->
        </div>
        <!--====== End - Anti Flash White Background ======-->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">

    <script>
        $(document).ready(function () {
            getCategory();
            getTradeMark();
            getLatestProducts();
            bestSellingProduct();
            topDiscounts();
            getImageSlider();
            getNewestBlogs();
        });
        

        // ajax call api getCategory
        function getCategory() {
            $.ajax({
                url: 'https://localhost:44344/api/DanhMucSanPhams',
                success: function (response) {
                    var $categoryList = $('#row-category')
                    $.each(response, function (_, category) {
                        $(
                            `<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                                <div class="category-o">
                                    <div class="aspect aspect--bg-grey aspect--square category-o__img-wrap">

                                        <img class="aspect__img category-o__img" src="../Uploads/AnhDanhMuc/`+category.img_danh_muc+`" alt=""></div>
                                        <div class="category-o__info">

                                            <a class="category-o__shop-now btn--e-white-brand" href="shop-side-version-2.html">`+ category.ten_danh_muc +`</a></div>
                                    </div>
                                </div>`
                        ).appendTo($categoryList)
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }
        
        // ajax call api getTradeMark
        function getTradeMark() {
            $.ajax({
                url: 'https://localhost:44344/api/ThuongHieus',
                success: function (response) {
                    var $tradeMarkList = $('#row-trade-mark')
                    $.each(response, function (_, tradeMark) {
                        $(
                            `
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                                    <div class="category-o">
                                        <div class="aspect aspect--bg-grey aspect--square category-o__img-wrap">
                                            <img class="aspect__img category-o__img" src="../Uploads/AnhThuongHieu/`+ tradeMark.img_thuong_hieu +`" alt=""></div>
                                        <div class="category-o__info">
                                            <a class="category-o__shop-now btn--e-white-brand" href="shop-side-version-2.html">`+ tradeMark.ten_thuong_hieu +`</a></div>
                                    </div>
                                </div>
                            `
                        ).appendTo($tradeMarkList)
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }

        // ajax call api getLatestProducts
        function getLatestProducts() {
            $.ajax({
                url: 'https://localhost:44344/api/LatestProducts',
                success: function (response) {
                    var $latestProductsList = $('#tab-latest-prod .owl-stage-outer .owl-stage');
                    $latestProductsList.html('');
                    $.each(response, function (_, latestProduct) {
                        $(
                            `
                                <div class="owl-item active" style="width: 310px;"><div class="u-s-m-b-30">
                                                <div class="product-o product-o--hover-on">
                                                    <div class="product-o__wrap">

                                                        <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                            <img class="aspect__img" src="../Uploads/AnhSP/`+ getImageProduct(latestProduct.id_san_pham) +`" alt="">
                                                        </a>
                                                        <div class="product-o__action-wrap">
                                                            <ul class="product-o__action-list">
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                                <li>

                                                                    <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                                <li>

                                                                    <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <span class="product-o__category">

                                                        <a href="shop-side-version-2.html">`+ getManufacturer(latestProduct.id_thuong_hieu) +`</a></span>

                                                    <span class="product-o__name">

                                                        <a href="product-detail.html">`+ latestProduct.ten_san_pham +`</a></span>

                                                    <span class="product-o__price">`+ latestProduct.gia_san_pham +` VND

                                                        <span class="product-o__discount">`+ latestProduct.phan_tram_khuyen_mai +`</span></span>
                                                </div>
                                            </div></div>
                            `
                        ).appendTo($latestProductsList)
                    })
                },
                error: function (error) {
                    alert('false');
                    console.error(error)
                }
            })
        }

        

        // ajax call api bestSellingProduct
        bestSellingProduct = () => {
            $.ajax({
                url: 'https://localhost:44344/api/BestSellingProducts',
                success: function (response) {
                    let bestSellingList = $('#tab-best-selling .owl-stage-outer .owl-stage')
                    bestSellingList.html('');

                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="owl-item active" style="width: 310px;"><div class="u-s-m-b-30">
                                    <div class="product-o product-o--hover-on">
                                        <div class="product-o__wrap">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                <img class="aspect__img" src="../Uploads/AnhSP/`+ getImageProduct(item.id_san_pham) + `" alt="">
                                            </a>
                                            <div class="product-o__action-wrap">
                                                <ul class="product-o__action-list">
                                                    <li>

                                                        <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                    <li>

                                                        <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                    <li>

                                                        <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <span class="product-o__category">

                                            <a href="shop-side-version-2.html">`+ getManufacturer(item.id_thuong_hieu) + `</a></span>

                                        <span class="product-o__name">

                                            <a href="product-detail.html">`+ item.ten_san_pham + `</a></span>

                                        <span class="product-o__price">`+ item.gia_san_pham + ` VND

                                            <span class="product-o__discount">`+ item.phan_tram_khuyen_mai + `</span></span>
                                    </div>
                                </div></div>
                            `
                        ).appendTo(bestSellingList);
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }

        // ajax call api topDiscounts
        topDiscounts = () => {
            $.ajax({
                url: 'https://localhost:44344/api/TopDiscounts',
                success: function (response) {
                    let topDiscountList = $('#tab-top-discounts .owl-stage-outer .owl-stage')
                    topDiscountList.html('');

                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="owl-item active" style="width: 310px;"><div class="u-s-m-b-30">
                                    <div class="product-o product-o--hover-on">
                                        <div class="product-o__wrap">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                <img class="aspect__img" src="../Uploads/AnhSP/`+ getImageProduct(item.id_san_pham) + `" alt="">
                                            </a>
                                            <div class="product-o__action-wrap">
                                                <ul class="product-o__action-list">
                                                    <li>

                                                        <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                    <li>

                                                        <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                    <li>

                                                        <a href="signin.html" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <span class="product-o__category">

                                            <a href="shop-side-version-2.html">`+ getManufacturer(item.id_thuong_hieu) + `</a></span>

                                        <span class="product-o__name">

                                            <a href="product-detail.html">`+ item.ten_san_pham + `</a></span>

                                        <span class="product-o__price">`+ item.gia_san_pham + ` VND

                                            <span class="product-o__discount">`+ item.phan_tram_khuyen_mai + `</span></span>
                                    </div>
                                </div></div>
                            `
                        ).appendTo(topDiscountList);
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }


        // ajax call api getImageSlider
        function getImageSlider() {
            $.ajax({
                url: 'https://localhost:44344/api/ImgGiaoDiens',
                success: function (response) {
                    let $imgsSlider = $('#hero-slider .owl-stage-outer .owl-stage');
                    var cl = $('.hero-slide--1').css("background-image");
                    console.log(cl);
                    //$(selector).css("propertyName", "value");
                    $('.hero-slide--1').css("background-image", `url(../Uploads/AnhGiaoDien/` + response[0].url + `)`);
                    $('.hero-slide--2').css("background-image", `url(../Uploads/AnhGiaoDien/` + response[1].url + `)`);
                    $('.hero-slide--3').css("background-image", `url(../Uploads/AnhGiaoDien/` + response[2].url + `)`);
                    console.log($('.hero-slide--1').css("background-image"));
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }


        // ajax call api getImageSlider
        function getNewestBlogs() {
            $.ajax({
                url: 'https://localhost:44344/api/NewestBlogs',
                success: function (response) {
                    let $newestBlogs = $('#blog-area');
                    $newestBlogs.html('');

                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="col-lg-4 col-md-6 u-s-m-b-30">
                                    <div class="bp-mini bp-mini--img u-h-100">
                                        <div class="bp-mini__thumbnail">

                                            <!--====== Image Code ======-->

                                            <a class="aspect aspect--bg-grey aspect--1366-768 u-d-block" href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">

                                                <img class="aspect__img" src="../Uploads/AnhBlog/`+ item.image + `" alt=""></a>
                                            <!--====== End - Image Code ======-->
                                        </div>
                                        <div class="bp-mini__content">
                                            <div class="bp-mini__stat">

                                                <span class="bp-mini__stat-wrap">

                                                    <span class="bp-mini__publish-date">

                                                        <a href="Blog.aspx?time=`+ item.time + `">

                                                            <span>`+ getStrDate(item.time) +`</span></a></span></span>

                                                <span class="bp-mini__stat-wrap">

                                                    <span class="bp-mini__preposition">By</span>

                                                    <span class="bp-mini__author">

                                                        <a href="Blog.aspx?username=`+ item.username + `">`+ item.username +`</a></span></span>

                                                </div>

                                            <span class="bp-mini__h1">

                                                <a href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">`+ item.title + `</a></span>
                                            <p class="bp-mini__p">`+ getShortStr(item.content) +`</p>
                                            
                                        </div>
                                    </div>
                                </div>
                            `
                        ).appendTo($newestBlogs);
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }
    </script>

</asp:Content>
