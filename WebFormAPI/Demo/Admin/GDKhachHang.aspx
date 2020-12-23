<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="GDKhachHang.aspx.cs" Inherits="Demo.Admin.GDKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div runat="server" class="row">
        <div class="col-lg-7">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Imager Giao Diện Client</h5>
                </div>
                <div class="ibox-content" >
                    <asp:GridView AutoGenerateColumns="false" runat="server" ID="dgvMedia" CssClass="table table-responsive table-bordered table-hover">
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="id_img" />
                            <asp:TemplateField>
                                <HeaderTemplate>Ảnh</HeaderTemplate>
                                <ItemTemplate>
                                    <img height="100px" src='<%# "../Uploads/AnhGiaoDien/" + Eval("url").ToString() %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Mô tả imager" DataField="mo_ta_img" />
                            <asp:BoundField HeaderText="Điều hướng imager" DataField="dieu_huong_img" />
                            <asp:BoundField HeaderText="Loại imager" DataField="loai_img" />
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    Chức năng
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" ID="btnXoa" 
                                            CssClass="text-danger"
                                            OnClientClick="return check();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_img") %>'
                                        ><i class="fa fa-trash"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Cập nhật thông tin</h5>
                </div>
                <div class="ibox-content">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Upload file</label>
                            <div class="col-lg-9">
                                <asp:FileUpload runat="server" ID="fuImg" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Mô tả imager</label>
                            <div class="col-lg-9">
                                <asp:TextBox runat="server" ID="moTaImg" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Điều hướng imager</label>
                            <div class="col-lg-9">
                                <asp:TextBox runat="server" ID="dieuHuongImg" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Loại imager</label>
                            <div class="col-lg-9">
                                <asp:TextBox runat="server" ID="loaiImg" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button runat="server" ID="btnUpload" class="btn btn-sm btn-primary" type="submit" Text="Upload"
                                    OnClick="btnUpload_Click"
                                />
                            </div>
                        </div>
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
