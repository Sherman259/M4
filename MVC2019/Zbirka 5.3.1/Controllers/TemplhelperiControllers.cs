using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Zbirka_5._3._1.Models;

namespace Zbirka_5._3._1.Controllers
{
    public class TemplhelperiControllers : Controller
    {
        // GET: TemplhelperiControllers
        public ViewResult HtmlEditorView()
        {
            return View( new OsobaTempl());
        }

        [HttpPost]
        public ViewResult HtmlEditorView(OsobaTempl osoba)
        {
            return View("Htmllabeldisplay", osoba);
        }
    }
}