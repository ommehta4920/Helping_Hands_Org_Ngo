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
    public partial class home : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        SqlCommand cmd;
        String donor_id, donor_name;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["d_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            donor_id = Session["d_id"].ToString();
            try
            {
                con.Open();
                da = new SqlDataAdapter("select * from user_details where user_id = '" + donor_id + "'", con);
                da.Fill(dt);
                donor_name = dt.Rows[0]["user_name"].ToString();
                d_name.Text += donor_name;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //total donation
            try
            {
                con.Open();
                string selectsql = "select * from donation where user_id = " + donor_id;
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

            //Accepted donation
            try
            {
                con.Open();
                string selectsql = "select * from donation where user_id = " + donor_id + "and donation_status = 'Accepted'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                accept_donation.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Pending Donation
            try
            {
                con.Open();
                string selectsql = "select * from donation where user_id = " + donor_id + "and donation_status = 'Not Accepted'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                pending_donation.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Collected Donation
            try
            {
                con.Open();
                string selectsql = "Select dd.* from donation_delivery dd, donation d where dd.donation_id=d.donation_id and d.user_id= " + Session["d_id"].ToString() + " and dd.delivery_status = 'Complete'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                c_donation.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            //Not Collected Donation
            try
            {
                con.Open();
                string selectsql = "Select dd.* from donation_delivery dd, donation d where dd.donation_id=d.donation_id and d.user_id= " + Session["d_id"].ToString() + " and dd.delivery_status = 'Assigned'";
                cmd = new SqlCommand(selectsql, con);
                da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                nc_donation.Text = ds.Tables[0].Rows.Count.ToString();
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