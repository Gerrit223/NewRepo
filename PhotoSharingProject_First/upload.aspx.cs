using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
        int photoID;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //  Response.Write("<script>alert('" + ex.Message + "');</script>");

            //try
            //{

            //    Random rand = new Random();
            //    string photoID = rand.Next(1000).ToString();
            //    string fileType = DropDownList1.Text;
            //    string fileSize = txtFileSize.Text;
            //    string dateAdded = DateTime.Now.ToString();
            //    string tag = txtTag.Text;
            //    SqlConnection con = new SqlConnection(strcon);
            //    if (FileUpload1.HasFile)
            //    {
            //        byte[] bytes;
            //        using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            //        {
            //            bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            //        }
            //        Response.Write("<script>alert('Has a file);</script>");
            //       // string photoLink = FileUpload1.FileName.ToString();
            //       // txtFileSize.Text = photoLink;
            //        //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + photoLink);
            //        con.Open();
            //        SqlCommand cmd = new SqlCommand("insert into photos values('" + photoID + "','" + fileType + "','" + fileSize + "','" + dateAdded + "','" + tag + "','" + bytes + "')", con);
            //        cmd.ExecuteNonQuery();
            //        Response.Write("<script>alert('Image Successfully Uploaded');</script>");
            //        txtFileSize.Text = "";
            //        txtTag.Text = "";
            //        con.Close();

            //    }

            //}
            //catch(Exception ex)
            //{
            //    Response.Write("<script>alert('" + ex.Message + "');</script>");
            //}

            addUserPhotos();
            addNewPhoto();
           


        }
        void addUserPhotos()
        {
            try
            {
                Random rand = new Random();
                photoID = rand.Next(1000);
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd2 = new SqlCommand("insert into userphotos(user_id,photo_id) values(@user_id,@photo_id)", con);
                cmd2.Parameters.AddWithValue("@user_id", Session["userID"]);
                cmd2.Parameters.AddWithValue("@photo_id", photoID);
                cmd2.ExecuteNonQuery();

                con.Close();



            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addNewPhoto()
        {
            try
            {
                string filepath = "~/photo_inventory/camera.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("photo_inventory/" + filename));
                filepath = "~/photo_inventory/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into photos (photo_id,file_type,file_size,date_added,tag,photo_link) " +
                    "values(@photo_id,@file_type,@file_size,@date_added,@tag,@photo_link)", con);

                cmd.Parameters.AddWithValue("@photo_id", photoID);
                cmd.Parameters.AddWithValue("@file_type",DropDownList1.Text);
                cmd.Parameters.AddWithValue("@file_size",txtFileSize.Text.Trim() );
                cmd.Parameters.AddWithValue("@date_added", DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@tag", txtTag.Text.Trim());
                cmd.Parameters.AddWithValue("@photo_link", filepath);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Image Successfully Uploaded');</script>");
                txtFileSize.Text = "";
                txtTag.Text = "";
                con.Close();




            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}