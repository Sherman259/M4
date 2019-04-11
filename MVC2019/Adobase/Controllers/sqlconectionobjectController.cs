using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Adobase.Controllers
{
    public class sqlconectionobjectController : Controller
    {
        // GET: sqlconectionobject
        public ActionResult Index()
        {
            connString = @"data Source=(localdb)\MSSQLlocalDB;Initial Catalog="dbAlgebra";Integrated Security=True";

            //Nakon toga instanca SQLconnection
            sqlconnection con = new sqlconnection(connString);




            try
            {
                conn.Open();
                if (conn.ModelState == System.Data.ConnectionState)
                {
                    Response.Write("Konekcija je uspjela");
                }
            }
            
            {
                catch(Exception ex)
                {
                    Response.Write("Neka greška" + ex.ToString());
                        
                }
            }
            return View();
        }
    }
}