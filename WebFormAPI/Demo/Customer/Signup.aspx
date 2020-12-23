<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Demo.Customer.Signup" %>
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

                                    <a href="signup.html">Signup</a></li>
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
                                <h1 class="section__heading u-c-secondary">CREATE AN ACCOUNT</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--====== End - Section Intro ======-->


            <!--====== Section Content ======-->
            <div class="section__content">
                <div class="container">
                    <div class="row row--center">
                        <div class="col-lg-6 col-md-8 u-s-m-b-30">
                            <div class="l-f-o">
                                <div class="l-f-o__pad-box">
                                    <h1 class="gl-h1">PERSONAL INFORMATION</h1>
                                    <form class="l-f-o__form">
                                        <div class="u-s-m-b-30">

                                            <label class="gl-label" for="reg-fname">FULL NAME *</label>

                                            <input class="input-text input-text--primary-style" type="text" id="reg-fname" placeholder="Full Name"></div>
                                        <div class="gl-inline">
                                            <div class="u-s-m-b-30">

                                                <!--====== Date of Birth Select-Box ======-->

                                                <span class="gl-label">BIRTHDAY</span>
                                                <div class="gl-dob"><select class="select-box select-box--primary-style">
                                                        <option selected>Month</option>
                                                        <option value="male">1</option>
                                                        <option value="male">2</option>
                                                        <option value="male">3</option>
                                                        <option value="male">4</option>
                                                        <option value="male">5</option>
                                                        <option value="male">6</option>
                                                        <option value="male">7</option>
                                                        <option value="male">8</option>
                                                        <option value="male">9</option>
                                                        <option value="male">10</option>
                                                        <option value="male">11</option>
                                                        <option value="male">12</option>
                                                    </select><select class="select-box select-box--primary-style">
                                                        <option selected>Day</option>
                                                        <option value="01">01</option>
                                                        <option value="02">02</option>
                                                        <option value="03">03</option>
                                                        <option value="04">04</option>
                                                        <option value="04">05</option>
                                                        <option value="04">06</option>
                                                        <option value="04">07</option>
                                                        <option value="04">08</option>
                                                        <option value="04">09</option>
                                                        <option value="04">10</option>
                                                        <option value="04">11</option>
                                                        <option value="04">12</option>
                                                        <option value="04">13</option>
                                                        <option value="04">14</option>
                                                        <option value="04">15</option>
                                                        <option value="04">16</option>
                                                        <option value="04">17</option>
                                                        <option value="04">18</option>
                                                        <option value="04">19</option>
                                                        <option value="04">20</option>
                                                        <option value="04">21</option>
                                                        <option value="04">22</option>
                                                        <option value="04">23</option>
                                                        <option value="04">24</option>
                                                        <option value="04">25</option>
                                                        <option value="04">26</option>
                                                        <option value="04">27</option>
                                                        <option value="04">28</option>
                                                        <option value="04">29</option>
                                                        <option value="04">30</option>
                                                        <option value="04">31</option>
                                                    </select><select class="select-box select-box--primary-style">
                                                        <option selected>Year</option>
                                                        <option value="1991">1991</option>
                                                        <option value="1992">1992</option>
                                                        <option value="1993">1993</option>
                                                        <option value="1994">1994</option>
                                                        <option value="1991">1995</option>
                                                        <option value="1992">1996</option>
                                                        <option value="1993">1997</option>
                                                        <option value="1994">1998</option>
                                                        <option value="1991">1999</option>
                                                        <option value="1992">2000</option>
                                                        <option value="1993">2001</option>
                                                        <option value="1994">2002</option>
                                                        <option value="1991">2003</option>
                                                        <option value="1992">2004</option>
                                                        <option value="1992">2005</option>
                                                        <option value="1993">2006</option>
                                                        <option value="1994">2007</option>
                                                        <option value="1991">2008</option>
                                                        <option value="1992">2009</option>
                                                        <option value="1992">2010</option>
                                                        <option value="1993">2011</option>
                                                        <option value="1994">2012</option>
                                                        <option value="1991">2013</option>
                                                        <option value="1992">2014</option>
                                                        <option value="1992">2015</option>
                                                        <option value="1993">2016</option>
                                                        <option value="1994">2017</option>
                                                        <option value="1991">2018</option>
                                                        <option value="1992">2019</option>
                                                        <option value="1992">2020</option>

                                                    </select></div>
                                                <!--====== End - Date of Birth Select-Box ======-->
                                            </div>
                                                
                                        </div>
                                        <div class="u-s-m-b-30">

                                            <label class="gl-label" for="reg-email">E-MAIL</label>

                                            <input class="input-text input-text--primary-style" type="email" id="reg-email" placeholder="Enter E-mail"></div>
                                        <div class="u-s-m-b-30">
                                            <label class="gl-label" for="reg-email">PHONE-NUMBLE</label>

                                            <input class="input-text input-text--primary-style" type="text" id="reg-email" placeholder="Enter phone-numble"></div>
                                        <div class="u-s-m-b-30">

                                            <label class="gl-label" for="reg-password">USERNAME *</label>

                                            <input class="input-text input-text--primary-style" type="text" id="reg-password" placeholder="Enter Password"></div>
                                        <div class="u-s-m-b-30">

                                            <label class="gl-label" for="reg-password">PASSWORD *</label>

                                            <input class="input-text input-text--primary-style" type="password" id="reg-password" placeholder="Enter Password"></div>
                                        <div class="u-s-m-b-15">

                                            <button class="btn btn--e-transparent-brand-b-2" type="submit">CREATE</button></div>

                                        <a class="gl-link" href="Index.aspx">Return to Store</a>
                                    </form>
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
</asp:Content>
