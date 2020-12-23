<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="QLThuongHieu.aspx.cs" Inherits="Demo.Admin.QLThuongHieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading" style="width:123%;">
        <div class="col-lg-10">
            <h2>Quản lý thương hiệu</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="TrangChu.aspx">Trang chủ</a>
                </li>
                <strong style="margin-left:5px; margin-right:5px;"> / </strong>
                <li class="active">
                    <span href="#">Quản lý thương hiệu</span>
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

                        <asp:Button runat="server" ID="btnThem" Style="margin-left:15px; margin-top:10px;" 
                            CssClass="btn btn-info" Text="Thêm mới"
                            OnClick="btnThem_Click"
                         />
                        
                        </div>
                        <asp:GridView runat="server"
                            AutoGenerateColumns="false"
                            ID="dgvThuongHieu" 
                            class="table table-bordered" width="100%" cellspacing="0">
                            <Columns>
                                <asp:BoundField DataField="id_thuong_hieu" HeaderText="Mã thương hiệu" />
                                <asp:BoundField DataField="ten_thuong_hieu" HeaderText="Tên thương hiệu" />
                                
                                <asp:TemplateField>
                                    <HeaderTemplate>Logo thương hiệu</HeaderTemplate>
                                    <ItemTemplate>
                                        <img height="80px" src='<%# "../Uploads/AnhThuongHieu/" + getAnhDaiDien(Eval("id_thuong_hieu").ToString()) %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="dieu_huong_thuong_hieu" HeaderText="Trang chủ thương hiệu" />
                                
                                <asp:TemplateField>
                                    <HeaderTemplate>Chức năng</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="btnXoa" 
                                            CssClass="text-danger"
                                            OnClientClick="return check();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_thuong_hieu") %>'
                                        ><i class="fa fa-trash"></i></asp:LinkButton>

                                        <a href='<%# "CTThuongHieu.aspx?id_thuong_hieu=" + Eval("id_thuong_hieu").ToString()%>'
                                        >Sửa</a>

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
