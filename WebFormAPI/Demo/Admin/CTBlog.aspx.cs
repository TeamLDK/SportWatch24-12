using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class CTBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id_blog = Request.QueryString["id_blog"];
                if (id_blog != null && id_blog != "")
                {
                    getData(id_blog);
                    btnThemMoi.Visible = false;
                }
                else
                {
                    btnSua.Visible = false;
                }
            }
        }

        public void getData(string id_blog)
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.Blog obj = db.Blog.FirstOrDefault(x => x.id_blog.ToString() == id_blog);
            if (obj == null)
            {
                Response.Redirect("QLBlog.aspx");
            }
            else
            {
                txtIdBlog.Text = id_blog;
                txtNoiDung.Text = obj.content;
                txtTitle.Text = obj.title;
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra mã có tồn tại chưa?
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                string id_blog = txtIdBlog.Text;
                Models.Blog obj = db.Blog.FirstOrDefault(x => x.id_blog.ToString() == id_blog);
                if (obj == null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Không có Blog nào để sửa, xem lại ";
                    hpError.Text = id_blog;
                    hpError.NavigateUrl = "CTBlog.aspx?id_blog=" + id_blog;
                }
                else
                {
                    string filename = "";
                    if (fuImg.HasFile == true)
                    {
                        // Bước 1: Tải file về server
                        // Sinh tên file
                        filename = txtIdBlog.Text + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff");
                        string[] arr = fuImg.FileName.Split('.');
                        string file_ext = arr[arr.Length - 1];
                        filename += '.' + file_ext;
                        string folder = Server.MapPath("~/Uploads/AnhBlog/");
                        fuImg.SaveAs(folder + filename);
                    }// Bước 2: Thêm dữ liệu vào Database
                    string nguoiDang = Session["username"].ToString();
                    obj.username = nguoiDang;
                    obj.time = DateTime.Now;
                    obj.title = txtTitle.Text;
                    obj.content = txtNoiDung.Text;
                    obj.image = filename;
                    db.SaveChanges();

                    pnError.Visible = true;
                    lbError.Text = "Sửa thành công!";
                }
            }
            catch
            {
                pnError.Visible = true;
                lbError.Text = "Lỗi, không lưu lại được!";
            }

        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra mã có tồn tại chưa?
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                string id_blog = txtIdBlog.Text;
                Models.Blog obj = db.Blog.FirstOrDefault(x => x.id_blog.ToString() == id_blog);
                if (obj != null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Mã sản phẩm bị trùng, xem chi tiết tại ";
                    hpError.Text = id_blog;
                    hpError.NavigateUrl = "CTBlog.aspx?id_blog=" + id_blog;
                }
                else
                {
                    string filename = "";
                    if (fuImg.HasFile == true)
                    {
                        // Bước 1: Tải file về server
                        // Sinh tên file
                        filename = txtIdBlog.Text + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff");
                        string[] arr = fuImg.FileName.Split('.');
                        string file_ext = arr[arr.Length - 1];
                        filename += '.' + file_ext;
                        string folder = Server.MapPath("~/Uploads/AnhBlog/");
                        fuImg.SaveAs(folder + filename);

                        // Bước 2: Thêm dữ liệu vào Database
                    }
                    string nguoiDang = Session["username"].ToString();
                    obj = new Models.Blog();
                    obj.username = nguoiDang;
                    obj.time = DateTime.Now;
                    obj.title = txtTitle.Text;
                    obj.image = filename;
                    obj.content = txtNoiDung.Text;

                    db.Blog.Add(obj);
                    db.SaveChanges();
                    Response.Redirect("QLBlog.aspx");
                }
            }
            catch
            {
                pnError.Visible = true;
                lbError.Text = "Lỗi, không lưu lại được!";
            }
        }
        protected void btnQuayLai_Click(object sender, EventArgs e)
        {
            Response.Redirect("QLBlog.aspx");
        }
    }
}