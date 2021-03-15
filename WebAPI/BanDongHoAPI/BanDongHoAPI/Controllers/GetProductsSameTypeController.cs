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
    public class GetProductsSameTypeController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public GetProductsSameTypeController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/SanPhams
        public IQueryable<SanPham> GetImgSanPham(string id_danh_muc, string id_thuong_hieu)
        {
            IQueryable<SanPham> item;

            if (id_danh_muc != null && id_thuong_hieu != null)
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                item = db.SanPham.Where(x => x.id_danh_muc == iDanhMuc || x.id_thuong_hieu == iThuongHieu).Take(6);
            }else if (id_danh_muc == null && id_thuong_hieu != null)
            {
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                item = db.SanPham.Where(x => x.id_thuong_hieu == iThuongHieu).Take(6);
            }
            else if (id_danh_muc != null && id_thuong_hieu == null)
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                item = db.SanPham.Where(x => x.id_danh_muc == iDanhMuc).Take(6);
            }
            else
            {
                item = null;
            }
            return item;
        }
    }
}
