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
    public partial class home : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        SqlCommand cmd;
        String admin_id, admin_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["a_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            admin_id = Session["a_id"].ToString();
            try
            {
                con.Open();
                da = new SqlDataAdapter("select * from user_details where user_id = '" + admin_id + "'", con);
                da.Fill(dt);
                admin_name = dt.Rows[0]["user_name"].ToString();
                ad_name.Text += admin_name;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }

            //Total Donors
            try
            {
                con.Open();
                string selectsql = "select * from user_details where user_type = 'donor'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                t_donors.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Total Volunteers
            try
            {
                con.Open();
                string selectsql = "select * from user_details where user_type = 'volunteer'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                t_vol.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Total Donation
            try
            {
                con.Open();
                string selectsql = "select * from donation";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                t_donation.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Total Events
            try
            {
                con.Open();
                string selectsql = "select * from event";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                t_events.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Total Pending Donation Tasks
            try
            {
                con.Open();
                string selectsql = "select * from donation_delivery where delivery_status = 'Assigned'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                tp_dtasks.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Total Completed Donation Tasks
            try
            {
                con.Open();
                string selectsql = "select * from donation_delivery where delivery_status = 'Complete'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                tc_dtasks.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Total Event Tasks
            /*try
            {
                con.Open();
                string selectsql = "select * from Vtask where task_type = 'Event Service'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                t_etask.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }*/

            //Total Contacts
            try
            {
                con.Open();
                string selectsql = "select * from contact";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                t_contact.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Total Feedbacks
            try
            {
                con.Open();
                string selectsql = "select * from feedback";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                t_feedback.Text = ds.Tables[0].Rows.Count.ToString();
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