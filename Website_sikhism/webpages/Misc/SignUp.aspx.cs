using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webpages_Misc_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string ConnStr = ConfigurationManager.ConnectionStrings["ConnStrName"].ToString();
        SqlConnection conn = new SqlConnection(ConnStr);

        try
        {
            // Open the connection.
            conn.Open();

            //Signup command
            string sqlSignUp = "Insert into [login table](Name, Address, Phone, Email, Password) Values(@name, @address, @phone, @email, @password)";

            SqlCommand cmd = new SqlCommand(sqlSignUp, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@phone", phone.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);

            //// login login
            //string sqlLogin = "Select * From TablName Where email=@eamil and password=@password";
            //SqlCommand cmd = new SqlCommand(sqlLogin, conn);
            //cmd.CommandType = CommandType.Text;
            //cmd.Parameters.AddWithValue("@email", email.Text);
            //cmd.Parameters.AddWithValue("@password", password.Text);
            //SqlDataReader NewReader = cmd.ExecuteReader();
            //while (NewReader.Read())
            //{
            //    lblMsg.Text = "User Authentication Successful !!!";
            //}

            //Signup
            if (cmd.ExecuteNonQuery() == 1)
            {
                //login successfull

                //Session["LoginSuccess"] = "Yes";
                lblMsg.Text = "User SignUp Successful !!!";
            }
            else
            {
                lblMsg.Text = "User SignUp Failed!!!";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Your request Failed!!!" + ex.ToString();
        }
        finally
        {
            conn.Close();
        }



    }
}