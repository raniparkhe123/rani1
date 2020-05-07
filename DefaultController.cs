using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication8.Controllers
{
    public class DefaultController : Controller
    {
        
        public ActionResult Index()
        {
            ViewBag["Countries"] = new List<string>
            {
                "India",
                "US",
                "UK",
                "Canada"
            };
            return View();
        }
    }
}