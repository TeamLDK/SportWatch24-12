using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BanDongHoAPI.Models;

namespace BanDongHoAPI.Controllers
{
    public class LatestProductsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public LatestProductsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/SanPhams top 7 Latest Products
        public IQueryable<SanPham> GetLatestProducts()
        {
            var lsItems = db.SanPham.OrderByDescending(x => x.ngay_them_san_pham).Take(5);
            return lsItems;
        }
    }
}
