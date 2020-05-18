using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication8.Controllers
{
    [Authorize]
    public class Home1Controller : Controller
    {
        // GET: Home1

        
        public ActionResult SecureMethod()
        {
            return View();
        }
        [AllowAnonymous]
        public ActionResult NonSecureMethod()
        {
            return View();
        }
    }
}