using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null || Session["username"] == "")
            {
                Response.Redirect("Login.aspx");
            }
            getData(Session["username"].ToString());
        }
        public void getData(string userName)
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.Admin obj = db.Admin.FirstOrDefault(x => x.username.ToString() == userName);
            lbUserName.Text = obj.username;
            lbName.Text = obj.name;
            lbPhone.Text = obj.phone;
            lbEmail.Text = obj.email;
            lbaddress.Text = obj.address;
        }
    }
}