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
        public IHttpActionResult PutGioHang(int id_kh, string id_sp, GioHang gioHang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            GioHang temp = db.GioHang.FirstOrDefault(x => x.id_kh == id_kh && x.id_san_pham == id_sp);
            if (temp == null)
            {
                return BadRequest();
            }
            temp.so_luong = gioHang.so_luong;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GioHangExists(id_kh))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return Ok(temp);
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
        [HttpDelete]
        [ResponseType(typeof(GioHang))]
        public IHttpActionResult DeleteKhachHang(int id_kh, string id_product)
        {
            
            if (id_product == null)
            {
                if(id_kh == 0)
                {
                    return NotFound();
                }
                var ls = db.GioHang.Where(x => x.id_kh == id_kh);
                db.GioHang.RemoveRange(ls);

                db.SaveChanges();

                return Ok(ls);
            }
            else
            {
                GioHang gioHang;
                gioHang = db.GioHang.FirstOrDefault(x => x.id_kh == id_kh && x.id_san_pham == id_product);
                if (gioHang == null)
                {
                    return NotFound();
                }

                db.GioHang.Remove(gioHang);
                db.SaveChanges();

                return Ok(gioHang);
            }


            
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