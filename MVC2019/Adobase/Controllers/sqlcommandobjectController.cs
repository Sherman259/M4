using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Adobase.Controllers
{
    public class sqlcommandobjectController : Controller
    {
        // GET: sqlcommandobject
        public ActionResult Index()
        {
            return View();
        
        }
        public ActionResult Create ()
        {
            string connString = ConfigurationManager.ConectionStrings ["dbAlgebraConnstring"]
                using (SqlConnection conn = new SqlConnection(connString))
            {
                string cmdTxt = "";
                cmdTxt += "UPDATE[dbo].[tblTecajevi]"
                  + "SET[naziv] = 'Web Dev',"
                  +[opis] = <opis, nvarchar(max),>
                  +WHERE<Search Conditions,,>



            }
}
    }
}