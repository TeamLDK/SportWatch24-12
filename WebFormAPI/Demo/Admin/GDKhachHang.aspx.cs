using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class GDKhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }

        public void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            List<Models.ImgGiaoDien> lst = db.ImgGiaoDien.ToList();
            dgvMedia.DataSource = lst;
            dgvMedia.DataBind();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fuImg.HasFile == true)
            {
                // Bước 1: Tải file về server
                // Sinh tên file
                string filename = DateTime.Now.ToString("yyyyMMddHHmmssffff");
                string[] arr = fuImg.FileName.Split('.');
                string file_ext = arr[arr.Length - 1];
                filename += '.' + file_ext;
                string folder = Server.MapPath("~/Uploads/AnhGiaoDien/");
                fuImg.SaveAs(folder + filename);

                // Bước 2: Thêm dữ liệu vào Database
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                Models.ImgGiaoDien obj = new Models.ImgGiaoDien();
                obj.url = filename;
                obj.mo_ta_img = moTaImg.Text;
                obj.dieu_huong_img = dieuHuongImg.Text;
                obj.loai_img = loaiImg.Text;
                db.ImgGiaoDien.Add(obj);
                db.SaveChanges();
                getData();
            }
        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_img = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.ImgGiaoDien obj = db.ImgGiaoDien.FirstOrDefault(x => x.id_img.ToString() == id_img);
            if (obj != null)
            {
                db.ImgGiaoDien.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }

    }
}