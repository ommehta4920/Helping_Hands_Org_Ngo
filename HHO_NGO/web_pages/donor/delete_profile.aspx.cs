using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HHO_NGO.web_pages.donor
{
    public partial class delete_profile : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        string deletesql, donor_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["d_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            donor_id = Session["d_id"].ToString();
        }

        protected void btnyes_Click(object sender, EventArgs e)
        {
            deletesql = "delete from user_details where user_id = '" + donor_id + "'";
            cmd = new SqlCommand(deletesql, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/web_pages/login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnno_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/web_pages/donor/home.aspx");
        }
    }
}