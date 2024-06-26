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
    public partial class profile : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        String donor_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["d_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            donor_id = Session["d_id"].ToString();
            txtuser_id.ReadOnly = true;
            txtuser_name.ReadOnly = true;
            txtaddress.ReadOnly = true;
            txtemail.ReadOnly = true;
            txtph_no.ReadOnly = true;

            try
            {
                con.Open();
                da = new SqlDataAdapter("select * from user_details where user_id = '" + donor_id + "'", con);
                da.Fill(dt);
                txtuser_id.Text = dt.Rows[0]["user_id"].ToString();
                txtuser_name.Text = dt.Rows[0]["user_name"].ToString();
                txtaddress.Text = dt.Rows[0]["address"].ToString();
                txtemail.Text = dt.Rows[0]["email_id"].ToString();
                txtph_no.Text = dt.Rows[0]["contact_no"].ToString();
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

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/web_pages/donor/edit_profile.aspx");
        }
    }
}