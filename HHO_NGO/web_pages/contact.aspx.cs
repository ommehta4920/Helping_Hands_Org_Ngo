using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HHO_NGO.web_pages
{
    public partial class contact : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        String insertsql;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(connection_str);
        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            insertsql = "insert into contact values ('" + txtname.Text + "','" + txtemail.Text + "','" + txtphno.Text + "','" + txtmessage.Text + "')";
            cmd = new SqlCommand(insertsql, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                //Response.Redirect("~/web_pages/home.aspx");
                Response.Write("<script>alert('Message Sent Successfully')</script>");
                clear_all();
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

        void clear_all()
        {
            txtname.Text = "";
            txtemail.Text = "";
            txtphno.Text = "";
            txtmessage.Text = "";
        }
    }
}