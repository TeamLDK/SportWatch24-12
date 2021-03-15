using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using BanDongHoAPI.Models;

namespace BanDongHoAPI.Controllers
{
    public class GetProductsBySearchController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public GetProductsBySearchController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/SanPham with key search
        public IQueryable<SanPham> GetBlog(string key)
        {
            if (key != null)
            {
                return db.SanPham.Where(b => b.ten_san_pham.Contains(key));
            }
            else
            {
                return null;
            }
        }
    }
}
