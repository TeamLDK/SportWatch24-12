<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="Demo.Customer.EditProfile" %>
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

                                    <a href="dash-edit-profile.html">My Account</a></li>
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

                                        <span class="dash__text u-s-m-b-16">Hello, John Doe</span>
                                        <ul class="dash__f-list">
                                            <li>

                                                <a class="dash-active" href="Dashboard.aspx">My Profile</a></li>
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
                                <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white">
                                    <div class="dash__pad-2">
                                        <h1 class="dash__h1 u-s-m-b-14">Edit Profile</h1>

                                        <span class="dash__text u-s-m-b-30">Looks like you haven't update your profile</span>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="dash-edit-p">
                                                    <div class="gl-inline">
                                                        <div class="u-s-m-b-30">

                                                            <label class="gl-label" for="reg-fname">FULL NAME *</label>

                                                            <input class="input-text input-text--primary-style" type="text" id="reg-fname" placeholder="Enter full name..."></div>
                                                    </div>
                                                    <div class="gl-inline">
                                                        <div class="u-s-m-b-30">

                                                            <!--====== Date of Birth Select-Box ======-->

                                                            <span class="gl-label">BIRTHDAY</span>
                                                            <div class="gl-dob"><select class="select-box select-box--primary-style">
                                                                    <option selected>Month</option>
                                                                    <option value="male">January</option>
                                                                    <option value="male">February</option>
                                                                    <option value="male">March</option>
                                                                    <option value="male">April</option>
                                                                </select><select class="select-box select-box--primary-style">
                                                                    <option selected>Day</option>
                                                                    <option value="01">01</option>
                                                                    <option value="02">02</option>
                                                                    <option value="03">03</option>
                                                                    <option value="04">04</option>
                                                                </select><select class="select-box select-box--primary-style">
                                                                    <option selected>Year</option>
                                                                    <option value="1991">1991</option>
                                                                    <option value="1992">1992</option>
                                                                    <option value="1993">1993</option>
                                                                    <option value="1994">1994</option>
                                                                </select></div>
                                                            <!--====== End - Date of Birth Select-Box ======-->
                                                        </div>
                                                    </div>
                                                    <div class="gl-inline">
                                                        <div class="u-s-m-b-30">
                                                            <label class="gl-label" for="reg-phone">PHONE *</label>

                                                            <input class="input-text input-text--primary-style" id="reg-phone" type="text"  placeholder="Enter your phone..."></div>
                                                        <div class="u-s-m-b-30">
                                                            <label class="gl-label" for="reg-email">EMAIL *</label>

                                                            <input class="input-text input-text--primary-style" id="reg-email" type="text"  placeholder="Enter your email..."></div>
                                                        
                                                    </div>
                                                    <div class="gl-inline">
                                                        <div class="u-s-m-b-30">
                                                            <label class="gl-label" for="reg-address">ADDRESS *</label>

                                                            <input class="input-text input-text--primary-style" id="reg-address" type="text"  placeholder="Enter your address..."></div>
                                                        
                                                        
                                                    </div>

                                                    <button class="btn btn--e-brand-b-2" >SAVE</button>
                                                </div>
                                            </div>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
