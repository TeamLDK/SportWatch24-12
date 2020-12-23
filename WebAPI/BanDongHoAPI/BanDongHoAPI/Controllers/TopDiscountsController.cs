using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BanDongHoAPI.Models;

namespace BanDongHoAPI.Controllers
{
    public class TopDiscountsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public TopDiscountsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/SanPhams top 7 Best Selling Product
        public IEnumerable<SanPham> GetBestSellingProduct()
        {
            List<SanPham> lsItems = db.SanPham.OrderByDescending(p =>  p.phan_tram_khuyen_mai).Take(5).ToList();
            return lsItems;
        }
    }
}
