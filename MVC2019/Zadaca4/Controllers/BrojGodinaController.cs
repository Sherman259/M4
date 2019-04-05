using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Zadaca4.Controllers
{
    public class BrojGodinaController : Controller
    {
        // GET: BrojGodina
        public ActionResult RacunajBrojGodina()
        {
            return View();
        }
        [HttpPost]
        public ActionResult RacunajBrojGodina(DateTime datum)
        {
            int danasnji = (int)((DateTime.Now - datum).TotalDays / 365);

            return View((object)datum);
        }
    }
}