using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HHO_NGO.web_pages.donor
{
    public partial class list_feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["d_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
        }
    }
}