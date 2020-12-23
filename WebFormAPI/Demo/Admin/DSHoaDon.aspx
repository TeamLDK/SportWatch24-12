<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="DSHoaDon.aspx.cs" Inherits="Demo.Admin.DSHoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading" style="width:123%;">
        <div class="col-lg-10">
            <h2>Danh sách hóa đơn</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="TrangChu.aspx">Trang chủ</a>
                </li>
                <strong style="margin-left:5px; margin-right:5px;"> / </strong>
                <li class="active">
                    <span href="#">Danh sách hóa đơn</span>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content" runat="server">
                        <div class="ibox-title" style="width:100%; height: 60px;">
                        </div>
                        <asp:GridView runat="server"
                            AutoGenerateColumns="false"
                            ID="dgvHoaDon" 
                            class="table table-bordered" width="100%" cellspacing="0">
                            <Columns>
                                <asp:BoundField DataField="id_hoa_don" HeaderText="Mã hóa đơn" />
                                <asp:BoundField DataField="KhachHang.ten_kh" HeaderText="Tên khách hàng" />
                                <asp:BoundField DataField="VanChuyen.ten_don_vi_van_chuyen" HeaderText="Tên đơn vị vận chuyển" />
                                <asp:BoundField DataField="ngay_hoa_don" HeaderText="Ngày mua" />
                                <asp:BoundField DataField="ghi_chu_giao_hang" HeaderText="Ghi chú" />
                                <asp:TemplateField>
                                    <HeaderTemplate>Chức năng</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="btnXoa" 
                                            CssClass="text-danger"
                                            OnClientClick="return check();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_hoa_don") %>'
                                        ><i class="fa fa-trash"></i></asp:LinkButton>
                                        
                                        <asp:LinkButton runat="server" ID="btnChiTiet" 
                                            CssClass="text-danger"
                                            OnCommand="btnChiTiet_Command"
                                            CommandArgument='<%# Eval("id_hoa_don") %>'
                                        >Chi tiết</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        function check() {
            if (confirm("Bạn thực sự muốn xóa? Thao tác này sẽ không khôi phục lại được!") == true){
                return true;
            }
            return false;
        }
    </script>
</asp:Content>
