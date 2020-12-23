using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class CTDonViVanChuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id_don_vi_van_chuyen = Request.QueryString["id_don_vi_van_chuyen"];
                if (id_don_vi_van_chuyen != null && id_don_vi_van_chuyen != "")
                {
                    getData(id_don_vi_van_chuyen);
                    btnThemMoi.Visible = false;
                }
                else
                {
                    txtMaDVVanChuyen.Enabled = false;
                    btnSua.Visible = false;
                }


            }
        }

        public void getData(string id_don_vi_van_chuyen)
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.VanChuyen obj = db.VanChuyen.FirstOrDefault(x => x.id_don_vi_van_chuyen.ToString() == id_don_vi_van_chuyen);
            if (obj == null)
            {
                Response.Redirect("QLDonViVanChuyen.aspx");
            }
            else
            {
                txtMaDVVanChuyen.Text = id_don_vi_van_chuyen;
                txtMaDVVanChuyen.Enabled = false;
                txtTenDVVanChuyen.Text = obj.ten_don_vi_van_chuyen;
                txtDCDVVanChuyen.Text = obj.dia_chi_don_vi_van_chuyen;
                txtSDTDVVanChuyen.Text = obj.sdt_don_vi_van_chuyen.ToString();
                txtEDVVanChuyen.Text = obj.email_don_vi_van_chuyen;
                txtPhiVanChuyen.Text = obj.phi_van_chuyen.ToString();
            }
        }
        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra mã có tồn tại chưa?
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                string id_van_chuyen = txtMaDVVanChuyen.Text;
                Models.VanChuyen obj = db.VanChuyen.FirstOrDefault(x => x.id_don_vi_van_chuyen.ToString() == id_van_chuyen);
                if (obj == null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Không có sản phẩm nào để sửa, xem lại ";
                    hpError.Text = id_van_chuyen;
                    hpError.NavigateUrl = "CTDonViVanChuyen.aspx?id_don_vi_van_chuyen=" + id_van_chuyen;
                }
                else
                {

                    obj.id_don_vi_van_chuyen = int.Parse(txtMaDVVanChuyen.Text);
                    obj.ten_don_vi_van_chuyen = txtTenDVVanChuyen.Text;
                    obj.dia_chi_don_vi_van_chuyen = txtDCDVVanChuyen.Text;
                    obj.sdt_don_vi_van_chuyen = txtSDTDVVanChuyen.Text;
                    obj.email_don_vi_van_chuyen = txtEDVVanChuyen.Text;
                    obj.phi_van_chuyen = decimal.Parse(txtPhiVanChuyen.Text);
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
                string id_van_chuyen = txtMaDVVanChuyen.Text;
                Models.VanChuyen obj = db.VanChuyen.FirstOrDefault(x => x.id_don_vi_van_chuyen.ToString() == id_van_chuyen) ;
                if (obj != null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Mã sản phẩm bị trùng, xem chi tiết tại ";
                    hpError.Text = id_van_chuyen;
                    hpError.NavigateUrl = "CTDonViVanChuyen.aspx?id_don_vi_van_chuyen=" + id_van_chuyen;
                }
                else
                {
                    obj.id_don_vi_van_chuyen = int.Parse(txtMaDVVanChuyen.Text);
                    obj.ten_don_vi_van_chuyen = txtTenDVVanChuyen.Text;
                    obj.dia_chi_don_vi_van_chuyen = txtDCDVVanChuyen.Text;
                    obj.sdt_don_vi_van_chuyen = txtSDTDVVanChuyen.Text;
                    obj.email_don_vi_van_chuyen = txtEDVVanChuyen.Text;
                    obj.phi_van_chuyen = decimal.Parse(txtPhiVanChuyen.Text);
                    db.VanChuyen.Add(obj);
                    db.SaveChanges();
                    Response.Redirect("QLDonViVanChuyen.aspx");
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
            Response.Redirect("QLDonViVanChuyen.aspx");
        }


    }
}