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
    public class BlogsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();

        
        public BlogsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/Blogs
        public IQueryable<Blog> GetBlog()
        {
            return db.Blog.OrderByDescending(x => x.id_blog);
        }
        // GET: api/Blogs with user admin
        public IQueryable<Blog> GetBlog(string username, string date, string search)
        {
            if (username != null)
            {
                return db.Blog.Where(b => b.username == username).OrderByDescending(x => x.id_blog);
            }
            else if (date != null)
            {
                DateTime dt = DateTime.Parse(date);
                return db.Blog.Where(b => DateTime.Compare((DateTime)b.time, dt) == 0).OrderByDescending(x => x.id_blog);
            } else
            {
                return db.Blog.Where(b => b.title.Contains(search)).OrderByDescending(x => x.id_blog);
            }
        }


        // GET: api/Blogs/5
        [ResponseType(typeof(Blog))]
        public IHttpActionResult GetBlog(int id)
        {
            Blog blog = db.Blog.Find(id);
            if (blog == null)
            {
                return NotFound();
            }

            return Ok(blog);
        }

        // PUT: api/Blogs/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutBlog(int id, Blog blog)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != blog.id_blog)
            {
                return BadRequest();
            }

            db.Entry(blog).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!BlogExists(id))
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

        // POST: api/Blogs
        [ResponseType(typeof(Blog))]
        public IHttpActionResult PostBlog(Blog blog)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Blog.Add(blog);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = blog.id_blog }, blog);
        }

        // DELETE: api/Blogs/5
        [ResponseType(typeof(Blog))]
        public IHttpActionResult DeleteBlog(int id)
        {
            Blog blog = db.Blog.Find(id);
            if (blog == null)
            {
                return NotFound();
            }

            db.Blog.Remove(blog);
            db.SaveChanges();

            return Ok(blog);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool BlogExists(int id)
        {
            return db.Blog.Count(e => e.id_blog == id) > 0;
        }
    }
}