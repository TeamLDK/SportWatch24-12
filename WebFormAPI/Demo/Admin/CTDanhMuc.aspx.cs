using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
namespace Demo.Admin
{
    public partial class CTDanhMuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getDanhMucCha();
            getDanhMucCon();

            string id_danh_muc = Request.QueryString["id_danh_muc"];
            if (id_danh_muc != null && id_danh_muc != "")
            {
                getData(id_danh_muc);
                btnThemMoi.Visible = false;
            }
            else
            {
                btnSua.Visible = false;
            }
        }
        public void getData(string id_danh_muc)
        {
            Demo.Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Demo.Models.DanhMucSanPham obj = db.DanhMucSanPham.FirstOrDefault(x => x.id_danh_muc.ToString() == id_danh_muc);
            if (obj == null)
            {
                Response.Redirect("QLDanhMuc.aspx");
            }
            else
            {
                txtMaDM.Text = id_danh_muc;
                txtMaDM.Enabled = false;

                txtTenDM.Text = obj.ten_danh_muc;

                try
                {
                    cmbDanhMucCha.SelectedValue = obj.id_danh_muc_cha.ToString();
                }
                catch (Exception)
                {
                    cmbDanhMucCha.SelectedIndex = -1;
                }
                try
                {
                    cmbDanhMucCon.SelectedValue = obj.id_danh_muc_con.ToString();
                }
                catch (Exception)
                {
                    cmbDanhMucCon.SelectedIndex = -1;
                }

            }
        }

        public void getDanhMucCha()
        {
            Demo.Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            cmbDanhMucCha.DataSource = db.DanhMucSanPham.ToList();
            cmbDanhMucCha.DataValueField = "id_danh_muc";
            cmbDanhMucCha.DataTextField = "ten_danh_muc";
            cmbDanhMucCha.DataBind();
        }
        public void getDanhMucCon()
        {
            Demo.Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            cmbDanhMucCon.DataSource = db.DanhMucSanPham.ToList();
            cmbDanhMucCon.DataValueField = "id_danh_muc";
            cmbDanhMucCon.DataTextField = "ten_danh_muc";
            cmbDanhMucCon.DataBind();
        }


        //public void getGioiTinh()
        //{
        //    List<string> list = new List<string>();
        //    list.Add("Unisex");
        //    list.Add("Male");
        //    list.Add("Female");
        //    cmbSex.DataSource = list;
        //    cmbSex.DataBind();
        //}

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra mã có tồn tại chưa?
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                string id_danh_muc = txtMaDM.Text;
                Models.DanhMucSanPham obj = db.DanhMucSanPham.FirstOrDefault(x => x.id_danh_muc.ToString() == id_danh_muc);
                if (obj == null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Không có danh mục nào để sửa, xem lại ";
                    hpError.Text = id_danh_muc;
                    hpError.NavigateUrl = "CTDanhMuc.aspx?id_danh_muc=" + id_danh_muc;
                }
                else
                {
                    string filename = "";
                    if (fuImg.HasFile == true)
                    {
                        // Bước 1: Tải file về server
                        // Sinh tên file
                        filename = txtMaDM.Text + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff");
                        string[] arr = fuImg.FileName.Split('.');
                        string file_ext = arr[arr.Length - 1];
                        filename += '.' + file_ext;
                        string folder = Server.MapPath("~/Uploads/AnhDanhMuc/");
                        fuImg.SaveAs(folder + filename);
                    }

                    obj.ten_danh_muc = txtTenDM.Text;
                    obj.id_danh_muc_cha = Convert.ToInt32(cmbDanhMucCha.SelectedValue);
                    obj.id_danh_muc_con = Convert.ToInt32(cmbDanhMucCon.SelectedValue);
                    obj.img_danh_muc = filename;
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
                string id_danh_muc = txtMaDM.Text;
                Models.DanhMucSanPham obj = db.DanhMucSanPham.FirstOrDefault(x => x.id_danh_muc.ToString() == id_danh_muc);
                if (obj != null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Mã danh mục bị trùng, xem chi tiết tại ";
                    hpError.Text = id_danh_muc;
                    hpError.NavigateUrl = "CTDanhMuc.aspx?id_danh_muc=" + id_danh_muc;
                }
                else
                {
                    string filename = "";
                    if (fuImg.HasFile == true)
                    {
                        // Bước 1: Tải file về server
                        // Sinh tên file
                        filename = txtMaDM.Text + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff");
                        string[] arr = fuImg.FileName.Split('.');
                        string file_ext = arr[arr.Length - 1];
                        filename += '.' + file_ext;
                        string folder = Server.MapPath("~/Uploads/AnhDanhMuc/");
                        fuImg.SaveAs(folder + filename);
                    }

                    obj.ten_danh_muc = txtTenDM.Text;
                    obj.id_danh_muc_cha = Convert.ToInt32(cmbDanhMucCha.SelectedValue);
                    obj.id_danh_muc_con = Convert.ToInt32(cmbDanhMucCon.SelectedValue);
                    obj.img_danh_muc = filename;
                    db.DanhMucSanPham.Add(obj);
                    db.SaveChanges();
                    Response.Redirect("QLDanhMuc.aspx");
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
            Response.Redirect("QLDanhMuc.aspx");
        }
    }
}