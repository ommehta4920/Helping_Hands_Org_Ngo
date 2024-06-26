using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HHO_NGO.web_pages
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/web_pages/contact.aspx");
        }

        protected void btn_register_click(object sender, EventArgs e)
        {
            Response.Redirect("~/web_pages/registration.aspx");
        }
    }
}