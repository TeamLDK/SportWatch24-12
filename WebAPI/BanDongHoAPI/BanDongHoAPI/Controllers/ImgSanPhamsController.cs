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
    public class ImgSanPhamsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public ImgSanPhamsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/ImgSanPhams
        public IQueryable<ImgSanPham> GetImgSanPham(string id_sp)
        {
            return db.ImgSanPham.Where(x => x.id_san_pham == id_sp);
        }

        // GET: api/ImgSanPhams/5
        [ResponseType(typeof(ImgSanPham))]
        public IHttpActionResult GetImgSanPham(int id)
        {
            ImgSanPham imgSanPham = db.ImgSanPham.Find(id);
            if (imgSanPham == null)
            {
                return NotFound();
            }

            return Ok(imgSanPham);
        }

        // PUT: api/ImgSanPhams/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutImgSanPham(int id, ImgSanPham imgSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != imgSanPham.id_img)
            {
                return BadRequest();
            }

            db.Entry(imgSanPham).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ImgSanPhamExists(id))
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

        // POST: api/ImgSanPhams
        [ResponseType(typeof(ImgSanPham))]
        public IHttpActionResult PostImgSanPham(ImgSanPham imgSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ImgSanPham.Add(imgSanPham);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = imgSanPham.id_img }, imgSanPham);
        }

        // DELETE: api/ImgSanPhams/5
        [ResponseType(typeof(ImgSanPham))]
        public IHttpActionResult DeleteImgSanPham(int id)
        {
            ImgSanPham imgSanPham = db.ImgSanPham.Find(id);
            if (imgSanPham == null)
            {
                return NotFound();
            }

            db.ImgSanPham.Remove(imgSanPham);
            db.SaveChanges();

            return Ok(imgSanPham);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ImgSanPhamExists(int id)
        {
            return db.ImgSanPham.Count(e => e.id_img == id) > 0;
        }
    }
}