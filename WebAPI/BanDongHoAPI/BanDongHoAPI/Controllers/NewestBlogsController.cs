using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using BanDongHoAPI.Models;

namespace BanDongHoAPI.Controllers
{
    public class NewestBlogsController : ApiController
    {
        private BanDongHoEntities db = new BanDongHoEntities();
        public NewestBlogsController()
        {
            // Add the following code
            // problem will be solved
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET: api/Blogs
        public IQueryable<Blog> GetBlog()
        {
            return db.Blog.OrderByDescending(x => x.time).Take(3);
        }
    }
}
