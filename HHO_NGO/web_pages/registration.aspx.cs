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
    public partial class registration : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        SqlCommand cmd;
        String selectsql, insertsql, role, a;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(connection_str);
            selectsql = "SELECT * FROM user_details WHERE user_id=(SELECT max(user_id) FROM user_details);";
            try
            {
                con.Open();
                da = new SqlDataAdapter(selectsql, con);
                da.Fill(dt);
                a = dt.Rows[0]["user_id"].ToString();
                id = Int32.Parse(a) + 1;
                txtuser_id.Text = id.ToString();
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

        protected void btnregister_Click(object sender, EventArgs e)
        {
            if (dot1.Checked)
            {
                String status = "Approve";
                role = "donor";
                insertsql = "insert into user_details values ('" + txtuser_name.Text + "','" + txtaddress.Text + "','" + txtemail.Text + "','" + txtph_no.Text + "','" + txtc_password.Text + "','" + role + "','" + status + "')";
                cmd = new SqlCommand(insertsql, con);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Registration Successfull')</script>");
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
            if (dot2.Checked)
            {
                String status = "Not Approve";
                role = "volunteer";
                insertsql = "insert into user_details values ('" + txtuser_name.Text + "','" + txtaddress.Text + "','" + txtemail.Text + "','" + txtph_no.Text + "','" + txtc_password.Text + "','" + role + "','" + status + "')";
                cmd = new SqlCommand(insertsql, con);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Registration Successfull')</script>");
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
}