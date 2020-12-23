using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class DSHoaDon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }
        public void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            List<Models.HoaDon> lst = db.HoaDon.ToList();
            dgvHoaDon.DataSource = lst;
            dgvHoaDon.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_hoa_don = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.HoaDon obj = db.HoaDon.FirstOrDefault(x => x.id_hoa_don.ToString() == id_hoa_don);
            if (obj != null)
            {
                db.HoaDon.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
        protected void btnChiTiet_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("CTHoaDon.aspx");
        }
    }
}