using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebShop.Controllers
{
    public class CheckoutController : Controller
    {

        private WebShopEntities db = new WebShopEntities();
        public ActionResult CreateUser()


        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateUser([Bind(Include = " Id, Ime, Prezime, Email,AdresaDostave, Kontakt, Napomena")]) Korisnici korisnici)
            {
            if (ModelState.IsValid)
            {
            db.Korisnici.Add(korisnici);
            db.SaveChanges();
            return RedirectToAction("CreateOrder", korisnici);
           }
               return View(koinici);
    }
}