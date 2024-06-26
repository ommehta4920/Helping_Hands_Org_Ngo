using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace HHO_NGO.web_pages
{
    public partial class event_gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page_PreRender();
        }
        void Page_PreRender()
        {
            string folder = Server.MapPath("~/event_gallery/");
            DirectoryInfo dir = new DirectoryInfo(folder);
            DataList1.DataSource = dir.GetFiles();
            DataList1.DataBind();
        }
    }
}