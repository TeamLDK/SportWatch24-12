<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Demo.Customer.Dashboard" %>
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

                                    <a href="dashboard.html">My Account</a></li>
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

                                        <span class="dash__text u-s-m-b-16" id="lb-hello-name">Hello, John Doe</span>
                                        <ul class="dash__f-list">
                                            <li>

                                                <a class="dash-active" href="dashboard.aspx">My Profile</a></li>
                                            <li>

                                                <a href="MyOrders.aspx">My Orders</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="dash__box dash__box--bg-white dash__box--shadow dash__box--w">
                                    <div class="dash__pad-1">
                                        <ul class="dash__w-list">
                                            <li>
                                                <div class="dash__w-wrap">

                                                    <span class="dash__w-icon dash__w-icon-style-1"><i class="fas fa-cart-arrow-down"></i></span>

                                                    <span class="dash__w-text">4</span>

                                                    <span class="dash__w-name">Orders Placed</span></div>
                                            </li>
                                            <li>
                                                <div class="dash__w-wrap">

                                                    <span class="dash__w-icon dash__w-icon-style-3"><i class="far fa-heart"></i></span>

                                                    <span class="dash__w-text">0</span>

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
                                            <h1 class="dash__h1 u-s-m-b-14">My Profile</h1>
                                            <div class="row" style="margin-top:40px;">
                                                <div class="col-lg-4 u-s-m-b-30">
                                                    <h2 class="dash__h2 u-s-m-b-8">Full Name</h2>

                                                    <span class="dash__text" id="full-name-customer">John Doe</span>
                                                </div>
                                                <div class="col-lg-4 u-s-m-b-30">
                                                    <h2 class="dash__h2 u-s-m-b-8">E-mail</h2>

                                                    <span class="dash__text" id="email-customer">johndoe@domain.com</span>
                                                    <div class="dash__link dash__link--secondary"></div>
                                                </div>
                                                <div class="col-lg-4 u-s-m-b-30">
                                                    <h2 class="dash__h2 u-s-m-b-8">Phone</h2>

                                                    <span class="dash__text" id="phone-numble-customer">Please enter your mobile</span>
                                                    <div class="dash__link dash__link--secondary"></div>
                                                </div>
                                                <div class="col-lg-4 u-s-m-b-30">
                                                    <h2 class="dash__h2 u-s-m-b-8">Birthday</h2>

                                                    <span class="dash__text" id="birthday-customer">1991-02-02</span>
                                                </div>
                                                <div class="col-lg-4 u-s-m-b-30">
                                                    <h2 class="dash__h2 u-s-m-b-8">Address</h2>

                                                    <span class="dash__text" id="address-customer">Eminem - Venom</span>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="u-s-m-b-16">

                                                        <a class="dash__custom-link btn--e-transparent-brand-b-2" href="EditProfile.aspx">Edit Profile</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <div class="dash__box dash__box--shadow dash__box--bg-white dash__box--radius">
                                    <h2 class="dash__h2 u-s-p-xy-20">RECENT ORDERS</h2>
                                    <div class="dash__table-wrap gl-scroll">
                                        <table class="dash__table">
                                            <thead>
                                                <tr>
                                                    <th>Order #</th>
                                                    <th>Placed On</th>
                                                    <th>Items</th>
                                                    <th>Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3054231326</td>
                                                    <td>26/13/2016</td>
                                                    <td>
                                                        <div class="dash__table-img-wrap">

                                                            <img class="u-img-fluid" src="images/product/electronic/product3.jpg" alt=""></div>
                                                    </td>
                                                    <td>
                                                        <div class="dash__table-total">

                                                            <span>$126.00</span>
                                                            <div class="dash__link dash__link--brand"></div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3054231326</td>
                                                    <td>26/13/2016</td>
                                                    <td>
                                                        <div class="dash__table-img-wrap">

                                                            <img class="u-img-fluid" src="images/product/electronic/product14.jpg" alt=""></div>
                                                    </td>
                                                    <td>
                                                        <div class="dash__table-total">

                                                            <span>$126.00</span>
                                                            <div class="dash__link dash__link--brand"></div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3054231326</td>
                                                    <td>26/13/2016</td>
                                                    <td>
                                                        <div class="dash__table-img-wrap">

                                                            <img class="u-img-fluid" src="images/product/men/product8.jpg" alt=""></div>
                                                    </td>
                                                    <td>
                                                        <div class="dash__table-total">

                                                            <span>$126.00</span>
                                                            <div class="dash__link dash__link--brand"></div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3054231326</td>
                                                    <td>26/13/2016</td>
                                                    <td>
                                                        <div class="dash__table-img-wrap">

                                                            <img class="u-img-fluid" src="images/product/women/product10.jpg" alt=""></div>
                                                    </td>
                                                    <td>
                                                        <div class="dash__table-total">

                                                            <span>$126.00</span>
                                                            <div class="dash__link dash__link--brand"></div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
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
        $(document).ready(function () {
            let item = localStorage.getItem('inforUser');
            if (item != null) {
                getInforCustomer(item);
            }
            else {
                alert('false');
            }
            
        });

        getInforCustomer = (id_kh) => {
            let urlStr = `https://localhost:44344/api/KhachHangs/` + id_kh;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    //lb-hello-name
                    //full-name-customer
                    //email-customer
                    //phone-numble-customer
                    //birthday-customer
                    //address-customer
                    $('#lb-hello-name').text('Hello, ' + response.ten_kh);
                    $('#full-name-customer').text(response.ten_kh);
                    $('#email-customer').text(response.email_kh);
                    $('#phone-numble-customer').text(response.sdt_kh);
                    $('#birthday-customer').text('02-08-2000');
                    $('#address-customer').text(response.dia_chi_kh);
                },
                error: function (error) {
                    alert('error');
                    console.error(error)
                }
            });
        }
    </script>

</asp:Content>
