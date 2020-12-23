using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class QLThuongHieu : System.Web.UI.Page
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
            List<Models.ThuongHieu> lst = db.ThuongHieu.ToList();
            dgvThuongHieu.DataSource = lst;
            dgvThuongHieu.DataBind();
        }

        public string getAnhDaiDien(string MaTH)
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.ThuongHieu obj = db.ThuongHieu.FirstOrDefault(x => x.id_thuong_hieu.ToString() == MaTH);
            if (obj != null)
            {
                return obj.img_thuong_hieu;
            }
            else
            {
                return "";
            }
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_thuong_hieu = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.ThuongHieu obj = db.ThuongHieu.FirstOrDefault(x => x.id_thuong_hieu.ToString() == id_thuong_hieu);
            if (obj != null)
            {
                db.ThuongHieu.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("CTThuongHieu.aspx");
        }
    }
}