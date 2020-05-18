using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication8.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public string Method1()
        {
            return "<h1>Method1 Invoked</h1>";
        }

        [NonAction] //1st way 

        /*private string Method2()//2nd way*/
        public string Method2()
        {
            return "<h1>Method2 Invoked</h1>";
        }

    }
}