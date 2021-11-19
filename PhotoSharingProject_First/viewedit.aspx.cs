using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhotoSharingProject_First
{
    public partial class viewedit : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT p.photo_id,p.date_added,p.location, p.tag, p.photo_link FROM photos p, userphotos up WHERE up.user_id = '" + Session["userID"] + "' AND p.photo_id = up.photo_id";

            GridView1.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand("delete from userphotos where user_id = '" + Session["userID"] + "' AND photo_id = '" + int.Parse(txtId.Text.Trim()) + "'",con);
                //com.Parameters.AddWithValue("@user_id", Session["userID"]);
               // com.Parameters.AddWithValue("@photo_id", txtId.Text.Trim());
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Request.RawUrl);
                Response.Write("<script>alert('Image Successfully Deleted');</script>");
                txtId.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand("update photos set location = @location where photo_id = @photo_id", con);
                com.Parameters.AddWithValue("@location", txtUpdateTag.Text.Trim());
                com.Parameters.AddWithValue("@photo_id", int.Parse(txtId.Text.Trim()));
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Request.RawUrl);
                Response.Write("<script>alert('Image Location Successfully Updated');</script>");
                txtId.Text = "";
                txtUpdateTag.Text = "";
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            
        }
    }
    
}