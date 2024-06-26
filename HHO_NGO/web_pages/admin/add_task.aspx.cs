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
    public partial class add_task : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        String selectsql, donation, insertsql, dona_id;
        int u_id;
        SqlCommand cmd;
        SqlDataAdapter da;

        protected void gv_donor_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            dona_id = Request.QueryString["donationid"];
            selectsql = "select * from donation where donation_id = " + dona_id;
            cmd = new SqlCommand(selectsql, con);
            try
            {
                con.Open();
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    donation = ds.Tables[0].Rows[0]["donation_id"].ToString();
                    txtd_location.Text = ds.Tables[0].Rows[0]["pickup_location"].ToString();
                    txt_tasktype.Text = ds.Tables[0].Rows[0]["dtype_id"].ToString();
                }
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

        protected void btnadd_Click(object sender, EventArgs e)
        {
            insertsql = "insert into donation_delivery values ('" + dona_id + "'," + gv_donor.SelectedRow.Cells[0].Text + ",'" + txtd_location.Text + "','" + txt_tasktype.Text + "','" + txt_date.Text + "','" + txt_duration.Text + "','" + txt_desc.Text + "','Assigned')";
            cmd = new SqlCommand(insertsql, con);
            Response.Write(insertsql);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/web_pages/admin/list_delivery.aspx");
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