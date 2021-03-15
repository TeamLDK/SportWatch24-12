﻿using System;
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
    public class KhachHangsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();

        public KhachHangsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/KhachHangs
        public IEnumerable<KhachHang> GetKhachHang()
        {
            return db.KhachHang.ToList();
        }

        // GET: api/KhachHangs/5
        [ResponseType(typeof(KhachHang))]
        public IHttpActionResult GetKhachHang(int id)
        {
            KhachHang khachHang = db.KhachHang.Find(id);
            if (khachHang == null)
            {
                return NotFound();
            }

            return Ok(khachHang);
        }

        // GET: api/KhachHangs/5 with username
        [ResponseType(typeof(KhachHang))]
        public IHttpActionResult GetKhachHang(string username)
        {
            KhachHang khachHang = db.KhachHang.FirstOrDefault(x => x.username_kh == username );
            if (khachHang == null)
            {
                return NotFound();
            }

            return Ok(khachHang);
        }


        // GET: api/KhachHangs/5
        [ResponseType(typeof(KhachHang))]
        public IHttpActionResult GetKhachHang(string username, string password)
        {
            KhachHang result = db.KhachHang.FirstOrDefault(x => x.username_kh == username && x.password_kh == password);
            if (result == null)
            {
                return NotFound();
            }

            return Ok(result);
        }


        // PUT: api/KhachHangs/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutKhachHang(int id, KhachHang khachHang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            KhachHang temp = db.KhachHang.FirstOrDefault(x => x.id_kh == id);
            if (temp == null)
            {
                return BadRequest();
            }
            if(khachHang.password_kh != null)
            {
                temp.password_kh = khachHang.password_kh;
            }
            if (khachHang.ten_kh != null)
            {
                temp.ten_kh = khachHang.ten_kh;
            }
            if (khachHang.sdt_kh != null)
            {
                temp.sdt_kh = khachHang.sdt_kh;
            }
            if (khachHang.email_kh != null)
            {
                temp.email_kh = khachHang.email_kh;
            }
            if (khachHang.dia_chi_kh != null)
            {
                temp.dia_chi_kh = khachHang.dia_chi_kh;
            }

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!KhachHangExists(id))
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





        // POST: api/KhachHangs
        [ResponseType(typeof(KhachHang))]
        public IHttpActionResult PostKhachHang(KhachHang khachHang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.KhachHang.Add(khachHang);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = khachHang.id_kh }, khachHang);
        }

        // DELETE: api/KhachHangs/5
        [ResponseType(typeof(KhachHang))]
        public IHttpActionResult DeleteKhachHang(int id)
        {
            KhachHang khachHang = db.KhachHang.Find(id);
            if (khachHang == null)
            {
                return NotFound();
            }

            db.KhachHang.Remove(khachHang);
            db.SaveChanges();

            return Ok(khachHang);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool KhachHangExists(int id)
        {
            return db.KhachHang.Count(e => e.id_kh == id) > 0;
        }
    }
}