<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Demo.Admin.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">

    <div class="col-sm-4"></div>
    <div class="middle-box loginscreen   animated fadeInDown col-sm-5"  runat="server">
        <div style="margin-top:100px;">
            <h2>Thông tin chủ tài khoản <asp:Label runat="server" ID="nameUser"></asp:Label></h2><br /><br />

            <div class="m-t" runat="server">
                <asp:Panel runat="server" ID="pnError" Visible="false">
                    <div class="alert alert-danger">
                        <asp:Label runat="server" ID="lbError"></asp:Label><asp:HyperLink runat="server" ID="hpError" class="alert-link"></asp:HyperLink>
                    </div>
                </asp:Panel>
                <div class="form-group" style="font-size:30px">
                   UserName : <asp:Label runat="server" ID="lbUserName" style="font-weight:700"/><br />
                   Tên người dùng : <asp:Label runat="server" ID="lbName" style="font-weight:700"/><br />
                   Số điện thoại : <asp:Label runat="server" ID="lbPhone" style="font-weight:700"/><br />
                   Email : <asp:Label runat="server" ID="lbEmail" style="font-weight:700"/><br />
                   Địa chỉ : <asp:Label runat="server" ID="lbaddress" style="font-weight:700"/><br />
                </div>
            </div>
            
        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="Template/js/jquery-2.1.1.js"></script>
    <script src="Template/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="Template/js/plugins/iCheck/icheck.min.js"></script>
    <script>
    </script>
</asp:Content>
