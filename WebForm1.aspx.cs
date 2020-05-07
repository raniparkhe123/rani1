using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Session1"] = "Session 1 Data";
            Session["Session2"] = "Session 2 Data";

            Response.Write("Session 1 Data = " + Session[0].ToString());
            Response.Write("</br>");
            Response.Write("Session 2 Data = " + Session[1].ToString());

        }
    }
}