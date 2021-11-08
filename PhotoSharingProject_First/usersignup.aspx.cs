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
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Testing');</script>");
            if(checkUserExists())
            {
                Response.Write("<script>alert('Username already exists try different username');</script>");

            }
            else
                signUpNewUser();


        }

        bool checkUserExists()
        {
            try
            {
                Random id = new Random();
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from users where username ='"+txtUsername.Text.Trim()+"' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    con.Close();
                    return true;                   
                }
                else
                {
                    con.Close();
                    return false;
                }
                   
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }
        }

        void signUpNewUser()
        {
            try
            {
                Random id = new Random();
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into users(user_id,name,surname,username,password,email) values(@user_id,@name,@surname,@username,@password,@email)", con);

                cmd.Parameters.AddWithValue("@user_id", id.Next(1000));
                cmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@surname", txtSurname.Text.Trim());
                cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully signed up! Go to Login page');</script>");
                txtName.Text = "";
                txtSurname.Text = "";
                txtEmail.Text = "";
                txtUsername.Text = "";
                txtPassword.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }
    }
}