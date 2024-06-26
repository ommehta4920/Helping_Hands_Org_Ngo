using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HHO_NGO.web_pages.admin
{
    public partial class list_donation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
        }

        protected void gv_donor_SelectedIndexChanged(object sender, EventArgs e)
        {
            String donation_id = gv_donor.SelectedRow.Cells[0].Text;
            Response.Redirect("~/web_pages/admin/add_task.aspx?donationid=" + donation_id);
        }
    }
}