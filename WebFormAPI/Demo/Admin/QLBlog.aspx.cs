using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class QLBlog : System.Web.UI.Page
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
            List<Models.Blog> lst = db.Blog.ToList();
            dgvBlog.DataSource = lst;
            dgvBlog.DataBind();
        }

        public string getShortStr(string str)
        {
            return str.Substring(0, 200) + "...";
        }

        public string getAnhDaiDien(string MaSP)
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.Blog obj = db.Blog.FirstOrDefault(x => x.id_blog.ToString() == MaSP);
            if (obj != null)
            {
                return obj.image;
            }
            else
            {
                return "";
            }
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_blog = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.Blog obj = db.Blog.FirstOrDefault(x => x.id_blog.ToString() == id_blog);
            if (obj != null)
            {
                db.Blog.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("CTBlog.aspx");
        }
    }
}