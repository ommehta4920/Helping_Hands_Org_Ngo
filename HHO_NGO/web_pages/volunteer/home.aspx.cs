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
    public partial class home : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        public string vol_id, vol_name;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["v_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            vol_id = Session["v_id"].ToString();
            try
            {
                con.Open();
                da = new SqlDataAdapter("select * from user_details where user_id = '" + vol_id + "'", con);
                da.Fill(dt);
                vol_name = dt.Rows[0]["user_name"].ToString();
                v_name.Text += vol_name;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }


            //Total Collection
            try
            {
                con.Open();
                string selectsql = "select * from donation_delivery where user_id = " + vol_id;
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                t_collection.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }


            //Pending Collection
            try
            {
                con.Open();
                string selectsql = "select * from donation_delivery where user_id = " + vol_id + "and delivery_status = 'Assigned'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                p_collection.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }


            //Completed Collection
            try
            {
                con.Open();
                string selectsql = "select * from donation_delivery where user_id = " + vol_id + "and delivery_status = 'Complete'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                c_collection.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }


            //Total Event Task
            try
            {
                con.Open();
                string selectsql = "select * from Vtask where user_id = " + vol_id;
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                te_task.Text = ds.Tables[0].Rows.Count.ToString();
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