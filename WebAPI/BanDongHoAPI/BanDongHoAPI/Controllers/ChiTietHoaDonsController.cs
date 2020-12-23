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
    public class ChiTietHoaDonsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();

        public ChiTietHoaDonsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/ChiTietHoaDons
        public IQueryable<ChiTietHoaDon> GetChiTietHoaDon()
        {
            return db.ChiTietHoaDon;
        }

        // GET: api/ChiTietHoaDons/5
        public IEnumerable<ChiTietHoaDon> GetChiTietHoaDon(string id)
        {
            List<ChiTietHoaDon> chiTietHoaDon = db.ChiTietHoaDon.Where(x => x.id_hoa_don == id).ToList();
            return chiTietHoaDon;
        }

        // PUT: api/ChiTietHoaDons/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutChiTietHoaDon(string id, ChiTietHoaDon chiTietHoaDon)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != chiTietHoaDon.id_hoa_don)
            {
                return BadRequest();
            }

            db.Entry(chiTietHoaDon).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ChiTietHoaDonExists(id))
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

        // POST: api/ChiTietHoaDons
        [ResponseType(typeof(ChiTietHoaDon))]
        public IHttpActionResult PostChiTietHoaDon(ChiTietHoaDon chiTietHoaDon)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ChiTietHoaDon.Add(chiTietHoaDon);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (ChiTietHoaDonExists(chiTietHoaDon.id_hoa_don))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = chiTietHoaDon.id_hoa_don }, chiTietHoaDon);
        }

        // DELETE: api/ChiTietHoaDons/5
        [ResponseType(typeof(ChiTietHoaDon))]
        public IHttpActionResult DeleteChiTietHoaDon(string id)
        {
            ChiTietHoaDon chiTietHoaDon = db.ChiTietHoaDon.Find(id);
            if (chiTietHoaDon == null)
            {
                return NotFound();
            }

            db.ChiTietHoaDon.Remove(chiTietHoaDon);
            db.SaveChanges();

            return Ok(chiTietHoaDon);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ChiTietHoaDonExists(string id)
        {
            return db.ChiTietHoaDon.Count(e => e.id_hoa_don == id) > 0;
        }
    }
}