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
                                                            <div class="gl-dob"><select class="select-box select-box--primary-style" id="select_ngay">
                                                                    <option selected>Day</option>
                                                        <option value="01">01</option>
                                                        <option value="02">02</option>
                                                        <option value="03">03</option>
                                                        <option value="04">04</option>
                                                        <option value="05">05</option>
                                                        <option value="06">06</option>
                                                        <option value="07">07</option>
                                                        <option value="08">08</option>
                                                        <option value="09">09</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                        <option value="31">31</option>
                                                                </select><select class="select-box select-box--primary-style" id="select_thang">
                                                                    <option selected>Month</option>
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                    <option value="6">6</option>
                                                                    <option value="7">7</option>
                                                                    <option value="8">8</option>
                                                                    <option value="9">9</option>
                                                                    <option value="10">10</option>
                                                                    <option value="11">11</option>
                                                                    <option value="12">12</option>
                                                                </select><select class="select-box select-box--primary-style" id="select_nam">
                                                                    <option selected>Year</option>
                                                        <option value="1991">1991</option>
                                                        <option value="1992">1992</option>
                                                        <option value="1993">1993</option>
                                                        <option value="1994">1994</option>
                                                        <option value="1995">1995</option>
                                                        <option value="1996">1996</option>
                                                        <option value="1997">1997</option>
                                                        <option value="1998">1998</option>
                                                        <option value="1999">1999</option>
                                                        <option value="2000">2000</option>
                                                        <option value="2001">2001</option>
                                                        <option value="2002">2002</option>
                                                        <option value="2003">2003</option>
                                                        <option value="2004">2004</option>
                                                        <option value="2005">2005</option>
                                                        <option value="2006">2006</option>
                                                        <option value="2007">2007</option>
                                                        <option value="2008">2008</option>
                                                        <option value="2009">2009</option>
                                                        <option value="2010">2010</option>
                                                        <option value="2011">2011</option>
                                                        <option value="2012">2012</option>
                                                        <option value="2013">2013</option>
                                                        <option value="2014">2014</option>
                                                        <option value="2015">2015</option>
                                                        <option value="2016">2016</option>
                                                        <option value="2017">2017</option>
                                                        <option value="2018">2018</option>
                                                        <option value="2019">2019</option>
                                                        <option value="2020">2020</option>
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

                                                            <input class="input-text input-text--primary-style" id="reg-address" placeholder="Enter your address..."></div>
                                                        
                                                        
                                                    </div>

                                                    <input value="SAVE" class="btn btn--e-brand-b-2" type="button" onclick="editProfile()" />
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
    <script>
        $(document).ready(function () {
            let item = localStorage.getItem('inforUser');
            if (item != null) {
                getInforCustomer(item);
            }
            else {
                window.location = "Login.aspx";
            }
            
        });

        getInforCustomer = (id_kh) => {
            let urlStr = `https://localhost:44344/api/KhachHangs/` + id_kh;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    $('#reg-fname').val(response.ten_kh);
                    $('#reg-email').val(response.email_kh);
                    $('#reg-phone').val(response.sdt_kh);
                    $('#select_ngay').val('20');
                    $('#select_thang').val('2');
                    $('#select_nam').val('2000');
                    $('#reg-address').val(response.dia_chi_kh);
                },
                error: function (error) {
                    console.error(error)
                }
            });
        }

        editProfile = () => {
            let name = $('#reg-fname').val();
            let email = $('#reg-email').val();
            let phone = $('#reg-phone').val();
            let address = $('#reg-address').val();

            callUser(name, email, phone, address);
        }

        callUser = (name, email, phone, address) => {

            let re = confirm('Bạn có chắc muốn sửa ?');
            if (re == false) {
                return;
            }

            let item = localStorage.getItem('inforUser');

            if (item != null) {
                let urlStr = `https://localhost:44344/api/KhachHangs/` + item;
                $.ajax({
                    type: 'PUT',
                    url: urlStr,
                    data: {
                        "ten_kh": name,
                        "sdt_kh": email,
                        "email_kh": phone,
                        "dia_chi_kh": address
                    },
                    success: function (response) {
                        window.location = "Dashboard.aspx";
                    },
                    error: function (error) {
                        alert('Sửa thông tin thất bại!');
                        console.error(error);
                    }
                });
            }
            else {
                window.location = "Login.aspx";
                console.error('Pls login')
            }
        }
    </script>
</asp:Content>

