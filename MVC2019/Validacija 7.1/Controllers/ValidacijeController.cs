using Validacija_7._1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Validacija_7._1.Controllers
{
    public class ValidacijeController : Controller
    { 
        // GET: Validacije
        public ActionResult IzdavanjeRacuna()
        {
            return View(new Racun() { Datum = DateTime.Now, BrojRacuna = "/" + DateTime.Now.Year.ToString() });
        }

        [HttpPost]
        public ViewResult Izdavanjeracuna(Racun racun)
        {
            //obvezne vrijednosti
            if (string.IsNullOrEmpty(racun.BrojRacuna))

                ModelState.AddModelError("BrojRacuna", "Broj računa je obvezan!");
        }
        if (string.IsNullorEmpty(racun.Zaposlenik))
        {
           ModelState.AddMdelError("Zaposlenik", "Zaposlenik je obvezan!");
    
        }
        
              if (string.IsNullOrEmpty(racun.Kupac))
          {
             ModelState.AddModelError("Kupac", "Kupac je obvezan!");
          }
          // model-level validacija
          if (ModelState.IsValidField("Datum"))
             {
           if (racun.Datum< DateTime.Today.AddDays (-3))
            {
             ModelState.AddModelError("", "Datum ne smije biti manji za više od 3 dana!");
             }
             }
    // ukupna provjera validacije
    if (ModelState.IsValid)
    {
    return View("RacunIzdan", racun);
    }else
{
return View();
}
}
}
}



    
