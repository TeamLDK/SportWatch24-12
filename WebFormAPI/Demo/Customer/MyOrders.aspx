<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Demo.Customer.MyOders" %>
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

                                    <a href="Index.aspx">Home</a></li>
                                <li class="is-marked">

                                    <a href="dash-my-order.html">My Account</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section 1 ======-->


        <!--====== Section 2 ======-->
        <div class="u-s-p-b-60">

            <!--====== Section Content ======-->
            <div class="section__content">
                <div class="dash">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-12">

                                <!--====== Dashboard Features ======-->
                                <div class="dash__box dash__box--bg-white dash__box--shadow u-s-m-b-30">
                                    <div class="dash__pad-1">

                                        <span class="dash__text u-s-m-b-16" id="ten_khach_hang"></span>
                                        <ul class="dash__f-list">
                                            <li>

                                                <a href="Dashboard.aspx">My Profile</a></li>
                                            <li>

                                                <a class="dash-active" >My Orders</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="dash__box dash__box--bg-white dash__box--shadow dash__box--w">
                                    <div class="dash__pad-1">
                                        <ul class="dash__w-list">
                                            <li>
                                                <div class="dash__w-wrap">

                                                    <span class="dash__w-icon dash__w-icon-style-1"><i class="fas fa-cart-arrow-down"></i></span>

                                                    <span class="dash__w-text" id="indexorderHoaoDon"></span>

                                                    <span class="dash__w-name">Orders Placed</span></div>
                                            </li>
                                            <li>
                                                <div class="dash__w-wrap">

                                                    <span class="dash__w-icon dash__w-icon-style-3"><i class="far fa-heart"></i></span>

                                                    <span class="dash__w-text" id="num-wishlist">0</span>

                                                    <span class="dash__w-name">Wishlist</span></div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!--====== End - Dashboard Features ======-->
                            </div>
                            <div class="col-lg-9 col-md-12">
                                <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white u-s-m-b-30">
                                    <div class="dash__pad-2">
                                        <h1 class="dash__h1 u-s-m-b-14">My Orders</h1>

                                        <div class="m-order__list" id="orderHoaDon">
                                            
                                        </div>
                                    </div>
                                </div>
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
        var listKhachHang = []
        var listHoaDon = []
        var listChiTietHoaDon = []
        var listSanPham = []
        var listImagerSanPham = []
        $(document).ready(function () {
            let item = localStorage.getItem('inforUser');
            if (item != null) {
                getInforKhachHang(item);
                getInforHoaDon(item);
                getNumWishlist(item);
            }
            else {
                window.location = "Login.aspx";
            }
            
        });



        getInforKhachHang = (id_kh) => {
            let urlStr = `https://localhost:44344/api/KhachHangs/` + id_kh;
            $.ajax({
                url: urlStr,
                async : false,
                success: function (response) {
                    listKhachHang = response;
                    console.log("listKhachHang", listKhachHang);
                    $("#ten_khach_hang").text('Hello, ' + listKhachHang.ten_kh);
                },
                error: function (error) {
                    console.error(error)
                }
            });
        }
        getInforHoaDon = (id_kh) => {
            let urlStr = `https://localhost:44344/api/HoaDons?id_kh=` + id_kh;
            $.ajax({
                url: urlStr,
                async : false,
                success: function (response) {
                    if (response == null) {
                    }
                    else {
                        listHoaDon = response;
                        console.log("listHoaDon", listHoaDon);
                        let txtconstOrder = $('#indexorderHoaoDon');
                        let constOrder = 0;
                        let orderHoaDon = $('#orderHoaDon');
                        $.each(listHoaDon, function (_, item) {
                            constOrder++;
                            $(`
                            <div class="m-order__get" id="ct`+ item.id_hoa_don +`">
                                <div class="manage-o__header u-s-m-b-30">
                                    <div class="dash-l-r">
                                        <div>
                                            <div class="manage-o__text-2 u-c-secondary">Mã #`+ item.id_hoa_don + `</div>
                                            <div class="manage-o__text u-c-silver">Ngày mua `+ getStrDate(item.ngay_hoa_don) + `</div>
                                        </div>
                                        <div>
                                            <div class="dash__link dash__link--brand"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>`
                            ).appendTo(orderHoaDon);
                            getInforChiTietHoaDon(item.id_hoa_don);
                        })

                        $(`
                            <span>`+ constOrder + `</span>
                            `).appendTo(txtconstOrder);
                    }},
                error: function (error) {
                    console.error(error)
                }
            });
        }

        getInforChiTietHoaDon = (idHoaDon) => {
            let urlStr = `https://localhost:44344/api/ChiTietHoaDons/` + idHoaDon;
            $.ajax({
                url: urlStr,
                async : false,
                success: function (response) {
                    if (response == null) {
                    }
                    else {
                        listChiTietHoaDon = response;
                        console.log("listChiTietHoaDon", listChiTietHoaDon);

                        let chi_tiet_hoa_don = $('#ct' + idHoaDon);
                        $.each(listChiTietHoaDon, function (_, item) {
                            let product = getSigleProduct(item.id_san_pham);
                            $(`
                                <div class="manage-o__description">
                                    <div class="description__container" >
                                        <div class="description__img-wrap">
                                            <img class="u-img-fluid" src="../Uploads/AnhSP/`+ getImageProduct(product.id_san_pham) + `" alt=""></div>
                                        <div class="description-title" id="ten_san_pham">`+ product.ten_san_pham + `</div>
                                    </div>
                                    <div class="description__info-wrap">
                                        <div>
                                            <span class="manage-o__text-2 u-c-silver">Số lượng:

                                                <span class="manage-o__text-2 u-c-secondary">`+ item.so_luong + `</span></span></div>
                                        <div>

                                            <span class="manage-o__text-2 u-c-silver">Tổng tiền:

                                                <span class="manage-o__text-2 u-c-secondary">`+ formatMoney(item.so_luong * product.gia_san_pham) + ` VND</span></span></div>
                                    </div>
                                    
                                </div>
                                        </br>
                                        </div>` 
                            ).appendTo(chi_tiet_hoa_don);

                        })
                    }
                },
                error: function (error) {
                    console.error(error)
                }
            });
        }

        getNumWishlist = (idKhachHang) => {
            let urlStr = `https://localhost:44344/api/Wishlists?id_kh=` + idKhachHang;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let $numWishlist = $("#num-wishlist");
                    let num = 0;
                    $.each(response, function (_, item) {
                        num++;
                    })
                    $numWishlist.text(num);
                },
                error: function (error) {
                    console.error(error)
                }
            });
        }
    </script>

</asp:Content>
