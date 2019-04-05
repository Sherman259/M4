using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace kontroler_4._11.Controllers
{
    public class ViewController : Controller
    {
       
        public ViewResult SimpleBindMetoda()
        {
            return View("SimpleBindMetoda");
        }

        [HttpPost]
        public ViewResult SimpleBindMetoda (string ime)
        {
            string pozdrav = "Pozdrav," + ime + "!";
            return View("SimpleBind", (object)pozdrav);
        }
    }

}