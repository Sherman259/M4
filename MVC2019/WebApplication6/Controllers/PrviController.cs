using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication6.Controllers
{
    public class PrviController : Controller
    {
        // GET: Prvi/Metodparametrima/1349
        public ActionResult Metodparametrima(int id)
        {
            //return View();
            return Content(id.ToString());

        }
    }
}