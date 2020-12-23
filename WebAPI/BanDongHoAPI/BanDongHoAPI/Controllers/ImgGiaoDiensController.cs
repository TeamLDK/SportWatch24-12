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
    public class ImgGiaoDiensController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();

        

        public ImgGiaoDiensController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }

        // GET: api/ImgGiaoDiens
        public IEnumerable<ImgGiaoDien> GetImgGiaoDien()
        {
            return db.ImgGiaoDien.ToList();
        }

        // GET: api/ImgGiaoDiens/5
        [ResponseType(typeof(ImgGiaoDien))]
        public IHttpActionResult GetImgGiaoDien(int id)
        {
            ImgGiaoDien imgGiaoDien = db.ImgGiaoDien.Find(id);
            if (imgGiaoDien == null)
            {
                return NotFound();
            }

            return Ok(imgGiaoDien);
        }

        // PUT: api/ImgGiaoDiens/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutImgGiaoDien(int id, ImgGiaoDien imgGiaoDien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != imgGiaoDien.id_img)
            {
                return BadRequest();
            }

            db.Entry(imgGiaoDien).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ImgGiaoDienExists(id))
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

        // POST: api/ImgGiaoDiens
        [ResponseType(typeof(ImgGiaoDien))]
        public IHttpActionResult PostImgGiaoDien(ImgGiaoDien imgGiaoDien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ImgGiaoDien.Add(imgGiaoDien);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = imgGiaoDien.id_img }, imgGiaoDien);
        }

        // DELETE: api/ImgGiaoDiens/5
        [ResponseType(typeof(ImgGiaoDien))]
        public IHttpActionResult DeleteImgGiaoDien(int id)
        {
            ImgGiaoDien imgGiaoDien = db.ImgGiaoDien.Find(id);
            if (imgGiaoDien == null)
            {
                return NotFound();
            }

            db.ImgGiaoDien.Remove(imgGiaoDien);
            db.SaveChanges();

            return Ok(imgGiaoDien);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ImgGiaoDienExists(int id)
        {
            return db.ImgGiaoDien.Count(e => e.id_img == id) > 0;
        }
    }
}