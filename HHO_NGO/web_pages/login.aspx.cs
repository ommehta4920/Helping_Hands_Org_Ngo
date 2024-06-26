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
    public partial class login : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        String selectsql;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(connection_str);
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            selectsql = "select * from user_details where email_id = '" + txtemail.Text + "'and password = '" + txtpassword.Text + "'";
            da = new SqlDataAdapter(selectsql, con);
            try
            {
                con.Open();
                da.Fill(dt);
                if (dt.Rows[0]["email_id"].ToString() == "")
                {
                    Response.Write("<script>alert('There is no such profile found.')</script>");
                }
                else
                {
                    if (dt.Rows[0]["user_type"].ToString() == "admin")
                    {
                        string id = dt.Rows[0]["user_id"].ToString();
                        Session["a_id"] = id;
                        Response.Redirect("~/web_pages/admin/home.aspx");
                    }
                    else if (dt.Rows[0]["user_type"].ToString() == "donor")
                    {
                        string id = dt.Rows[0]["user_id"].ToString();
                        Session["d_id"] = id;
                        Response.Redirect("~/web_pages/donor/home.aspx");
                    }
                    else if (dt.Rows[0]["user_type"].ToString() == "volunteer")
                    {
                        if (dt.Rows[0]["status"].ToString() == "Approve")
                        {
                            string id = dt.Rows[0]["user_id"].ToString();
                            Session["v_id"] = id;
                            Response.Redirect("~/web_pages/volunteer/home.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Your profile is not approved Check after sometime.')</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Invalid UserName or Password')</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}