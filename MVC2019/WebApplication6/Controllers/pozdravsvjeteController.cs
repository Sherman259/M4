using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication6.Controllers
{
    public class GeneratorizlazaController : Controller
    {
        // GET: pozdravsvjete
        public ActionResult Popis kosarice()
          
        {
            string model = "pozdrav svjete";
            return View((object)model);
        }
    }
}