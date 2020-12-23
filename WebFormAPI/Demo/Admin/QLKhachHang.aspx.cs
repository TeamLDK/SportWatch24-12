using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class QLKhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }
        public void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            List<Models.KhachHang> lst = db.KhachHang.ToList();
            dgvKhachHang.DataSource = lst;
            dgvKhachHang.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_kh = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.KhachHang obj = db.KhachHang.FirstOrDefault(x => x.id_kh.ToString() == id_kh);
            if (obj != null)
            {
                db.KhachHang.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
    }
}