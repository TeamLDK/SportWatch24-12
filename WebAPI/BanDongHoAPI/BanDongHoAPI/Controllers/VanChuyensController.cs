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
    public class VanChuyensController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();


        public VanChuyensController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/VanChuyens
        public IEnumerable<VanChuyen> GetVanChuyen()
        {
            return db.VanChuyen.ToList();
        }

        // GET: api/VanChuyens/5
        [ResponseType(typeof(VanChuyen))]
        public IHttpActionResult GetVanChuyen(int id)
        {
            VanChuyen vanChuyen = db.VanChuyen.Find(id);
            if (vanChuyen == null)
            {
                return NotFound();
            }

            return Ok(vanChuyen);
        }

        // PUT: api/VanChuyens/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutVanChuyen(int id, VanChuyen vanChuyen)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != vanChuyen.id_don_vi_van_chuyen)
            {
                return BadRequest();
            }

            db.Entry(vanChuyen).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!VanChuyenExists(id))
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

        // POST: api/VanChuyens
        [ResponseType(typeof(VanChuyen))]
        public IHttpActionResult PostVanChuyen(VanChuyen vanChuyen)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.VanChuyen.Add(vanChuyen);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = vanChuyen.id_don_vi_van_chuyen }, vanChuyen);
        }

        // DELETE: api/VanChuyens/5
        [ResponseType(typeof(VanChuyen))]
        public IHttpActionResult DeleteVanChuyen(int id)
        {
            VanChuyen vanChuyen = db.VanChuyen.Find(id);
            if (vanChuyen == null)
            {
                return NotFound();
            }

            db.VanChuyen.Remove(vanChuyen);
            db.SaveChanges();

            return Ok(vanChuyen);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool VanChuyenExists(int id)
        {
            return db.VanChuyen.Count(e => e.id_don_vi_van_chuyen == id) > 0;
        }
    }
}