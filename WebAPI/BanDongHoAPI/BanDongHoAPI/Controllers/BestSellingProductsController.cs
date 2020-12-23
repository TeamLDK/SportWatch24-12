using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BanDongHoAPI.Models;

namespace BanDongHoAPI.Controllers
{
    public class BestSellingProductsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public BestSellingProductsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/SanPhams top 7 Best Selling Product
        public IEnumerable<SanPham> GetBestSellingProduct()
        {
            List<SanPham> lsItems = new List<SanPham>();
            var ls = db
            .ChiTietHoaDon.GroupBy(x => x.id_san_pham).OrderByDescending(c => c.Sum(y => y.so_luong))
            .Select(x => new { id_san_pham = x.Key, sum = x.Sum(y => y.so_luong) }).Take(7);
            foreach(var item in ls){
                SanPham it = db.SanPham.FirstOrDefault(x => x.id_san_pham == item.id_san_pham);
                lsItems.Add(it);
            }
            return lsItems;
        }
    }
}
