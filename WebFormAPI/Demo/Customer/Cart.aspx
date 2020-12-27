<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Demo.Customer.Cart" %>
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

                                    <a href="Cart.aspx">Cart</a></li>
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
                                <h1 class="section__heading u-c-secondary">SHOPPING CART</h1>
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
                        <div class="col-lg-12 col-md-12 col-sm-12 u-s-m-b-30">
                            <div class="table-responsive" >
                                <table class="table-p" >

                                    <tbody id="gio-hang123">
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="route-box">
                                <div class="route-box__g1">

                                    <a class="route-box__link" href="Index.aspx"><i class="fas fa-long-arrow-alt-left"></i>

                                        <span>CONTINUE SHOPPING</span></a></div>
                                <div class="route-box__g2">

                                    <a class="route-box__link" href="Cart.aspx" onclick="clearCart()"><i class="fas fa-trash"></i>

                                        <span>CLEAR CART</span></a>

                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--====== End - Section Content ======-->
        </div>
        <!--====== End - Section 2 ======-->


        <!--====== Section 3 ======-->
        <div class="u-s-p-b-60">

            <!--====== Section Content ======-->
            <div class="section__content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 u-s-m-b-30">
                            <div class="f-cart">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 u-s-m-b-30" style="margin:auto">
                                        <div class="f-cart__pad-box">
                                            <div class="u-s-m-b-30">
                                                <table class="f-cart__table">
                                                    <tbody>
                                                        <tr>
                                                            <td>GRAND TOTAL</td>
                                                            <td id="total-money">$379.00</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div>

                                                <button class="btn btn--e-brand-b-2" type="button" > <a style="color:white;" href="Checkout.aspx">PROCEED TO CHECKOUT</a></button></div>
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
        <!--====== End - Section 3 ======-->
    </div>
    <!--====== End - App Content ======-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        $(document).ready(function () {
            let item = localStorage.getItem('inforUser');
            if (item != null) {
                getCart(item);

            }
        });
        getCart = (id_kh) => {
            let urlStr = `https://localhost:44344/api/GioHangs?id_kh=` + id_kh;
            $.ajax({
                async: true,
                url: urlStr,
                success: function (response) {
                    let gioHang = $('#gio-hang123');
                    gioHang.html('');
                    let sum = 0;
                    $.each(response, function (_, item) {
                        let product = getSigleProduct(item.id_san_pham);
                        let num = item.so_luong;
                        tinh_gia = parseFloat(product.gia_san_pham) - (parseFloat(product.gia_san_pham) / 100 * parseFloat(product.phan_tram_khuyen_mai));
                        gia_KM = formatMoney(tinh_gia * item.so_luong);
                        console.log(product);
                        $(
                            ` 
                                 <tr>
                                    <td>
                                        <div class="table-p__box">
                                            <div class="table-p__img-wrap">

                                                <img class="u-img-fluid" src="../Uploads/AnhSP/`+ getImageProduct(product.id_san_pham) + `" alt=""></div>
                                            <div class="table-p__info">

                                                <span class="table-p__name">

                                                    <a href="DetailProduct?id=$(`+ item.id_san_pham + `)">` + product.ten_san_pham + `</a></span>

                                                <span class="table-p__category">

                                                    <a href="shop-side-version-2.html">`+ getNameManufacturer(product.id_thuong_hieu) + `</a></span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>

                                        <span class="table-p__price" id="price-`+ item.id_san_pham + `" price="` + tinh_gia + `" sumprice="` + tinh_gia * item.so_luong+`">`+ gia_KM + `</span></td>
                                    <td>
                                        <div class="table-p__input-counter-wrap">

                                            <!--====== Input Counter ======-->
                                            <div class="input-counter">

                                                <span class="input-counter__minus fas fa-minus" onclick="subClick('`+ item.id_san_pham +`')"></span>

                                                <input class="input-counter__text input-counter--text-primary-style" type="text" id="`+ item.id_san_pham +`" value="`+ num + `" data-min="1" data-max="1000">

                                                <span class="input-counter__plus fas fa-plus" onclick="addClick('`+ item.id_san_pham +`')"></span></div>
                                            <!--====== End - Input Counter ======-->
                                        </div>
                                    </td>
                                    <td>
                                        <div class="table-p__del-wrap">

                                            <a class="far fa-trash-alt table-p__delete-link" onclick="delAItemInCart('`+ item.id_san_pham+`')"></a></div>
                                    </td>
                                </tr>
                            `
                        ).appendTo(gioHang);
                        sum += tinh_gia * parseFloat(item.so_luong);
                    })
                    $('#total-money').text(formatMoney(sum) + ' VND');

                },
                error: function (error) {
                    alert('Lay gio hang that bai');
                    console.error(error)
                }
            });
        }

        subClick = (id) => {
            let fVal = $('#' + id).val();
            if (fVal != 0) {
                $('#' + id).val(fVal - 1);
                setNumProductInCart(id, fVal - 1);
                setPrice(id);
                if (fVal - 1 == 0) {
                    delAItemInCart(id);
                }
            }
        }
        addClick = (id) => {
            let fVal = $('#' + id).val();
            if (fVal < 1000) {
                $('#' + id).val(parseInt(fVal) + 1);
                setNumProductInCart(id, parseInt(fVal) + 1);
                setPrice(id);
            }
        }

        setNumProductInCart = (id_sp, num) => {
            let id_kh = localStorage.getItem('inforUser');
            if (id_kh == null) {
                return;
            }
            let urlStr = `https://localhost:44344/api/GioHangs?id_kh=` + id_kh + `&id_sp=` + id_sp;
            $.ajax({
                type: 'PUT',
                url: urlStr,
                data: {
                    "so_luong": num
                },
                success: function (response) {
                    console.log('ok');
                },
                error: function (error) {
                    console.error(error);
                }
            });
        }

        delAItemInCart = (id_sp) => {
            let id_kh = localStorage.getItem('inforUser');
            if (id_kh == null) {
                return;
            }
            let urlStr = `https://localhost:44344/api/GioHangs?id_kh=` + id_kh + `&id_product=` + id_sp;
            $.ajax({
                type: 'DELETE',
                url: urlStr,
                success: function (response) {
                    document.location.reload();
                },
                error: function (error) {
                    console.error(error)
                }
            });
        }
        clearCart = () => {
            let id_kh = localStorage.getItem('inforUser');
            if (id_kh == null) return;
            let urlStr = `https://localhost:44344/api/GioHangs?id_kh=` + id_kh +`&id_product=`;
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


        setValLabel = () => {
            let sum = 0;
            $('.table-p__price').each(function () {
                let num = $(this).attr('sumprice');
                sum += parseFloat(num);
            });
            $('#total-money').text(formatMoney(sum) + ' VND');
        }

        setPrice = (id) => {
            let so_luong = $('#' + id).val();
            let gia = $('#price-' + id).attr('price');
            $('#price-' + id).text(formatMoney(so_luong * gia));
            //sumprice
            $('#price-' + id).attr('sumprice', so_luong * gia);
            setValLabel();
        }
    </script>
</asp:Content>
