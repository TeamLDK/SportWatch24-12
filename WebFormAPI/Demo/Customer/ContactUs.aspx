<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Demo.Customer.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Assets/css/top_bottom.css">
    <link href="Assets/css/lienhe.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="middle">
        <div class="middle_bottom">
            <div class="left" style="width: 75%">
                <p class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.6500009099127!2d105.78302651488367!3d21.046685885988698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab325960d0dd%3A0x721c9888e25aa2bf!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyDEkGnhu4duIEzhu7Fj!5e0!3m2!1svi!2s!4v1587041042540!5m2!1svi!2s" width="100%" height="600px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" ></iframe>
                </p>
            </div>
            <div class="right">
                <div class="row_top">
                   <div class="bottom_left1" style="width:70%">
                    <div class="middle_logo" style="margin-top:100px">
                        <img src="Assets/images/logo/logo-1.png" class="imagerlogo" style="padding-top:0px" />
                   </div>
                    <div class="bottom_cot1" style="margin-top:20px">
                        <div class="bottom_imger1">
                            <i class="fa fa-map-marker fa-lg imger_cot1" aria-hidden="true"></i>
                        </div>
                        <div class="bottom_dchi">
                            <span>235-Hoàng Quốc Việt, Đại Học Điện Lực</span>
                        </div>
                    </div>
                    <div class="bottom_cot1">
                        <div class="bottom_sodienthoai">
                            <i class="fa fa-volume-control-phone fa-lg  imger_cot1" aria-hidden="true"></i>
                            <a href="tel:0343507124" class="bottom_a">0343507124</a>
                        </div>
                    </div>
                    
                    <div class="bottom_cot1">
                        <div class="bottom_gmail">
                            <i class="fa fa-envelope  fa-lg imger_cot1" aria-hidden="true"></i>
                        </div>
                        <div class="bottom_2gmail">
                            <a href="mailto:demonhunterg@gmail.com" class="bottom_a">locdeptrai@gmail.com</a><br>
                            <a href="mailto:khiemdeptrai@mona.media" class="bottom_a"> khiemdeptrai@mona.media</a>
                        </div>
                    </div>
                    <div class="bottom_cot1">
                        <div class="bottom_imgskype">
                            <i class="fa fa-skype fa-lg  imger_cot1" aria-hidden="true"></i>
                        </div>
                        <div class="bottom_skype">
                            <a href="skype:tuandeptrai" class="bottom_a">DinhOcCho</a>
                        </div>
                    </div>
                </div>
                </div>
        </div>
    </div>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
