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
    public class HoaDonsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();

        public HoaDonsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = true;
        }

        // GET: api/HoaDons
        public IEnumerable<HoaDon> GetHoaDon()
        {
            return db.HoaDon.ToList();
        }
        
        // GET: api/HoaDons
        public IEnumerable<HoaDon> GetHoaDon(int id_kh)
        {
            List<HoaDon> hoaDon = db.HoaDon.Where(x => x.id_kh == id_kh).ToList();
            return hoaDon;
        }

        // GET: api/HoaDons/5
        [ResponseType(typeof(HoaDon))]
        public IHttpActionResult GetHoaDon(string id)
        {
            HoaDon hoaDon = db.HoaDon.Find(id);
            if (hoaDon == null)
            {
                return NotFound();
            }

            return Ok(hoaDon);
        }

        // PUT: api/HoaDons/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutHoaDon(string id, HoaDon hoaDon)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hoaDon.id_hoa_don)
            {
                return BadRequest();
            }

            db.Entry(hoaDon).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!HoaDonExists(id))
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

        // POST: api/HoaDons
        [ResponseType(typeof(HoaDon))]
        public IHttpActionResult PostHoaDon(HoaDon hoaDon)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.HoaDon.Add(hoaDon);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (HoaDonExists(hoaDon.id_hoa_don))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = hoaDon.id_hoa_don }, hoaDon);
        }

        // DELETE: api/HoaDons/5
        [ResponseType(typeof(HoaDon))]
        public IHttpActionResult DeleteHoaDon(string id)
        {
            HoaDon hoaDon = db.HoaDon.Find(id);
            if (hoaDon == null)
            {
                return NotFound();
            }

            db.HoaDon.Remove(hoaDon);
            db.SaveChanges();

            return Ok(hoaDon);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool HoaDonExists(string id)
        {
            return db.HoaDon.Count(e => e.id_hoa_don == id) > 0;
        }
    }
}