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
    public class WishlistsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();

        public WishlistsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/Wishlists
        public IQueryable<Wishlist> GetWishlist()
        {
            return db.Wishlist;
        }

        // GET: api/Wishlists
        public IEnumerable<Wishlist> GetWihslist(int id_kh)
        {
            return db.Wishlist.Where(x => x.id_kh == id_kh).ToList();
        }

        // GET: api/Wishlists/5
        [ResponseType(typeof(Wishlist))]
        public IHttpActionResult GetWishlist(int id)
        {
            Wishlist wishlist = db.Wishlist.Find(id);
            if (wishlist == null)
            {
                return NotFound();
            }

            return Ok(wishlist);
        }

        // PUT: api/Wishlists/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutWishlist(int id, Wishlist wishlist)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != wishlist.id_kh)
            {
                return BadRequest();
            }

            db.Entry(wishlist).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!WishlistExists(id))
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

        // POST: api/Wishlists
        [ResponseType(typeof(Wishlist))]
        public IHttpActionResult PostWishlist(Wishlist wishlist)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Wishlist.Add(wishlist);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (WishlistExists(wishlist.id_kh))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = wishlist.id_kh }, wishlist);
        }

        // DELETE: api/Wishlists/5
        [ResponseType(typeof(Wishlist))]
        public IHttpActionResult DeleteWishlist(int id_kh, string id_sp)
        {
            Wishlist wishlist = db.Wishlist.FirstOrDefault(x => x.id_kh == id_kh && x.id_san_pham == id_sp);
            if (wishlist == null)
            {
                return NotFound();
            }

            db.Wishlist.Remove(wishlist);
            db.SaveChanges();

            return Ok(wishlist);
        }


        // DELETE: api/Wishlists/5 ALL
        [ResponseType(typeof(Wishlist))]
        public IHttpActionResult DeleteWishlist(string id_kh)
        {

            if (id_kh == null)
            {
                return NotFound();
            }
            int iID = Convert.ToInt32(id_kh);
            var ls = db.Wishlist.Where(x => x.id_kh == iID);
            db.Wishlist.RemoveRange(db.Wishlist.Where(x => x.id_kh == iID));
            db.SaveChanges();

            return Ok(ls);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool WishlistExists(int id)
        {
            return db.Wishlist.Count(e => e.id_kh == id) > 0;
        }
    }
}