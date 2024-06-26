using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace HHO_NGO.web_pages.donor
{
    public partial class donation : System.Web.UI.Page
    {
        String connection_str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\hho_ngo.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        String donor_id, insertsql, fname, fpath;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["d_id"] == null)
            {
                Response.Redirect("~/web_pages/login.aspx");
            }
            con = new SqlConnection(connection_str);
            donor_id = Session["d_id"].ToString();
            txtuser_id.ReadOnly = true;
            txtuser_name.ReadOnly = true;
            try
            {
                con.Open();
                da = new SqlDataAdapter("select * from user_details where user_id = '" + donor_id + "'", con);
                da.Fill(dt);
                txtuser_id.Text = dt.Rows[0]["user_id"].ToString();
                txtuser_name.Text = dt.Rows[0]["user_name"].ToString();
                txtaddress.Text = dt.Rows[0]["address"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            if (!IsPostBack)
            {
                ddlbinding();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String uploadfolder = Request.PhysicalApplicationPath + "donation_img\\";
            if (FileUpload1.HasFile)
            {
                fname = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(uploadfolder + fname);
            }
            fpath = "~\\donation_img\\" + fname;
            insertsql = "insert into donation values(" + ddl_donation_type.SelectedValue + ",'" + txtuser_id.Text + "','" + fpath + "','" + txtaddress.Text + "','" + txtqty.Text + "','Not Accepted')";
            cmd = new SqlCommand(insertsql, con);
            //Response.Write(insertsql);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/web_pages/donor/list_donation.aspx");
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

        protected void ddl_donation_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_donation_type.Items[0].Attributes["Disabled"] = "Disable";
        }

        protected void ddlbinding()
        {
            con.Open();
            cmd = new SqlCommand("select * from donation_type", con);
            cmd.CommandType = CommandType.Text;
            ddl_donation_type.DataSource = cmd.ExecuteReader();
            ddl_donation_type.DataTextField = "dtype_name";
            ddl_donation_type.DataValueField = "dtype_id";
            ddl_donation_type.DataBind();
            ddl_donation_type.Items.Insert(0, new ListItem("Select Donation Type", "0"));
            ddl_donation_type.Items[0].Selected = true;
            ddl_donation_type.Items[0].Attributes["Disabled"] = "Disable";
        }
    }
}