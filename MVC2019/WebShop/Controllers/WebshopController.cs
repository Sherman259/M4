using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using WebShop.Models;

namespace WebShop.Controllers
{
    public class WebshopController : Controller
    {
        // GET: Webshop
        private WebshopEntities db = new WebshopEntities();

        //GET: Proizvodi

        public ActionResult Index();
        {
        var proizvodi = DbConfiguration.Proizvodi.Include(p => p.MjereProizvoda);
        return View(proizvodi.ToList());
        }
    }
}