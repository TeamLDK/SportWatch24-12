<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="Demo.Customer.Wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <!--====== App Content ======-->
    <div class="app-content">

        <!--====== Section 1 ======-->
        <div class="u-s-p-y-60">

            <!--====== Section Content ======-->
            <div class="section__content">
                <div class="container">
                    <div class="breadcrumb">
                        <div class="breadcrumb__wrap">
                            <ul class="breadcrumb__list">
                                <li class="has-separator">

                                    <a href="index.html">Home</a></li>
                                <li class="is-marked">

                                    <a href="wishlist.html">Wishlist</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section 1 ======-->


        <!--====== Section 2 ======-->
        <div class="u-s-p-b-60">

            <!--====== Section Intro ======-->
            <div class="section__intro u-s-m-b-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section__text-wrap">
                                <h1 class="section__heading u-c-secondary">Wishlist</h1>
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
                        <div class="col-lg-12 col-md-12 col-sm-12" id="wishList">

                            <!--====== Wishlist Product ======-->

                        </div>
                        <div class="col-lg-12">
                            <div class="route-box">
                                <div class="route-box__g">

                                    <a class="route-box__link" href="Index.aspx"><i class="fas fa-long-arrow-alt-left"></i>

                                        <span>CONTINUE SHOPPING</span></a></div>
                                <div class="route-box__g" onclick="clearWishlist()">

                                    <a class="route-box__link" href="#"><i class="fas fa-trash"></i>

                                        <span>CLEAR WISHLIST</span></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--====== End - Section Content ======-->
        </div>
        <!--====== End - Section 2 ======-->
    </div>
    <!--====== End - App Content ======-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        $(document).ready(function () {
            let item = localStorage.getItem('inforUser');
            if (item != null) {
                getWishList(item);
            }
        });
        getWishList = (id_kh) => {
            let urlStr = `https://localhost:44344/api/Wishlists?id_kh=` + id_kh;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let wishL = $('#wishList');
                    wishL.html('');
                    let gia = 0;
                    let tinh_gia = 0;
                    let gia_KM = 0;
                    $.each(response, function (_, item) {
                        let product = getSigleProduct(item.id_san_pham);
                        gia = formatMoney(parseFloat(product.gia_san_pham));
                        tinh_gia = parseFloat(product.gia_san_pham) - (parseFloat(product.gia_san_pham) / 100 * parseFloat(product.phan_tram_khuyen_mai));
                        gia_KM = formatMoney(tinh_gia);
                        $(
                            `
                                <div class="w-r u-s-m-b-30">
                                <div class="w-r__container">
                                    <div class="w-r__wrap-1">
                                        <div class="w-r__img-wrap">

                                            <img class="u-img-fluid" src="../Uploads/AnhSP/`+ getImageProduct(product.id_san_pham) + `" alt=""></div>
                                        <div class="w-r__info">

                                            <span class="w-r__name">

                                                <a href="DetailProduct.aspx?id=${item.id_san_pham}">`+ product.ten_san_pham +`</a></span>

                                            <span class="w-r__category">

                                                <a href="Products.aspx?id_danh_muc=${product.id_danh_muc}">` + getNameCategory(product.id_danh_muc) + `</a> <span>-</span> 
                                                    <a href="Products.aspx?id_thuong_hieu=${product.id_thuong_hieu}">` + getNameManufacturer(product.id_thuong_hieu) + `</a>

                                            <span class="w-r__price">`+ gia_KM+` VND

                                                <span class="w-r__discount">`+ gia+` VND</span></span></div>
                                    </div>
                                    <div class="w-r__wrap-2">

                                        <a class="w-r__link btn--e-brand-b-2" data-modal="modal" data-modal-id="#add-to-cart" onclick="addProductToCart('`+ item.id_san_pham+`')">ADD TO CART</a>

                                        <a class="w-r__link btn--e-transparent-platinum-b-2" href="DetailProduct.aspx?id=${item.id_san_pham}">VIEW</a>

                                        <a class="w-r__link btn--e-transparent-platinum-b-2" onClick="deleteProductOnWishlist('`+ id_kh +`','`+item.id_san_pham+`')">REMOVE</a></div>
                                </div>
                            </div>
                            `
                        ).appendTo(wishL);
                    })
                },
                error: function (error) {
                    alert('Lay wishlist that bai');
                    console.error(error)
                }
            });
        }

        clearWishlist = () => {
            let id_kh = localStorage.getItem('inforUser');
            if (id_kh == null) return;
            let urlStr = `https://localhost:44344/api/Wishlists?id_kh=` + id_kh;
            $.ajax({
                type: 'DELETE',
                url: urlStr,
                crossDomain: true,
                success: function (response) {
                    document.location.reload();
                },
                error: function (error) {
                    console.error(error)
                }
            });
        }
    </script>
</asp:Content>
