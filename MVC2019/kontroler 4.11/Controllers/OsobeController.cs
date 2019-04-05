using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using kontroler. Models;

namespace kontroler_4._11.Controllers
{
    public class OsobeController : Controller
    {
        // GET: Osobe
        public ViewResult Popuniosobu ()
        {

            return View();

            

        }
        [HttpPost]
        public ViewResult Prikaziosobu (Osoba osoba)
        {
            return View(osoba);
        }
        //POST: Osoba/PopuniOsobu
        
    }
}
