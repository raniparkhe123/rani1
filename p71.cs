using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication8.Controllers
{
    public class ChildController : Controller
    {
        // GET: Child
        public ActionResult Index()
        {
            return View();
        }

        [ChildActionOnly]
        public ActionResult Countries(List<string> countryNames)
        {
            return View(countryNames);
        }

    }
}