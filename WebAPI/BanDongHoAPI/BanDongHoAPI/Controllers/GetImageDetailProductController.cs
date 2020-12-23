using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BanDongHoAPI.Models;
using System.Web.Http;
using System.Web.Http.Description;
namespace BanDongHoAPI.Controllers
{
    public class GetImageDetailProductController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public GetImageDetailProductController()
        {
            db.Configuration.ProxyCreationEnabled = false;
        }


        // GET: api/GetImagesDetailProduct/ id
        [ResponseType(typeof(ImgSanPham))]
        public IHttpActionResult GetImgDetailProduct(string id)
        {
            var obj = db.ImgSanPham.Where(x => x.id_san_pham == id);
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