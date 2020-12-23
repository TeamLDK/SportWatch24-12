using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class QLDonViVanChuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }
        public void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            List<Models.VanChuyen> lst = db.VanChuyen.ToList();
            dgvVanChuyen.DataSource = lst;
            dgvVanChuyen.DataBind();
        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_van_chuyen = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.VanChuyen obj = db.VanChuyen.FirstOrDefault(x => x.id_don_vi_van_chuyen.ToString() == id_van_chuyen);
            if (obj != null)
            {
                db.VanChuyen.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("CTDonViVanChuyen.aspx");
        }
    }
}