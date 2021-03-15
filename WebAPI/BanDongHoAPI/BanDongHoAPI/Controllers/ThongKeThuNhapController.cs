using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BanDongHoAPI.Models;
using System.Web.Http.Description;
namespace BanDongHoAPI.Controllers
{
    public class ThongKeThuNhapController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public ThongKeThuNhapController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }

        // GET: api/ThongKeThuNhap
        [HttpGet]
        public IEnumerable<ThongKeModel> GetThongKeThuNhap()
        {
            List<ThongKeModel> ls = new List<ThongKeModel>();
            // thu nhập tháng này
            string sYear = DateTime.Now.Year.ToString();
            string sMonth = DateTime.Now.Month.ToString();
            int iMonth = Convert.ToInt32(sMonth);
            for (int i = 1; i <= iMonth; i++)
            {
                try
                {
                    string sqlQuery = "SELECT dbo.ThongKeThuNhap(" + i.ToString() + ","+ sYear + ")";
                    decimal m = db.Database.SqlQuery<decimal>(sqlQuery).FirstOrDefault();
                    ThongKeModel item = new ThongKeModel("thang_" + i.ToString(), m.ToString());
                    ls.Add(item);
                }
                catch (Exception) { }
            }


            return ls;
        }
    }
}
