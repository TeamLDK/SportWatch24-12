using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class QLDanhMuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
            }
        }

        public void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            List<Models.DanhMucSanPham> lst = db.DanhMucSanPham.ToList();
            dgvDanhMuc.DataSource = lst;
            dgvDanhMuc.DataBind();
        }

        public string getAnhDaiDien(string MaDM)
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.DanhMucSanPham obj = db.DanhMucSanPham.FirstOrDefault(x => x.id_danh_muc.ToString() == MaDM);
            if (obj != null)
            {
                return obj.img_danh_muc;
            }
            else
            {
                return "";
            }
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_danh_muc = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.DanhMucSanPham obj = db.DanhMucSanPham.FirstOrDefault(x => x.id_danh_muc.ToString() == id_danh_muc);
            if (obj != null)
            {
                db.DanhMucSanPham.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("CTDanhMuc.aspx");
        }
    }
}