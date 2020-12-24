<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Demo.Customer.Products" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="app-content">
        <!--====== Section 1 ======-->
        <div class="u-s-p-y-90">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="shop-w-master">
                            <h1 class="shop-w-master__heading u-s-m-b-30"><i class="fas fa-filter u-s-m-r-8"></i>

                                <span>FILTERS</span></h1>
                            <div class="shop-w-master__sidebar">
                                <div class="u-s-m-b-30">
                                    <div class="shop-w shop-w--style">
                                        <div class="shop-w__intro-wrap">
                                            <h1 class="shop-w__h">CATEGORY</h1>

                                            <span class="fas fa-minus shop-w__toggle" data-target="#s-category" data-toggle="collapse"></span>
                                        </div>
                                        <div class="shop-w__wrap collapse show" id="s-category">
                                            <ul class="shop-w__category-list gl-scroll">
                                                <li class="has-list">
                                                    <ul style="display:block" id="category-area">
                                                        <!-- categrory area -->
                                                        
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="shop-w shop-w--style">
                                        <div class="shop-w__intro-wrap">
                                            <h1 class="shop-w__h">PRICE</h1>

                                            <span class="fas fa-minus shop-w__toggle" data-target="#s-price" data-toggle="collapse"></span>
                                        </div>
                                        <div class="shop-w__wrap collapse show" id="s-price">
                                            <div class="shop-w__form-p">
                                                <div class="shop-w__form-p-wrap">
                                                    <div>

                                                        <label for="price-min"></label>

                                                        <input class="input-text input-text--primary-style" type="text" id="price-min" placeholder="Min"></div>
                                                    <div>

                                                        <label for="price-max"></label>

                                                        <input class="input-text input-text--primary-style" type="text" id="price-max" placeholder="Max"></div>
                                                    <div>

                                                        <button class="btn btn--icon fas fa-angle-right btn--e-transparent-platinum-b-2" onclick="getMinMaxPrice()"></button></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="shop-w shop-w--style">
                                        <div class="shop-w__intro-wrap">
                                            <h1 class="shop-w__h">MANUFACTURER</h1>

                                            <span class="fas fa-minus shop-w__toggle" data-target="#s-manufacturer" data-toggle="collapse"></span>
                                        </div>
                                        <div class="shop-w__wrap collapse show" id="s-manufacturer">
                                            <ul class="shop-w__list-2" id="manufacturer-area">
                                                <!-- manufacturer area-->
                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12">
                        <div class="shop-p">
                            <div class="shop-p__toolbar u-s-m-b-30">
                                <div class="shop-p__tool-style">
                                    <div class="tool-style__group u-s-m-b-8">

                                        <span class="js-shop-grid-target is-active">Grid</span>

                                        <span class="js-shop-list-target">List</span></div>
                                </div>
                            </div>
                            <div class="shop-p__collection">
                                <div class="row is-grid-active" id="product">

                                </div>
                            </div>
                            <div class="u-s-p-y-60">

                                <!--====== Pagination ======-->
                                <ul class="shop-p__pagination">
                                    <li class="is-active">

                                        <a href="shop-side-version-2.html">1</a></li>
                                    <li>

                                        <a href="shop-side-version-2.html">2</a></li>
                                    <li>

                                        <a href="shop-side-version-2.html">3</a></li>
                                    <li>

                                        <a href="shop-side-version-2.html">4</a></li>
                                    <li>

                                        <a class="fas fa-angle-right" href="shop-side-version-2.html"></a></li>
                                </ul>
                                <!--====== End - Pagination ======-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section 1 ======-->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>

        const searchParams = new URLSearchParams(window.location.search);
        const id_dm = searchParams.get('id_danh_muc');
        const id_th = searchParams.get('id_thuong_hieu');
        const mi = searchParams.get('min');
        const ma = searchParams.get('max');
        const s = searchParams.get('search');
        
        const id_danh_muc = id_dm == null ? '' : id_dm;
        const id_thuong_hieu = id_th == null ? '' : id_th;
        const min = mi == null ? '' : mi;
        const max = ma == null ? '' : ma;
        const search = s == null ? '' : s;

        $(document).ready(function () {
            getCategoryArea();
            getManufacturerArea();

            if (search != null && search != '') {
                getProductsBySearch();
            } else {
                if ((id_danh_muc == null || id_danh_muc == '') &&
                    (id_thuong_hieu == null || id_thuong_hieu == '') &&
                    (min == null || min == '') &&
                    (max == null || max == '')
                ) {
                    getProducts();
                } else {
                    filters();
                    getActiveValue();
                }
            }
        });

        getProductsBySearch = () => {
            let urlStr = 'https://localhost:44344/api/GetProductsBySearch?key=' + search;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let $listProducts = $('#product');
                    if (response == '') {
                        window.location = "Products.aspx";
                    }
                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product-m">
                                        <div class="product-m__thumb">

                                            <a class="aspect aspect--bg-grey aspect--square u-d-block" href="DetailProduct.aspx?id=${item.id_san_pham}">

                                                <img class="aspect__img" src="../Uploads/AnhSP/`+ getImageProduct(item.id_san_pham) + `" alt=""></a>
                                            <div class="product-m__quick-look">

                                                <a href="DetailProduct.aspx?id=${item.id_san_pham}" class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                            <div class="product-m__add-cart" onclick="addProductToCart('`+ item.id_san_pham + `')">

                                                <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart" >Add to Cart</a></div>
                                        </div>
                                        <div class="product-m__content">
                                            <div class="product-m__category">
                                                <a href="Products.aspx?id_danh_muc=${item.id_danh_muc}&id_thuong_hieu=${id_thuong_hieu}&min=${min}&max=${max}">` + getNameCategory(item.id_danh_muc) + `</a> <span>-</span> 
                                                <a href="Products.aspx?id_danh_muc=${id_danh_muc}&id_thuong_hieu=${item.id_thuong_hieu}&min=${min}&max=${max}">` + getNameManufacturer(item.id_thuong_hieu) + `</a>
                                            </div>
                                            <div class="product-m__category">
                                                    
                                            </div>
                                            <div class="product-m__name">

                                                <a href="DetailProduct.aspx?id=${item.id_san_pham}">` + item.ten_san_pham + `</a></div>
                                                
                                            <div class="product-m__price">`+ formatMoney(item.gia_san_pham) + `VND</div>
                                            <div class="product-m__hover">
                                                <div class="product-m__preview-description">

                                                    <span>`+ getShortStr(item.mo_ta_san_pham) + `</span></div>
                                                <div class="product-m__wishlist" onclick="addProductToWishlist('`+ item.id_san_pham +`')">

                                                    <a class="far fa-heart" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist" ></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            `
                        ).appendTo($listProducts);
                    })
                },
                error: function (error) {
                    console.error(error);
                    window.location = "Products.aspx";
                }
            });
        }
        
        getActiveValue = () => {
            let id_dm = '#dm' + id_danh_muc;
            let id_th = '#th' + id_thuong_hieu;
            $(id_dm).css('font-weight', 'bold');
            $(id_th).css('font-weight', 'bold');
            if (min != null) {
                $('#price-min').val(min);
            }
            if (max != null) {
                $('#price-max').val(max);
            }
        }
        filters = () => {
            let urlStr = `https://localhost:44344/api/SanPhams?id_danh_muc=` + id_danh_muc + `&id_thuong_hieu=` + id_thuong_hieu + `&min=` + min + `&max=` + max;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let productList = $('#product')
                    productList.html('');

                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="DetailProduct.aspx?id=${item.id_san_pham}">

                                                    <img class="aspect__img" src="../Uploads/AnhSP/`+ getImageProduct(item.id_san_pham) + `" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a href="DetailProduct.aspx?id=${item.id_san_pham}" class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart" onclick="addProductToCart('`+ item.id_san_pham +`')">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart" >Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">
                                                    <a href="Products.aspx?id_danh_muc=${item.id_danh_muc}&id_thuong_hieu=${id_thuong_hieu}&min=${min}&max=${max}">` + getNameCategory(item.id_danh_muc) + `</a> <span>-</span> 
                                                    <a href="Products.aspx?id_danh_muc=${id_danh_muc}&id_thuong_hieu=${item.id_thuong_hieu}&min=${min}&max=${max}">` + getNameManufacturer(item.id_thuong_hieu) + `</a>
                                                </div>
                                                <div class="product-m__category">
                                                    
                                                </div>
                                                <div class="product-m__name">

                                                    <a href="DetailProduct.aspx?id=${item.id_san_pham}">` + item.ten_san_pham + `</a></div>
                                                
                                                <div class="product-m__price">`+ formatMoney(item.gia_san_pham) + `VND</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>`+ getShortStr(item.mo_ta_san_pham) + `</span></div>
                                                    <div class="product-m__wishlist" onclick="addProductToWishlist('`+ item.id_san_pham +`')">

                                                        <a class="far fa-heart" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist" ></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            `
                        ).appendTo(productList);
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }
        getMinMaxPrice = () => {
            let mi = $('#price-min').val();
            let ma = $('#price-max').val();
            window.location = `Products.aspx?id_danh_muc=${id_danh_muc}&id_thuong_hieu=${id_thuong_hieu}&min=${mi}&max=${ma}`;
        }
        // ajax call api getCategoryArea
        getCategoryArea = () => {
            $.ajax({
                url: 'https://localhost:44344/api/DanhMucSanPhams',
                async: false,
                success: function (response) {
                    var $categoryList = $('#category-area');
                    $.each(response, function (_, category) {
                        $(
                            `
                                <li>
                                    <a href="Products.aspx?id_danh_muc=${category.id_danh_muc}&id_thuong_hieu=${id_thuong_hieu}&min=${min}&max=${max}"  class="list__content">
                                        <span id="dm`+ category.id_danh_muc + `">`+ category.ten_danh_muc + `</span></a>
                                </li>
                            `
                        ).appendTo($categoryList)
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }
        // ajax call api getManufacturerArea
        getManufacturerArea = () => {
            $.ajax({
                url: 'https://localhost:44344/api/ThuongHieus',
                async: false,
                success: function (response) {
                    var $manufacturerList = $('#manufacturer-area');
                    $.each(response, function (_, manufacturer) {
                        $(
                            `
                                <li>
                                    <a href="Products.aspx?id_danh_muc=${id_danh_muc}&id_thuong_hieu=${manufacturer.id_thuong_hieu}&min=${min}&max=${max}" class="list__content">
                                        <span id="th`+ manufacturer.id_thuong_hieu + `">` + manufacturer.ten_thuong_hieu +`</span></a>
                                </li>
                            `
                        ).appendTo($manufacturerList)
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }

        // call api img product {id}
        getImageProduct = (id) => {
            let urlStr = "https://localhost:44344/api/GetImageProduct/" + id;
            let img = '';
            $.ajax({
                url: urlStr,
                async: false,
                success: function (response) {
                    img = response.url;
                },
                error: function (error) {
                    console.error(error)
                }
            });
            return img;
        }
        // ajax call api Products
        getProducts = () => {
            $.ajax({
                url: 'https://localhost:44344/api/SanPhams',
                success: function (response) {
                    let productList = $('#product')
                    productList.html('');

                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="DetailProduct.aspx?id=${item.id_san_pham}">

                                                    <img class="aspect__img" src="../Uploads/AnhSP/`+ getImageProduct(item.id_san_pham) + `" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a href="DetailProduct.aspx?id=${item.id_san_pham}" class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart" onclick="addProductToCart('`+ item.id_san_pham +`')">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart" >Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">
                                                    <a href="Products.aspx?id_danh_muc=${item.id_danh_muc}&id_thuong_hieu=${id_thuong_hieu}&min=${min}&max=${max}">` + getNameCategory(item.id_danh_muc) + `</a> <span>-</span> 
                                                    <a href="Products.aspx?id_danh_muc=${id_danh_muc}&id_thuong_hieu=${item.id_thuong_hieu}&min=${min}&max=${max}">` + getNameManufacturer(item.id_thuong_hieu) + `</a>
                                                </div>
                                                <div class="product-m__category">
                                                    
                                                </div>
                                                <div class="product-m__name">

                                                    <a href="DetailProduct.aspx?id=${item.id_san_pham}">`+ item.ten_san_pham + `</a></div>
                                                
                                                <div class="product-m__price">`+ formatMoney(item.gia_san_pham) + `VND</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>`+ getShortStr(item.mo_ta_san_pham) + `</span></div>
                                                    <div class="product-m__wishlist" onclick="addProductToWishlist('`+ item.id_san_pham +`')">

                                                        <a class="far fa-heart"  data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            `
                        ).appendTo(productList);
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }

    </script>

</asp:Content>
