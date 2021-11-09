using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhotoSharingProject_First
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("upload.aspx");
        }

        protected void btnShare_Click(object sender, EventArgs e)
        {
            Response.Redirect("share.aspx");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewedit.aspx");
        }
    }
}