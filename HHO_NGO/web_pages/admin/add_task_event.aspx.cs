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
    public partial class add_task_event : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd, cmd1;
        SqlDataAdapter da;
        String eventid, eaddress, edate, eduration, etype, edesc;
        String insertsql, selectsql, selectsql1;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            selectsql = "select * from event where event_id = " + Request.QueryString["eid"];
            cmd = new SqlCommand(selectsql, con);
            try
            {
                con.Open();
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                eventid = dt.Rows[0]["event_id"].ToString();
                eaddress = dt.Rows[0]["address"].ToString() + dt.Rows[0]["city"].ToString() + dt.Rows[0]["state"].ToString();
                edate = dt.Rows[0]["date"].ToString() + dt.Rows[0]["time"];
                eduration = dt.Rows[0]["duration"].ToString();
                etype = "Event Service";
                edesc = "You have to present in this event.";
                //estatus = "Assigned";
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

        protected void btnassign_Click(object sender, EventArgs e)
        {
            int vid;
            foreach (GridViewRow gvrow in gv_task.Rows)
            {
                CheckBox chck = gvrow.FindControl("CheckBox1") as CheckBox;
                if (chck.Checked)
                {
                    var Label = gvrow.FindControl("Label1") as Label;
                    vid = Convert.ToInt32(Label.Text);
                    insertsql = "insert into Vtask (event_id, user_id, task_date, duration, task_type, task_desc) values (" + eventid + "," + vid + ",'" + edate + "','" + eduration + "','" + etype + "','" + edesc + "')";
                    cmd1 = new SqlCommand(insertsql, con);
                    //Response.Write(insertsql);
                    try
                    {
                        con.Open();
                        cmd1.ExecuteNonQuery();
                        //Response.Redirect("~/web_pages/admin/task.aspx");
                        //Response.Write("<script>alert('Hello')</script>");
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
}