using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhotoSharingProject_First
{
    public partial class upload : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //  Response.Write("<script>alert('" + ex.Message + "');</script>");

            try
            {

                Random rand = new Random();
                string photoID = rand.Next(1000).ToString();
                string fileType = DropDownList1.Text;
                string fileSize = txtFileSize.Text;
                string dateAdded = DateTime.Now.ToString();
                string tag = txtTag.Text;
                SqlConnection con = new SqlConnection(strcon);
                if (FileUpload1.HasFile)
                {
                    byte[] bytes;
                    using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
                    {
                        bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
                    }
                    Response.Write("<script>alert('Has a file);</script>");
                   // string photoLink = FileUpload1.FileName.ToString();
                   // txtFileSize.Text = photoLink;
                    //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + photoLink);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into photos values('" + photoID + "','" + fileType + "','" + fileSize + "','" + dateAdded + "','" + tag + "','" + bytes + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Image Successfully Uploaded');</script>");
                    txtFileSize.Text = "";
                    txtTag.Text = "";
                    con.Close();

                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}