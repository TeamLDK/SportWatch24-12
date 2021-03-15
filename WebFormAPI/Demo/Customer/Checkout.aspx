<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Demo.Customer.Checkout" %>
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

                                    <a href="Checkout.aspx">Checkout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section 1 ======-->


        
        <!--====== End - Section 2 ======-->


        <!--====== Section 3 ======-->
        <div class="u-s-p-b-60">

            <!--====== Section Content ======-->
            <div class="section__content">
                <div class="container">
                    <div class="checkout-f">
                        <div class="row">
                            <div class="col-lg-6">
                                <h1 class="checkout-f__h1">DELIVERY INFORMATION</h1>
                                <form class="checkout-f__delivery">
                                    <div class="u-s-m-b-30">

                                        <!--====== First Name, Last Name ======-->
                                        <div class="gl-inline">
                                            <div class="u-s-m-b-15">

                                                <label class="gl-label" for="billing-fname">FULL NAME *</label>

                                                <input class="input-text input-text--primary-style" type="text" id="billing-fname" placeholder="Your full name" data-bill=""></div>
                                        </div>
                                        <!--====== End - First Name, Last Name ======-->


                                        <!--====== E-MAIL ======-->
                                        <div class="u-s-m-b-15">

                                            <label class="gl-label" for="billing-email">E-MAIL *</label>

                                            <input class="input-text input-text--primary-style" type="text" id="billing-email" placeholder="Your email" data-bill=""></div>
                                        <!--====== End - E-MAIL ======-->


                                        <!--====== PHONE ======-->
                                        <div class="u-s-m-b-15">

                                            <label class="gl-label" for="billing-phone">PHONE *</label>

                                            <input class="input-text input-text--primary-style" type="text" id="billing-phone" placeholder="Your phone numble" data-bill=""></div>
                                        <!--====== End - PHONE ======-->


                                        <!--====== Street Address ======-->
                                        <div class="u-s-m-b-15">

                                            <label class="gl-label" for="billing-address">FULL ADDRESS *</label>

                                            <input class="input-text input-text--primary-style" type="text" id="billing-address" placeholder="Your full detail address" data-bill="">

                                        </div>
                                       
                                        <!--====== End - Street Address ======-->


                                        
                                        <div class="collapse u-s-m-b-15" id="create-account">

                                            <span class="gl-text u-s-m-b-15">Create an account by entering the information below. If you are a returning customer please login at the top of the page.</span>
                                            <div>

                                                <label class="gl-label" for="reg-password">Account Password *</label>

                                                <input class="input-text input-text--primary-style" type="text" data-bill id="reg-password"></div>
                                        </div>
                                        <div class="u-s-m-b-10">

                                            <label class="gl-label" for="order-note">ORDER NOTE</label><textarea class="text-area text-area--primary-style" id="order-note"></textarea></div>
                                        <div>

                                            </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-lg-6">
                                <h1 class="checkout-f__h1">ORDER SUMMARY</h1>

                                <!--====== Order Summary ======-->
                                <div class="o-summary">
                                    <div class="o-summary__section u-s-m-b-30">
                                        <div class="o-summary__item-wrap gl-scroll" id="selected-products">
                                            
                                            
                                        </div>
                                    </div>
                                    <div class="o-summary__section u-s-m-b-30">
                                        <div class="o-summary__box">
                                            <table class="o-summary__table">
                                                <tbody >
                                                    <tr>
                                                        <td>SHIPPING</td>
                                                        <td id="money-ship" >0.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>TAX</td>
                                                        <td>0.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>SUBTOTAL</td>
                                                        <td id="money-order" >00.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>GRAND TOTAL</td>
                                                        <td id="total-order">00.00</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="o-summary__section u-s-m-b-30">
                                        <div class="o-summary__box">
                                            <h1 class="checkout-f__h1">ĐƠN VỊ VẬN CHUYỂN</h1>
                                            <div class="checkout-f__payment">

                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--====== End - Order Summary ======-->
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
                getInfoClient(item);
                getShippingUnit();
                getGioHangInCheckOut(item);
            }
        });
        // Lấy thông tin client
        getInfoClient = (id_kh) => {
            let urlStr = "https://localhost:44344/api/KhachHangs/" + id_kh;
            $.ajax({
                url: urlStr,
                success: function (detail) {
                    $('#billing-fname').val(detail.ten_kh);
                    $('#billing-email').val(detail.email_kh);
                    $('#billing-phone').val(detail.sdt_kh);
                    $('#billing-address').val(detail.dia_chi_kh);
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }
        // Lấy thông tin ship
        getShippingUnit = () => {
            $.ajax({
                url: 'https://localhost:44344/api/VanChuyens',
                success: function (response) {
                    let ShippingUnit = $('.checkout-f__payment');
                    ShippingUnit.html('');
                    let moneyShip = 0;
                    $.each(response, function (_, item) {  
                        $(
                            `
                                <div class="u-s-m-b-10">
                                    <!--====== Radio Box ======-->
                                    <div class="radio-box">

                                        <input type="radio" id="shipper" value="`+ item.phi_van_chuyen + `" name="payment" onclick="getCheckShipper();" id_ship="` + item.id_don_vi_van_chuyen +`">
                                        <div class="radio-box__state radio-box__state--primary">

                                            <label class="radio-box__label" for="cash-on-delivery">`+ item.ten_don_vi_van_chuyen + `</label></div>
                                    </div>
                                    <!--====== End - Radio Box ======-->

                                    <span class="gl-text u-s-m-t-6" style ="margin-left:20px;">`+ item.sdt_don_vi_van_chuyen + ` - ` + item.email_don_vi_van_chuyen + `</span>
                                </div>
                            `
                        ).appendTo(ShippingUnit)
                    })
                    $(`
                        <div>
                            <button class="btn btn--e-brand-b-2" onclick="addBill()" >PLACE ORDER</button></div>`).appendTo(ShippingUnit)

                    $('#money-ship').attr('tienS', 0);


                },
                error: function (error) {
                    console.error(error)
                }
            });
        }

        // View sản phẩm
        getGioHangInCheckOut = (id_kh) => {
            let urlStr = `https://localhost:44344/api/GioHangs?id_kh=` + id_kh;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let listHang = $('#selected-products');
                    listHang.html('');
                    let moneyOrder = 0;
                    let moneyShip = 0;
                    $.each(response, function (_, item) {
                        let product = getSigleProduct(item.id_san_pham);
                        gia = formatMoney(parseFloat(product.gia_san_pham));
                        tinh_gia = parseFloat(product.gia_san_pham) - (parseFloat(product.gia_san_pham) / 100 * parseFloat(product.phan_tram_khuyen_mai));
                        gia_KM = formatMoney(tinh_gia);
                        $(
                            `
                            <div class="o-card">
                                <div class="o-card__flex">
                                    <div class="o-card__img-wrap">

                                        <img class="u-img-fluid" src="../Uploads/AnhSP/`+ getImageProduct(product.id_san_pham) + `" alt=""></div>
                                    <div class="o-card__info-wrap">

                                        <span class="o-card__name">

                                            <a href="product-detail.html">`+ product.ten_san_pham +`</a></span>

                                        <span class="o-card__quantity">Quantity x `+ item.so_luong +`</span>

                                        <span class="o-card__price">`+ gia_KM +` VND</span></div>
                                </div>

                                <a class="o-card__del far fa-trash-alt" onclick="deleteProductOnCart('`+ id_kh + `','` + product.id_san_pham+`')"></a>
                            </div>
                            `
                        ).appendTo(listHang);
                        moneyOrder += tinh_gia * parseFloat(item.so_luong);
                    })
                    $('#money-order').text(formatMoney(moneyOrder) + ' VND'); // Hiển thị tổng tiền các sản phẩm
                    console.log(moneyOrder)
                    let totalOrder = moneyShip + moneyOrder;
                    $('#total-order').text(formatMoney(totalOrder) + ' VND');  // Tổng tiền hoá đơn
                },
                error: function (error) {
                    alert('Lay gio hang that bai');
                    console.error(error)
                }
            });
        }

        // Kiểm tra check ship
        getCheckShipper = () => {
            var checkbox = $('[name=payment]');
            for (var i = 0; i < checkbox.length; i++) {
                if (checkbox[i].checked === true) {
                    $('#money-ship').html(formatMoney(checkbox[i].value) + " VND");
                    let moneyShip = parseFloat($('#money-ship').html().replaceAll(',', ''))
                    let moneyOrder = parseFloat($('#money-order').html().replaceAll(',', ''))
                    let totalOrder = moneyOrder + moneyShip;
                    $('#total-order').text(formatMoney(totalOrder) + ' VND');  // Tổng tiền hoá đơn
                    
                }
            }
        }
        // Lấy id của shipper checked
        getIdShip = () => {
            var selectedVal = "";
            var selected = $("input[type='radio'][name='payment']:checked");
            if (selected.length > 0) {
                selectedVal = selected.attr('id_ship');
            }
            else {
                alert('vui lòng chọn đơn vị vận chuyển!');
            }
            return selectedVal;
        }
        // Add hoá đơn
        addBill = () => {
            let id_user = localStorage.getItem('inforUser');
            let id_ship = getIdShip();
            let ghi_chu = $("#order-note").val();
            if (id_ship == '') {
                return;
            }
            if (id_user != null) {
                $.ajax({
                    type: "POST",
                    async: false,
                    url: 'https://localhost:44344/api/HoaDons',
                    data: {
                        "id_kh": id_user,
                        "id_don_vi_van_chuyen": id_ship ,
                        "ghi_chu_giao_hang": ghi_chu ,
                    },
                    success: function (response) {
                        addDetailBill(response.id_hoa_don)
                    },
                    error: function (error) {
                        console.error(error);
                    }
                })
            }
            else {
                window.location = "Login.aspx";
            }
        }
        // Add chi tiết hoá đơn
        addDetailBill = (id_hd) => { 
            let id_kh = localStorage.getItem('inforUser');
            let urlStr = `https://localhost:44344/api/GioHangs?id_kh=` + id_kh;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    if (response == '') {
                        alert('Vui lòng thêm sản phẩm vào giỏ hàng trước khi thanh toán');
                        window.location = "Products.aspx";
                    }
                    $.each(response, function (_, item) {
                        $.ajax({
                            type: "POST",
                            url: 'https://localhost:44344/api/ChiTietHoaDons',
                            data: {
                                "id_hoa_don": id_hd,
                                "id_san_pham": item.id_san_pham,
                                "so_luong": item.so_luong,
                            },
                            success: function (response) {
                                alert('Thêm hoá đơn thành công!');

                                window.location = 'Index.aspx';
                            },
                            error: function (error) {
                                console.error(error);
                                alert('Một số sản phẩm đã hết hàng nên ko thể thanh toán!');
                                document.location.reload();
                            }
                        })
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            });
        }
    </script>
</asp:Content>
