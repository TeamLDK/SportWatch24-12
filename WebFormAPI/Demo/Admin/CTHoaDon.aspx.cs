using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class CTHoaDon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }
        public void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            List<Models.ChiTietHoaDon> lst = db.ChiTietHoaDon.ToList();
            dgvCTHoaDon.DataSource = lst;
            dgvCTHoaDon.DataBind();
        }
    }
}