using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using BanDongHoAPI.Models;

namespace BanDongHoAPI.Controllers
{
    public class SanPhamsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public SanPhamsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/SanPhams
        public IEnumerable<SanPham> GetSanPham()
        {
            return db.SanPham.ToList();
        }

        // GET: api/SanPhams with id_danh_muc, id_thuong_hieu
        public IQueryable<SanPham> GetSanPham(string id_danh_muc, string id_thuong_hieu, string min, string max)
        {

            if (id_danh_muc != null && id_thuong_hieu != null && min != null && max != null)
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                int iMin = Convert.ToInt32(min);
                int iMax = Convert.ToInt32(max);
                return db.SanPham.Where(x => x.id_danh_muc == iDanhMuc &&
                                        x.id_thuong_hieu == iThuongHieu &&
                                        x.gia_san_pham >= iMin && 
                                        x.gia_san_pham <= iMax);
            }
            if (id_danh_muc != null && id_thuong_hieu != null && min == null && max == null)
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                return db.SanPham.Where(x => x.id_danh_muc == iDanhMuc &&
                                        x.id_thuong_hieu == iThuongHieu);
            }
            else if (id_danh_muc != null && id_thuong_hieu == null && min == null && max == null)
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                return db.SanPham.Where(x => x.id_danh_muc == iDanhMuc);
            }
            else if (id_danh_muc == null && id_thuong_hieu != null && min == null && max == null)
            {
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                return db.SanPham.Where(x => x.id_thuong_hieu == iThuongHieu);
            }
            else if (id_danh_muc == null && id_thuong_hieu == null && min != null && max == null)
            {
                int iMin = Convert.ToInt32(min);
                return db.SanPham.Where(x => x.gia_san_pham >= iMin);
            }
            else if (id_danh_muc == null && id_thuong_hieu == null && min == null && max != null)
            {
                int iMax = Convert.ToInt32(min);
                return db.SanPham.Where(x => x.gia_san_pham <= iMax);
            }
            else if (id_danh_muc != null && id_thuong_hieu != null && min == null && max != null)
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                return db.SanPham.Where(x => x.id_danh_muc == iDanhMuc &&
                                        x.id_thuong_hieu == iThuongHieu);
            }
            else if (id_danh_muc == null && id_thuong_hieu == null && min != null && max != null)
            {
                int iMin = Convert.ToInt32(min);
                int iMax = Convert.ToInt32(max);
                return db.SanPham.Where(x => x.gia_san_pham >= iMin &&
                                        x.gia_san_pham <= iMax);
            }
            else if (id_danh_muc != null && id_thuong_hieu == null && min != null && max == null)//
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                int iMin = Convert.ToInt32(min);
                return db.SanPham.Where(x => x.gia_san_pham >= iMin &&
                                        x.id_danh_muc == iDanhMuc);
            }
            else if (id_danh_muc != null && id_thuong_hieu == null && min == null && max != null)
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                int iMax = Convert.ToInt32(max);
                return db.SanPham.Where(x => x.id_danh_muc == iDanhMuc &&
                                        x.gia_san_pham <= iMax);
            }
            else if (id_danh_muc == null && id_thuong_hieu != null && min != null && max == null)
            {
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                int iMin = Convert.ToInt32(min);
                return db.SanPham.Where(x => x.gia_san_pham >= iMin &&
                                        x.id_thuong_hieu == iThuongHieu);
            }
            else if (id_danh_muc == null && id_thuong_hieu != null && min == null && max != null)
            {
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                int iMax = Convert.ToInt32(max);
                return db.SanPham.Where(x => x.id_thuong_hieu == iThuongHieu &&
                                        x.gia_san_pham <= iMax);
            }
            if (id_danh_muc != null && id_thuong_hieu == null && min != null && max != null)
            {
                int iDanhMuc = Convert.ToInt32(id_danh_muc);
                int iMin = Convert.ToInt32(min);
                int iMax = Convert.ToInt32(max);
                return db.SanPham.Where(x => x.id_danh_muc == iDanhMuc &&
                                        x.gia_san_pham >= iMin &&
                                        x.gia_san_pham <= iMax);
            }
            if (id_danh_muc == null && id_thuong_hieu != null && min != null && max != null)
            {
                int iThuongHieu = Convert.ToInt32(id_thuong_hieu);
                int iMin = Convert.ToInt32(min);
                int iMax = Convert.ToInt32(max);
                return db.SanPham.Where(x => x.id_thuong_hieu == iThuongHieu &&
                                        x.gia_san_pham >= iMin &&
                                        x.gia_san_pham <= iMax);
            }
            else
            {
                return null;
            }
        }

        // GET: api/SanPhams/5
        [ResponseType(typeof(SanPham))]
        public IHttpActionResult GetSanPham(string id)
        {
            SanPham sanPham = db.SanPham.Find(id);
            if (sanPham == null)
            {
                return NotFound();
            }

            return Ok(sanPham);
        }

        // PUT: api/SanPhams/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutSanPham(string id, SanPham sanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != sanPham.id_san_pham)
            {
                return BadRequest();
            }

            db.Entry(sanPham).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SanPhamExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/SanPhams
        [ResponseType(typeof(SanPham))]
        public IHttpActionResult PostSanPham(SanPham sanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.SanPham.Add(sanPham);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (SanPhamExists(sanPham.id_san_pham))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = sanPham.id_san_pham }, sanPham);
        }

        // DELETE: api/SanPhams/5
        [ResponseType(typeof(SanPham))]
        public IHttpActionResult DeleteSanPham(string id)
        {
            SanPham sanPham = db.SanPham.Find(id);
            if (sanPham == null)
            {
                return NotFound();
            }

            db.SanPham.Remove(sanPham);
            db.SaveChanges();

            return Ok(sanPham);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SanPhamExists(string id)
        {
            return db.SanPham.Count(e => e.id_san_pham == id) > 0;
        }
    }
}