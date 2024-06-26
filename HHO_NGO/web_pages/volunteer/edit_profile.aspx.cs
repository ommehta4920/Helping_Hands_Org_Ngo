using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HHO_NGO.web_pages.volunteer
{
    public partial class edit_profile : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        String vol_id, updatesql;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(connection_str);

            if (!Page.IsPostBack)
            {
                if (Session["v_id"] == null)
                {
                    Response.Redirect("~/web_pages/login.aspx");
                }
                
                vol_id = Session["v_id"].ToString();
                txtuser_id.ReadOnly = true;

                try
                {
                    con.Open();
                    da = new SqlDataAdapter("select * from user_details where user_id = '" + vol_id + "'", con);
                    da.Fill(dt);
                    txtuser_id.Text = dt.Rows[0]["user_id"].ToString();
                    txtuser_name.Text = dt.Rows[0]["user_name"].ToString();
                    txtaddress.Text = dt.Rows[0]["address"].ToString();
                    txtemail.Text = dt.Rows[0]["email_id"].ToString();
                    txtph_no.Text = dt.Rows[0]["contact_no"].ToString();
                    txtpassword.Text = dt.Rows[0]["password"].ToString();
                    txtc_password.Text = dt.Rows[0]["password"].ToString();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            updatesql = "update user_details set user_name = '" + txtuser_name.Text + "', address = '" + txtaddress.Text + "', email_id = '" + txtemail.Text + "', contact_no = '" + txtph_no.Text + "', password = '" + txtc_password.Text + "' where user_id = '" + txtuser_id.Text + "'";
            cmd = new SqlCommand(updatesql, con);
            //Response.Write(updatesql);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Profile Update Successfully');", true);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}