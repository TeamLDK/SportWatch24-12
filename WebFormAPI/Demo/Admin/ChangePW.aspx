<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="ChangePW.aspx.cs" Inherits="Demo.Admin.ChagePW" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div style="margin-top:100px;">
            <h3>Change Password </br>for <asp:Label runat="server" ID="nameUser"></asp:Label></h3>
            <div class="m-t" runat="server">
                <asp:Panel runat="server" ID="pnError" Visible="false">
                    <div class="alert alert-danger">
                        <asp:Label runat="server" ID="lbError"></asp:Label><asp:HyperLink runat="server" ID="hpError" class="alert-link"></asp:HyperLink>
                    </div>
                </asp:Panel>
                <div class="form-group">
                    <asp:TextBox runat="server" type="password" ID="txtOldPassword" TextMode="SingleLine" class="form-control" placeholder="Old Password" required="" style="width:40%; margin:auto;" />
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" type="password" ID="txtNewPassword" TextMode="SingleLine" class="form-control" placeholder="New Password" required="" style="width:40%; margin:auto;"/>
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" type="password" ID="txtReNewPassword" TextMode="SingleLine" class="form-control" placeholder="Repassword" required="" style="width:40%; margin:auto;"/>
                </div>
                
                <asp:Button runat="server" ID="btnChange" 
                            CssClass="btn btn-primary block full-width m-b" Text="Change Password"
                            OnClick="btnChange_Click"
                            OnClientClick="return check();"
                            />
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
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green'
            });
        });
        function check() {
            var result = confirm("Bạn có muốn đổi mật khẩu hay không?");
            return result;
        }
    </script>
</asp:Content>
