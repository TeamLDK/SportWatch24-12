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
    public class GetImageProductController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public GetImageProductController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }

        // GET: api/DanhMucSanPhams/5
        [ResponseType(typeof(ImgSanPham))]
        public IHttpActionResult GetImageProduct(string id)
        {
            ImgSanPham obj = db.ImgSanPham.FirstOrDefault(x => x.id_san_pham == id && x.main == true);
            if (obj != null)
            {
                return Ok(obj);
            }
            else
            {
                return NotFound();
            }
        }
    }
}
