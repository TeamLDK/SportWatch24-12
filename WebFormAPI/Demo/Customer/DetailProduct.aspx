<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="DetailProduct.aspx.cs" Inherits="Demo.Customer.DetailProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="Assets/images/favicon.png" rel="shortcut icon">
    <title>Ludus - Electronics, Apparel, Computers, Books, DVDs & more</title>

    <!--====== Google Font ======-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">

    <!--====== Vendor Css ======-->
    <link rel="stylesheet" href="Assets/css/vendor.css">

    <!--====== Utility-Spacing ======-->
    <link rel="stylesheet" href="Assets/css/utility.css">

    <!--====== App ======-->
    <link rel="stylesheet" href="Assets/css/app.css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <!--====== App Content ======-->
        <div class="app-content">

            <!--====== Section 1 ======-->
            <div class="u-s-p-t-90">
                <div class="container">
                    <div class="row" id="detailProduct">
                        <div class="col-lg-5">

                            <!--====== Product Breadcrumb ======-->
                            <div class="pd-breadcrumb u-s-m-b-30">
                                <ul class="pd-breadcrumb__list">
                                    <li class="has-separator">

                                        <a href="Index.aspx">Home</a></li>
                                    <li class="has-separator">

                                        <a href="Products.aspx">Products</a></li>
                                    <li class="has-separator">

                                        <span id ="breadcrumb-name-product" style="font-size:15px;"></span></li>

                                </ul>
                            </div>
                            <!--====== End - Product Breadcrumb ======-->


                            <!--====== Product Detail Zoom ======-->
                            <div class="pd u-s-m-b-30">
                                <div class="slider-fouc pd-wrap">
                                    <div id="pd-o-initiate-img">
                                        <!-- Image zoom area -->
                                    </div>

                                    <span class="pd-text">Click for larger zoom</span>
                                </div>
                                <div class="u-s-m-t-15">
                                    <div class="slider-fouc">
                                        <div id="pd-o-thumbnail-img">
                                            <!-- Image thumbnail area -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--====== End - Product Detail Zoom ======-->
                        </div>
                        <div class="col-lg-7">

                            <!--====== Product Right Side Details ======-->
                            <div class="pd-detail" style="margin-top:50px;">
                                <div>

                                    <span class="pd-detail__name" id="name-product"></span></div>
                                <div>
                                    <div class="pd-detail__inline">

                                        <span class="pd-detail__price" id="price-discount"></span>

                                        <span class="pd-detail__discount" id="percent-discount"></span><del class="pd-detail__del" id="price-product"></del></div>
                                </div>
                                <div class="u-s-m-b-15">
                                </div>
                                <div class="u-s-m-b-15">
                                    <div class="pd-detail__inline">

                                        <span class="pd-detail__stock" id="num-product"></span>

                                </div>
                                <div class="u-s-m-b-15">

                                    <span class="pd-detail__preview-desc" id="short-description-product"></span></div>
                                
                                <div class="u-s-m-b-15">
                                    <div class="pd-detail__inline">

                                        <span class="pd-detail__click-wrap"><i class="far fa-heart u-s-m-r-6"></i>

                                            <a id="add-to-wishlist">Add to Wishlist</a></span></div>
                                </div>
                                <div class="u-s-m-b-15">
                                    <ul class="pd-social-list">
                                        <li>

                                            <a class="s-fb--color-hover" href="#"><i class="fab fa-facebook-f"></i></a></li>
                                        <li>

                                            <a class="s-tw--color-hover" href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li>

                                            <a class="s-insta--color-hover" href="#"><i class="fab fa-instagram"></i></a></li>
                                        <li>

                                            <a class="s-wa--color-hover" href="#"><i class="fab fa-whatsapp"></i></a></li>
                                        <li>

                                            <a class="s-gplus--color-hover" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                    </ul>
                                </div>
                                <div class="u-s-m-b-15">
                                    <div class="pd-detail__form">
                                        <div class="pd-detail-inline-2">
                                            <div class="u-s-m-b-15">

                                                <button class="btn btn--e-brand-b-2" id="buy-now">Add to cart</button></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--====== End - Product Right Side Details ======-->
                    </div>
                </div>
            </div>

            <!--====== Product Detail Tab ======-->
            <div class="u-s-p-y-90">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="pd-tab">
                                <div class="u-s-m-b-30">
                                    <ul class="nav pd-tab__list">
                                        <li class="nav-item">

                                            <a class="nav-link active" data-toggle="tab" href="#pd-desc">DESCRIPTION</a></li>
                                        <li class="nav-item">
                                    </ul>
                                </div>
                                <div class="tab-content">

                                    <!--====== Tab 1 ======-->
                                    <div class="tab-pane fade show active" >
                                        <div class="pd-tab__desc">
                                            <div class="u-s-m-b-15">
                                                <p id="long-description-product"></p>
                                            </div>
                                            <div class="u-s-m-b-30" id="image-DESCRIPTION">
                                                <img class="u-img-fluid"  src="#" alt="" id="description-image">
                                            </div>
                                            <div class="u-s-m-b-30">
                                                <ul>
                                                    <li><i class="fas fa-check u-s-m-r-8"></i>

                                                        <span>Buyer Protection.</span></li>
                                                    <li><i class="fas fa-check u-s-m-r-8"></i>

                                                        <span>Full Refund if you don't receive your order.</span></li>
                                                    <li><i class="fas fa-check u-s-m-r-8"></i>

                                                        <span>Returns accepted if product not as described.</span></li>
                                                </ul>
                                            </div>
                                            <div class="u-s-m-b-15">
                                                <h4>PRODUCT INFORMATION</h4>
                                            </div>
                                            <div class="u-s-m-b-15">
                                                <div class="pd-table gl-scroll">
                                                    <table>
                                                        <tbody id="table-description">
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--====== End - Tab 1 ======-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--====== End - Product Detail Tab ======-->
            <div class="u-s-p-b-90">

                <!--====== Section Intro ======-->
                <div class="section__intro u-s-m-b-46">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="section__text-wrap">
                                    <h1 class="section__heading u-c-secondary u-s-m-b-12">CUSTOMER ALSO VIEWED</h1>

                                    <span class="section__span u-c-grey">PRODUCTS THAT CUSTOMER VIEWED</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--====== End - Section Intro ======-->


                <!--====== Section Content ======-->
                <div class="section__content">
                    <div class="container">
                        <div class="slider-fouc">
                            <div class="owl-carousel product-slider" data-item="4" id="same-type-product">
                                <div class="u-s-m-b-30">
                                    <div class="product-o product-o--hover-on">
                                        <div class="product-o__wrap">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                <img class="aspect__img" src="Assets/images/product/electronic/product1.jpg" alt=""></a>
                                            <div class="product-o__action-wrap">
                                                <ul class="product-o__action-list">
                                                    <li>

                                                        <a data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                    <li>

                                                        <a data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                    <li>

                                                        <a data-tooltip="tooltip" data-placement="top" title="Add to Wishlist" ><i class="fas fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <span class="product-o__category">

                                            <a href="shop-side-version-2.html">Electronics</a></span>

                                        <span class="product-o__name">

                                            <a href="product-detail.html">Beats Bomb Wireless Headphone</a></span>
                                        

                                        <span class="product-o__price">$125.00

                                            <span class="product-o__discount">$160.00</span></span>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="product-o product-o--hover-on">
                                        <div class="product-o__wrap">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                <img class="aspect__img" src="Assets/images/product/electronic/product2.jpg" alt=""></a>
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

                                            <span class="product-o__review">(20)</span></div>

                                        <span class="product-o__price">$125.00

                                            <span class="product-o__discount">$160.00</span></span>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="product-o product-o--hover-on">
                                        <div class="product-o__wrap">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                <img class="aspect__img" src="Assets/images/product/electronic/product3.jpg" alt=""></a>
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

                                            <a href="product-detail.html">Yellow Wireless Headphone</a></span>
                                        <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                            <span class="product-o__review">(20)</span></div>

                                        <span class="product-o__price">$125.00

                                            <span class="product-o__discount">$160.00</span></span>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="product-o product-o--hover-on">
                                        <div class="product-o__wrap">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                <img class="aspect__img" src="Assets/images/product/electronic/product23.jpg" alt=""></a>
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

                                            <a href="product-detail.html">Razor Gear Ultra Slim 8GB Ram</a></span>
                                        <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                            <span class="product-o__review">(20)</span></div>

                                        <span class="product-o__price">$125.00

                                            <span class="product-o__discount">$160.00</span></span>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="product-o product-o--hover-on">
                                        <div class="product-o__wrap">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                <img class="aspect__img" src="Assets/images/product/electronic/product26.jpg" alt=""></a>
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

                                            <a href="product-detail.html">Razor Gear Ultra Slim 12GB Ram</a></span>
                                        <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                            <span class="product-o__review">(20)</span></div>

                                        <span class="product-o__price">$125.00

                                            <span class="product-o__discount">$160.00</span></span>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="product-o product-o--hover-on">
                                        <div class="product-o__wrap">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                <img class="aspect__img" src="Assets/images/product/electronic/product30.jpg" alt=""></a>
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

                                            <a href="product-detail.html">Razor Gear Ultra Slim 16GB Ram</a></span>
                                        <div class="product-o__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>

                                            <span class="product-o__review">(20)</span></div>

                                        <span class="product-o__price">$125.00

                                            <span class="product-o__discount">$160.00</span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--====== End - Section Content ======-->
            </div>
            <!--====== End - Section 1 ======-->
        </div>
        <!--====== End - App Content ======-->
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        const searchParams = new URLSearchParams(window.location.search);
        const _id = searchParams.get('id');
        const id_product = _id == null ? '' : _id;

        var $jq = jQuery.noConflict();
        $jq(document).ready(function () {
            if (id_product == '') {
                window.location = "Products.aspx";
            }
            else {
                getInforProduct(id_product);
                getImageZoom(id_product);
            }
        });

        // ajax call api get infor a product 
        getInforProduct = (id) => {
            let urlStr = 'https://localhost:44344/api/SanPhams/' + id;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    if (response == '') {
                        window.location = "Products.aspx";
                    }
                    getData(response);
                    getProductsSameType(response.id_danh_muc, response.id_thuong_hieu)
                },
                error: function (error) {
                    console.error(error);
                    window.location = "Products.aspx";
                }
            })
        }
        getData = (obj) => {
            $('#breadcrumb-name-product').text(obj.ten_san_pham);
            $('#name-product').text(obj.ten_san_pham);
            $('#price-discount').text(formatMoney(getDiscountPrice(obj.gia_san_pham, obj.phan_tram_khuyen_mai)) + ' VND');
            $('#percent-discount').text('(' + obj.phan_tram_khuyen_mai + '% OFF');
            $('#price-product').text(formatMoney(obj.gia_san_pham) + ' VND');
            $('#num-product').text(obj.so_luong_ton_kho + ' in stock');
            $('#short-description-product').text(getShortStr(obj.mo_ta_san_pham));
            $('#long-description-product').text(obj.mo_ta_san_pham);
            //
            $('#buy-now').attr('onclick', `addProductToCart('` + obj.id_san_pham + `')`);
            $('#add-to-wishlist').attr('onclick', `addProductToWishlist('` + obj.id_san_pham + `')`);
            $(
                `
                    <tr>
                        <td>Features</td>
                        <td>`+ obj.tinh_nang_san_pham +`</td>
                    </tr>

                `
            ).appendTo('#table-description');
            $(
                `
                    <tr>
                        <td>Sex</td>
                        <td>`+ obj.gioi_tinh + `</td>
                    </tr>

                `
            ).appendTo('#table-description');
            $(
                `
                    <tr>
                        <td>Warranty (month)</td>
                        <td>`+ obj.so_thang_bao_hanh + `</td>
                    </tr>

                `
            ).appendTo('#table-description');
            $('#description-image').attr('src', '../Uploads/AnhSP/' + getImageProduct(obj.id_san_pham));
        }


        getImageZoom = (id_sp) => {
            let urlStr = `https://localhost:44344/api/ImgSanPhams?id_sp=` + id_sp;
            $.ajax({
                url: urlStr,
                success: function (response) {

                    let $imgZoomList = $('#pd-o-initiate-img')
                    $imgZoomList.html('');

                    let $imgThumbnailList = $('#pd-o-thumbnail-img')
                    $imgThumbnailList.html('');

                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="pd-o-img-wrap" data-src="../Uploads/AnhSP/`+ item.url +`">
                                <img class="u-img-fluid" src="../Uploads/AnhSP/`+ item.url + `" data-zoom-image="../Uploads/AnhSP/` + item.url +`" alt=""></div>
                            `
                        ).appendTo($imgZoomList);
                        $(
                            `
                                <div>
                                <img class="u-img-fluid" src="../Uploads/AnhSP/`+ item.url + `" alt=""></div>
                            `
                        ).appendTo($imgThumbnailList);

                    })
                    draw();
                },
                error: function (error) {
                    console.error(error);

                }
            })

        }
        
        // Product Detail Init
        draw = () => {

            var $productDetailElement = $('#pd-o-initiate-img');
            var $productDetailElementThumbnail = $('#pd-o-thumbnail-img');
            if ($productDetailElement.length && $productDetailElementThumbnail.length) {


                var ELEVATE_ZOOM_OBJ = {
                    borderSize: 1,
                    autoWidth: true,
                    zoomWindowWidth: 540,
                    zoomWindowHeight: 540,
                    zoomWindowOffetx: 10,
                    borderColour: '#e9e9e9',
                    cursor: 'pointer'
                };
                // Fires after first initialization
                $productDetailElement.on('init', function () {
                    $(this).closest('.slider-fouc').removeClass('slider-fouc');
                });

                $productDetailElement.slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    infinite: false,
                    arrows: false,
                    dots: false,
                    fade: true,
                    asNavFor: $productDetailElementThumbnail
                });
                // Init elevate zoom plugin to the first image
                $('#pd-o-initiate-img .slick-current img').elevateZoom(ELEVATE_ZOOM_OBJ);

                // Fires before slide change
                $productDetailElement.on('beforeChange', function (event, slick, currentSlide, nextSlide) {
                    // Get the next slide image
                    var $img = $(slick.$slides[nextSlide]).find('img');
                    // Remove old zoom elements
                    $('.zoomWindowContainer,.zoomContainer').remove();
                    // Reinit elevate zoom plugin to the next slide image
                    $($img).elevateZoom(ELEVATE_ZOOM_OBJ);
                });

                // Init Lightgallery plugin
                $productDetailElement.lightGallery({
                    selector: '.pd-o-img-wrap',// lightgallery-core
                    download: false,// lightgallery-core
                    thumbnail: false,// Thumbnails
                    autoplayControls: false,// Autoplay-plugin
                    actualSize: false,// Zoom-plugin: Enable actual pixel icon
                    hash: false, // Hash-plugin
                    share: false// share-plugin
                });
                // Thumbnail images
                // Fires after first initialization
                $productDetailElementThumbnail.on('init', function () {
                    $(this).closest('.slider-fouc').removeAttr('class');
                });

                $productDetailElementThumbnail.slick({
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    infinite: false,
                    arrows: true,
                    dots: false,
                    focusOnSelect: true,
                    asNavFor: $productDetailElement,
                    prevArrow: '<div class="pt-prev"><i class="fas fa-angle-left"></i>',
                    nextArrow: '<div class="pt-next"><i class="fas fa-angle-right"></i>',
                    responsive: [
                        {
                            breakpoint: 1200,
                            settings: {
                                slidesToShow: 4
                            }
                        },
                        {
                            breakpoint: 992,
                            settings: {
                                slidesToShow: 3
                            }
                        },
                        {
                            breakpoint: 576,
                            settings: {
                                slidesToShow: 2
                            }
                        }
                    ]
                });
            }
        };



        //
        getProductsSameType = (id_dm, id_th) => {
            let urlStr = `https://localhost:44344/api/GetProductsSameType?id_danh_muc=` + id_dm + `&id_thuong_hieu=` + id_th;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let $sameTypeList = $('#same-type-product .owl-stage-outer .owl-stage')
                    $sameTypeList.html('');

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

                                                        <a href="DetailProduct.aspx?id=${item.id_san_pham}" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Quick View"><i class="fas fa-search-plus"></i></a></li>
                                                    <li>

                                                        <a onclick="addProductToCart('`+ item.id_san_pham + `')" data-modal="modal" data-modal-id="#add-to-cart" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
                                                    <li>

                                                        <a onclick="addProductToWishlist('`+ item.id_san_pham + `')" data-tooltip="tooltip" data-placement="top" title="" data-original-title="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <span class="product-o__category">

                                            <a href="Products.aspx?id_danh_muc=${item.id_danh_muc}">` + getNameCategory(item.id_danh_muc) + `</a> <span>-</span> 
                                            <a href="Products.aspx?id_thuong_hieu=${item.id_thuong_hieu}">` + getNameManufacturer(item.id_thuong_hieu) + `</a> <br>

                                        <span class="product-o__name">

                                            <a href="DetailProduct.aspx?id=${item.id_san_pham}">` + item.ten_san_pham + `</a></span>

                                        <span class="product-o__price">`+ formatMoney(item.gia_san_pham) + ` VND

                                            <span class="product-o__discount" style="color:red">`+ item.phan_tram_khuyen_mai + `%</span></span>
                                    </div>
                                </div></div>
                            `
                        ).appendTo($sameTypeList);
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }

    </script>
</asp:Content>
