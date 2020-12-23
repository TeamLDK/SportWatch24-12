<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="QLDonViVanChuyen.aspx.cs" Inherits="Demo.Admin.QLDonViVanChuyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading" style="width:123%;">
        <div class="col-lg-10">
            <h2>Đơn Vị Vận Chuyển</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="TrangChu.aspx">Trang chủ</a>
                </li>
                <strong style="margin-left:5px; margin-right:5px;"> / </strong>
                <li class="active">
                    <span href="#">Đơn vị vận chuyển</span>
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
                            ID="dgvVanChuyen" 
                            class="table table-bordered" width="100%" cellspacing="0">
                            <Columns>
                                <asp:BoundField DataField="id_don_vi_van_chuyen" HeaderText="Mã đơn vị vận chuyển" />
                                <asp:BoundField DataField="ten_don_vi_van_chuyen" HeaderText="Tên đơn vị vận chuyển" />
                                <asp:BoundField DataField="dia_chi_don_vi_van_chuyen" HeaderText="Địa chỉ đơn vị" />
                                <asp:BoundField DataField="sdt_don_vi_van_chuyen" HeaderText="Số điện thoại đơn vị" />
                                <asp:BoundField DataField="email_don_vi_van_chuyen" HeaderText="Email đơn vị" />
                                <asp:BoundField DataField="phi_van_chuyen" HeaderText="Phí vận chuyển" />
                                <asp:TemplateField>
                                    <HeaderTemplate>Chức năng</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="btnXoa" 
                                            CssClass="text-danger"
                                            OnClientClick="return check();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_don_vi_van_chuyen") %>'
                                        ><i class="fa fa-trash"></i></asp:LinkButton>

                                        <a href='<%# "CTDonViVanChuyen.aspx?id_don_vi_van_chuyen=" + Eval("id_don_vi_van_chuyen").ToString()%>'
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
