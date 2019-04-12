using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShop.Models;

namespace WebShop.Controllers
{
    public class CartController : Controller
        
    {
        private WebshopEntities db = new WebshopEntities();
        public static List<Proizvodi> LstProizvodi = new List<Proizvodi>;

        // GET: Cart
        public ActionResult Index()
        {
            if (Session ["Cart"] ! = null)
                {
                LstProizvodi = Session["Cart"] as List<Proizvodi>;
                }
            return View(LstProizvodi);
        }


        public ActionResult AddToCart(int id)
        {
            Proizvodi proizvod = db.Proizvodi.Find(id); 
            LstProizvodi.Add(proizvod);
            Session["Cart"] = LstProizvodi;
            if (proizvod == null)
            {
                return HttpNotFound ("Greska: Proizvod nije nadjen")
            }

            var proizvod = db.Proizvodi.Include(p => p.MjereProizvoda);
        }
    }

}