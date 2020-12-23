<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="UploadAnh.aspx.cs" Inherits="Demo.Admin.UploadAnh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div runat="server" class="row">
        <div class="col-lg-7">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Ảnh sản phẩm</h5>
                </div>
                <div class="ibox-content" >
                    <asp:GridView AutoGenerateColumns="false" runat="server" ID="dgvMedia" CssClass="table table-responsive table-bordered table-hover">
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="id_img" />
                            <asp:TemplateField>
                                <HeaderTemplate>Ảnh</HeaderTemplate>
                                <ItemTemplate>
                                    <img height="100px" src='<%# "../Uploads/AnhSP/" + Eval("url").ToString() %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CheckBoxField HeaderText="Ảnh đại diện" DataField="Main" />
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
                            <label class="col-lg-3 control-label">Mã sản phẩm</label>
                            <div class="col-lg-9">
                                <asp:TextBox runat="server" Enabled="false" ID="txtMaSP" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Upload file</label>
                            <div class="col-lg-9">
                                <asp:FileUpload runat="server" ID="fuImg" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Ảnh đại diện</label>
                            <div class="col-lg-9">
                                <asp:CheckBox runat="server" ID="chkMain" /> 
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
    </form>
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
