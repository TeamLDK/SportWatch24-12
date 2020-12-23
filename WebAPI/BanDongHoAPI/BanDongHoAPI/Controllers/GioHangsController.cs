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
    public class GioHangsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public GioHangsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }


        // GET: api/GioHang
        public IEnumerable<GioHang> GetGioHang(int id_kh)
        {
            List<GioHang> result = db.GioHang.Where(x => x.id_kh == id_kh).ToList();
            return result.ToList();
        }


        

        // PUT: api/GioHangs/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutGioHang(int id, GioHang gioHang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != gioHang.id_kh)
            {
                return BadRequest();
            }

            db.Entry(gioHang).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GioHangExists(id))
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

        // POST: api/GioHangs
        [ResponseType(typeof(GioHang))]
        public IHttpActionResult PostGioHang(GioHang gioHang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.GioHang.Add(gioHang);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (GioHangExists(gioHang.id_kh))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = gioHang.id_kh }, gioHang);
        }

        // DELETE: api/GioHang/5
        [ResponseType(typeof(GioHang))]
        public IHttpActionResult DeleteKhachHang(int id_kh, string id_product)
        {
            GioHang gioHang = db.GioHang.Find(id_kh, id_product);
            if (gioHang == null)
            {
                return NotFound();
            }

            db.GioHang.Remove(gioHang);
            db.SaveChanges();

            return Ok(gioHang);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool GioHangExists(int id)
        {
            return db.GioHang.Count(e => e.id_kh == id) > 0;
        }
    }
}