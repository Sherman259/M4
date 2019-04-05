using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication7.Controllers
{
    public class Osoba : Controller
    {
        
        public string ime { get; set; }
        public string prezime { get; set; }
        public string Mjestostanovanja { get; set; }
        
    }
}

private string[] mjesta = new string[] { "Split", "Osijek", "Zagreb" };
public ViewResult FormHelper()
{
    ViewBag.mjesta = mjesta;
    return View(new Osoba());

}

[HttpPost]
public ViewResult FormHelper(Osoba osoba)
{
    ViewBag.mjesta = this.mjesta;
    ViewBag.Poruka = "Podatci uneseni!";
    return ViewResult(osoba);
}
