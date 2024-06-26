using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace HHO_NGO.web_pages.admin
{
    public partial class add_event : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        String insertsql, fname, fpath;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            if (!IsPostBack)
            {
                ddlbinding();
            }   
        }

        protected void ddlbinding()
        {
            con.Open();
            cmd = new SqlCommand("select * from event_type", con);
            cmd.CommandType = CommandType.Text;
            ddl_etype.DataSource = cmd.ExecuteReader();
            ddl_etype.DataTextField = "etype_name";
            ddl_etype.DataValueField = "etype_id";
            ddl_etype.DataBind();
            ddl_etype.Items.Insert(0, new ListItem("Select Event Type", "0"));
            ddl_etype.Items[0].Selected = true;
            ddl_etype.Items[0].Attributes["Disabled"] = "Disable";
        }

        protected void ddl_etype_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_etype.Items[0].Attributes["Disabled"] = "Disable";
        }

        protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_state.SelectedItem.Text == "--STATE--")
            {
                RequiredFieldValidator7.ErrorMessage = "Select a State !!";
                ddl_city.Items.Clear();
                ddl_city.Items.Add("--CITY--");
            }
            else
            {
                ddl_city.Items.Clear();
                ddl_city.Items.Add("--CITY--");
                if (ddl_state.SelectedItem.Text == "Gujarat")
                {
                    ddl_city.Items.Add("Ahemdabad");
                    ddl_city.Items.Add("Baroda");
                    ddl_city.Items.Add("Bharuch");
                    ddl_city.Items.Add("Gandhinagar");
                    ddl_city.Items.Add("Rajkot");
                    ddl_city.Items.Add("Surat");
                }
                else if (ddl_state.SelectedItem.Text == "Maharashtra")
                {
                    ddl_city.Items.Add("Mumbai");
                    ddl_city.Items.Add("Nagpur");
                    ddl_city.Items.Add("Pune");
                }
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            String uploadfolder = Request.PhysicalApplicationPath + "event_img\\";
            if (FileUpload1.HasFile)
            {
                fname = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(uploadfolder + fname);
            }
            fpath = "~\\event_img\\" + fname;
            insertsql = "insert into event values(" + ddl_etype.SelectedValue + ",'" + fpath + "','" + txtdate.Text + "','" + txt_time.Text + "','" + txtaddress.Text + "','" + ddl_city.SelectedItem + "','" + ddl_state.SelectedItem + "','" + txtduration.Text + "')";
            cmd = new SqlCommand(insertsql, con);
            Response.Write(insertsql);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/web_pages/admin/event.aspx");
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