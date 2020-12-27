using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
            }
        }
        private void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();

            // thu nhập tháng này
            string sMonth = DateTime.Now.ToString("MM");
            string sqlQuery = "SELECT dbo.ThuNhapTheoThang(" + sMonth + ")";
            decimal m = db.Database.SqlQuery<decimal>(sqlQuery).FirstOrDefault();
            lbThuNhapThangNay.Text = m.ToString("C");

            // thu nhập trung bình mỗi tháng 

            var ls = db.Database.SqlQuery<decimal>("EXEC ThuNhapTrungBinh").ToList();
            decimal sum = 0;
            decimal count = 0;
            foreach(var item in ls)
            {
                sum += item;
                count++;
            }
            decimal avg;
            if (count != 0)
            {
                avg = sum / count;
            }
            else
            {
                avg = 0;
            }
            lbTrungBinhMoiThang.Text = avg.ToString("C");

            // Tổng thu nhập 
            sMonth = DateTime.Now.ToString("MM");
            sqlQuery = "SELECT dbo.TongThuNhap()";
            m = db.Database.SqlQuery<decimal>(sqlQuery).FirstOrDefault();
            lbTongThuNhap.Text = m.ToString("C");

            // thu nhập tháng này
            int kh_dk = 0;
            kh_dk = db.DangKiNhanTin.Count();
            lbKhachHangDangKi.Text = kh_dk.ToString();

        }
    }
}