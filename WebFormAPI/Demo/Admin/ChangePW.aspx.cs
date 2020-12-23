using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class ChagePW : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                nameUser.Text = Session["username"].ToString();
            }
        }
        protected void btnChange_Click(object sender, EventArgs e)
        {
            //Check điền thông tin đầy đủ
            if (txtOldPassword.Text == string.Empty || txtOldPassword.Text == " " || txtOldPassword.Text == string.Empty
                || txtOldPassword.Text == "" || txtReNewPassword.Text == string.Empty || txtReNewPassword.Text == "")
            {
                pnError.Visible = true;
                lbError.Text = "Vui lòng nhập đầy đủ thông tin";
            }

            string id_admin = Session["username"].ToString();
            string oldPw = txtOldPassword.Text;
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.Admin obj = db.Admin.FirstOrDefault(x => x.username == id_admin && x.password == oldPw);
            if (obj == null)
            {
                pnError.Visible = true;
                lbError.Text = "Nhập sai mật khẩu cũ";
                txtOldPassword.Text = string.Empty;
            }
            else
            {
                if (txtNewPassword.Text != txtReNewPassword.Text)
                {
                    pnError.Visible = true;
                    lbError.Text = "Nhập lại mật khẩu";
                    txtNewPassword.Text = string.Empty;
                    txtReNewPassword.Text = string.Empty;
                }
                else
                {
                    obj.password = txtReNewPassword.Text;

                    db.SaveChanges();

                    pnError.Visible = true;
                    lbError.Text = "Đổi mật khẩu thành công";

                }
            }
        }

        protected void btnQuayLai_Click(object sender, EventArgs e)
        {
            string id_admin = Session["username"].ToString();
            Response.Redirect("Trangchu.aspx?username=" + id_admin);
        }
    }
}