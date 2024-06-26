using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace HHO_NGO.web_pages.admin
{
    public partial class event_img : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFiles)
            {
                string path = Server.MapPath("~/event_gallery/");
                if (!Directory.Exists(path))
                    Directory.CreateDirectory(path);
                int filecount = 0;
                foreach ( HttpPostedFile file in FileUpload1.PostedFiles)
                {
                    filecount += 1;
                    file.SaveAs(path + file.FileName);
                }
                Response.Write("<script>alert('Files Uploaded Successfully.')</script>");
            }
        }
    }
}