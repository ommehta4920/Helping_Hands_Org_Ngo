using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HHO_NGO.web_pages
{
    public partial class donation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_donation_top_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/web_pages/login.aspx");
        }

        protected void btn_donation_bottom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/web_pages/login.aspx");
        }
    }
}