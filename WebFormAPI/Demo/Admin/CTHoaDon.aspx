<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="CTHoaDon.aspx.cs" Inherits="Demo.Admin.CTHoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading" style="width:123%;">
        <div class="col-lg-10">
            <h2>Chi Tiết hóa đơn</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="TrangChu.aspx">Trang chủ</a>
                </li>
                <strong style="margin-left:5px; margin-right:5px;"> / </strong>
                <li>
                    <a href="DSHoaDon.aspx">Danh sách hóa đơn</a>
                </li>
                <strong style="margin-left:5px; margin-right:5px;"> / </strong>
                <li class="active">
                    <span href="#">Chi Tiết hóa đơn</span>
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
                            ID="dgvCTHoaDon" 
                            class="table table-bordered" width="95%" cellspacing="0">
                            <Columns>
                                <asp:BoundField DataField="SanPham.ten_san_pham" HeaderText="Tên sản phẩm" />
                                <asp:BoundField DataField="so_luong" HeaderText="Số lượng" />
                            </Columns>
                        </asp:GridView>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
