using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HHO_NGO.web_pages.admin
{
    public partial class donation_type : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/web_pages/admin/add_dtype.aspx");
        }
    }
}