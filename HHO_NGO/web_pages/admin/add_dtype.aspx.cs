using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HHO_NGO.web_pages.admin
{
    public partial class add_dtype : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        String insertsql;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            insertsql = "insert into donation_type values('" + txttype_name.Text + "','" + txtdesc.Text + "')";
            cmd = new SqlCommand(insertsql, con);
            //Response.Write(insertsql);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/web_pages/admin/donation_type.aspx");
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
    }
}