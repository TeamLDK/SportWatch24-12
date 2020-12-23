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
    public class ThuongHieusController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();


        public ThuongHieusController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/ThuongHieus
        public IEnumerable<ThuongHieu> GetThuongHieu()
        {
            return db.ThuongHieu.ToList();
        }

        // GET: api/ThuongHieus/5
        [ResponseType(typeof(ThuongHieu))]
        public IHttpActionResult GetThuongHieu(int id)
        {
            ThuongHieu thuongHieu = db.ThuongHieu.Find(id);
            if (thuongHieu == null)
            {
                return NotFound();
            }

            return Ok(thuongHieu);
        }

        // PUT: api/ThuongHieus/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutThuongHieu(int id, ThuongHieu thuongHieu)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != thuongHieu.id_thuong_hieu)
            {
                return BadRequest();
            }

            db.Entry(thuongHieu).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ThuongHieuExists(id))
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

        // POST: api/ThuongHieus
        [ResponseType(typeof(ThuongHieu))]
        public IHttpActionResult PostThuongHieu(ThuongHieu thuongHieu)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ThuongHieu.Add(thuongHieu);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = thuongHieu.id_thuong_hieu }, thuongHieu);
        }

        // DELETE: api/ThuongHieus/5
        [ResponseType(typeof(ThuongHieu))]
        public IHttpActionResult DeleteThuongHieu(int id)
        {
            ThuongHieu thuongHieu = db.ThuongHieu.Find(id);
            if (thuongHieu == null)
            {
                return NotFound();
            }

            db.ThuongHieu.Remove(thuongHieu);
            db.SaveChanges();

            return Ok(thuongHieu);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ThuongHieuExists(int id)
        {
            return db.ThuongHieu.Count(e => e.id_thuong_hieu == id) > 0;
        }
    }
}