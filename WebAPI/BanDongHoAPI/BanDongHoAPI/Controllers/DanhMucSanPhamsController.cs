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
    public class DanhMucSanPhamsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();

        public DanhMucSanPhamsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/DanhMucSanPhams
        public IEnumerable<DanhMucSanPham> GetDanhMucSanPham()
        {
            return db.DanhMucSanPham.ToList();
        }


        // GET: api/DanhMucSanPhams/5
        [ResponseType(typeof(DanhMucSanPham))]
        public IHttpActionResult GetDanhMucSanPham(int id)
        {
            DanhMucSanPham danhMucSanPham = db.DanhMucSanPham.Find(id);
            if (danhMucSanPham == null)
            {
                return NotFound();
            }

            return Ok(danhMucSanPham);
        }

        // PUT: api/DanhMucSanPhams/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutDanhMucSanPham(int id, DanhMucSanPham danhMucSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != danhMucSanPham.id_danh_muc)
            {
                return BadRequest();
            }

            db.Entry(danhMucSanPham).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DanhMucSanPhamExists(id))
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

        // POST: api/DanhMucSanPhams
        [ResponseType(typeof(DanhMucSanPham))]
        public IHttpActionResult PostDanhMucSanPham(DanhMucSanPham danhMucSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.DanhMucSanPham.Add(danhMucSanPham);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = danhMucSanPham.id_danh_muc }, danhMucSanPham);
        }

        // DELETE: api/DanhMucSanPhams/5
        [ResponseType(typeof(DanhMucSanPham))]
        public IHttpActionResult DeleteDanhMucSanPham(int id)
        {
            DanhMucSanPham danhMucSanPham = db.DanhMucSanPham.Find(id);
            if (danhMucSanPham == null)
            {
                return NotFound();
            }

            db.DanhMucSanPham.Remove(danhMucSanPham);
            db.SaveChanges();

            return Ok(danhMucSanPham);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool DanhMucSanPhamExists(int id)
        {
            return db.DanhMucSanPham.Count(e => e.id_danh_muc == id) > 0;
        }
    }
}