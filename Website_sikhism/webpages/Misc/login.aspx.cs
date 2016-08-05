using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webpages_Misc_contact : System.Web.UI.Page
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

            // login login
            string sqlLogin = "Select * From [login table] Where Email=@emailForLogin and Password=@password";
            SqlCommand cmd = new SqlCommand(sqlLogin, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@emailForLogin", email.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            SqlDataReader NewReader = cmd.ExecuteReader();

            if (NewReader.HasRows)
            {
                while (NewReader.Read())
                {
                    lblMsg.Text = "User Login Successful !!!";
                }
            }
            else
            {
                lblMsg.Text = "User Login Failed!!!";
            }
            NewReader.Close();
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