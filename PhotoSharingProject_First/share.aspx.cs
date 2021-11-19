using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhotoSharingProject_First
{
    public partial class share : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT p.photo_id,p.date_added,p.location, p.tag, p.photo_link FROM photos p, userphotos up WHERE up.user_id = '" + Session["userID"] + "' AND p.photo_id = up.photo_id";

            GridView1.DataBind();
        }
        
        public int getUserID()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select user_id from users where username = '" + txtUsername.Text.Trim() + "'", con);
                    int userID = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                    return userID;
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return 0;
            }
           
            
        }
        protected void btnShare_Click(object sender, EventArgs e)
        {
            try
            {
                int userID = getUserID();
                if(userID == 0)
                {
                    Response.Write("<script>alert('Usernmae does not exist');</script>");
                }
                else
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand com = new SqlCommand("insert into userphotos (user_id,photo_id) values (@user_id,@photo_id)", con);
                    com.Parameters.AddWithValue("@user_id",userID);
                    com.Parameters.AddWithValue("@photo_id", int.Parse(txtId.Text.Trim()));

                    com.ExecuteNonQuery();
                    con.Close();
                    txtId.Text = "";
                    txtUsername.Text = "";
                    Response.Write("<script>alert('Photo has been shared');</script>");
                }
               


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}