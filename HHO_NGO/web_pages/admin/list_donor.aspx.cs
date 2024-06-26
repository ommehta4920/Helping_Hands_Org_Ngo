using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HHO_NGO.web_pages.admin
{
    public partial class list_donor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void gv_donor_SelectedIndexChanged(object sender, EventArgs e)
        {
            String did = gv_donor.SelectedRow.Cells[0].Text;
            Response.Write("<script>alert('" + did + "')</script>");
        }
    }
}