using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class DSEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             getData();
        }
        public void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            List<Models.DangKiNhanTin> lst = db.DangKiNhanTin.ToList();
            dgvEmail.DataSource = lst;
            dgvEmail.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_dang_ky = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.DangKiNhanTin obj = db.DangKiNhanTin.FirstOrDefault(x => x.id_dang_ki_nhan_tin.ToString() == id_dang_ky);
            if (obj != null)
            {
                db.DangKiNhanTin.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
    }
}