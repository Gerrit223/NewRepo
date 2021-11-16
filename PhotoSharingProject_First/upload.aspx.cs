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
            
            //SqlDataSource1.SelectCommand = "SELECT p.photo_id,p.date_added,p.location, p.tag, p.photo_link FROM photos p, userphotos up WHERE up.user_id = '" +Session["userID"]+"' AND p.photo_id = up.photo_id";

           // GridView1.DataBind();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
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

                SqlCommand cmd = new SqlCommand("insert into photos (photo_id,file_type,location,date_added,tag,photo_link) " +
                    "values(@photo_id,@file_type,@location,@date_added,@tag,@photo_link)", con);

                cmd.Parameters.AddWithValue("@photo_id", photoID);
                cmd.Parameters.AddWithValue("@file_type",DropDownList1.Text);
                cmd.Parameters.AddWithValue("@location",txtFileSize.Text.Trim() );
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