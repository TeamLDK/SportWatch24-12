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
    public class DangKiNhanTinsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public DangKiNhanTinsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }

        // GET: api/DangKiNhanTins
        public IEnumerable<DangKiNhanTin> GetDangKiNhanTin()
        {
            return db.DangKiNhanTin.ToList();
        }

        // GET: api/DangKiNhanTins/5
        [ResponseType(typeof(DangKiNhanTin))]
        public IHttpActionResult GetDangKiNhanTin(int id)
        {
            DangKiNhanTin dangKiNhanTin = db.DangKiNhanTin.Find(id);
            if (dangKiNhanTin == null)
            {
                return NotFound();
            }

            return Ok(dangKiNhanTin);
        }

        // PUT: api/DangKiNhanTins/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutDangKiNhanTin(int id, DangKiNhanTin dangKiNhanTin)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != dangKiNhanTin.id_dang_ki_nhan_tin)
            {
                return BadRequest();
            }

            db.Entry(dangKiNhanTin).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DangKiNhanTinExists(id))
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

        // POST: api/DangKiNhanTins
        [ResponseType(typeof(DangKiNhanTin))]
        public IHttpActionResult PostDangKiNhanTin(DangKiNhanTin dangKiNhanTin)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.DangKiNhanTin.Add(dangKiNhanTin);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = dangKiNhanTin.id_dang_ki_nhan_tin }, dangKiNhanTin);
        }

        // DELETE: api/DangKiNhanTins/5
        [ResponseType(typeof(DangKiNhanTin))]
        public IHttpActionResult DeleteDangKiNhanTin(int id)
        {
            DangKiNhanTin dangKiNhanTin = db.DangKiNhanTin.Find(id);
            if (dangKiNhanTin == null)
            {
                return NotFound();
            }

            db.DangKiNhanTin.Remove(dangKiNhanTin);
            db.SaveChanges();

            return Ok(dangKiNhanTin);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool DangKiNhanTinExists(int id)
        {
            return db.DangKiNhanTin.Count(e => e.id_dang_ki_nhan_tin == id) > 0;
        }
    }
}