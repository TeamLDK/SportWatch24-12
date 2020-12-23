using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class CTThuongHieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id_thuong_hieu = Request.QueryString["id_thuong_hieu"];
                if (id_thuong_hieu != null && id_thuong_hieu != "")
                {
                    getData(id_thuong_hieu);
                    btnThemMoi.Visible = false;
                }
                else
                {
                    btnSua.Visible = false;
                }
            }
        }

        public void getData(string id_thuong_hieu)
        {
            Demo.Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Demo.Models.ThuongHieu obj = db.ThuongHieu.FirstOrDefault(x => x.id_thuong_hieu.ToString() == id_thuong_hieu);
            if (obj == null)
            {
                Response.Redirect("QLThuongHieu.aspx");
            }
            else
            {
                txtMaTH.Text = id_thuong_hieu;
                txtMaTH.Enabled = false;
                txtTenTH.Text = obj.ten_thuong_hieu;
                txtDieu_Huong.Text = obj.dieu_huong_thuong_hieu;
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra mã có tồn tại chưa?
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                string id_thuong_hieu = txtMaTH.Text;
                Models.ThuongHieu obj = db.ThuongHieu.FirstOrDefault(x => x.id_thuong_hieu.ToString() == id_thuong_hieu);
                if (obj == null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Không có sản phẩm nào để sửa, xem lại ";
                    hpError.Text = id_thuong_hieu;
                    hpError.NavigateUrl = "CTThuongHieu.aspx?id_thuong_hieu=" + id_thuong_hieu;
                }
                else
                {
                    string filename = "";
                    if (fuImg.HasFile == true)
                    {
                        // Bước 1: Tải file về server
                        // Sinh tên file
                        filename = txtMaTH.Text + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff");
                        string[] arr = fuImg.FileName.Split('.');
                        string file_ext = arr[arr.Length - 1];
                        filename += '.' + file_ext;
                        string folder = Server.MapPath("~/Uploads/AnhThuongHieu/");
                        fuImg.SaveAs(folder + filename);
                    }// Bước 2: Thêm dữ liệu vào Database
                    obj.ten_thuong_hieu = txtTenTH.Text;
                    obj.img_thuong_hieu = filename;
                    obj.dieu_huong_thuong_hieu = txtDieu_Huong.Text;

                    db.SaveChanges();

                    pnError.Visible = true;
                    lbError.Text = "Sửa thành công!";
                }
            }
            catch
            {
                pnError.Visible = true;
                lbError.Text = "Lỗi, không lưu lại được!";
            }

        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra mã có tồn tại chưa?
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                string id_thuong_hieu = txtMaTH.Text;
                Models.ThuongHieu obj = db.ThuongHieu.FirstOrDefault(x => x.id_thuong_hieu.ToString() == id_thuong_hieu);
                if (obj != null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Mã sản phẩm bị trùng, xem chi tiết tại ";
                    hpError.Text = id_thuong_hieu;
                    hpError.NavigateUrl = "CTThuongHieu.aspx?id_thuong_hieu=" + id_thuong_hieu;
                }
                else
                {
                    string filename = "";
                    if (fuImg.HasFile == true)
                    {
                        // Bước 1: Tải file về server
                        // Sinh tên file
                        filename = txtMaTH.Text + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff");
                        string[] arr = fuImg.FileName.Split('.');
                        string file_ext = arr[arr.Length - 1];
                        filename += '.' + file_ext;
                        string folder = Server.MapPath("~/Uploads/AnhThuongHieu/");
                        fuImg.SaveAs(folder + filename);

                        // Bước 2: Thêm dữ liệu vào Database
                    }
                    obj = new Models.ThuongHieu();
                    obj.ten_thuong_hieu = txtTenTH.Text;
                    obj.dieu_huong_thuong_hieu = txtDieu_Huong.Text;
                    obj.img_thuong_hieu = filename;


                    db.ThuongHieu.Add(obj);
                    db.SaveChanges();
                    Response.Redirect("QLThuongHieu.aspx");
                }
            }
            catch
            {
                pnError.Visible = true;
                lbError.Text = "Lỗi, không lưu lại được!";
            }
        }
        protected void btnQuayLai_Click(object sender, EventArgs e)
        {
            Response.Redirect("QLThuongHieu.aspx");
        }

    }
}