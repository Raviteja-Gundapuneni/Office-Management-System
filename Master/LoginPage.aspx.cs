using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



namespace Master
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RavitejaDBConnectionString"].ConnectionString);
        SqlCommand command = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");

        }

        protected void Validation(object sender, EventArgs e)
        {
            string EmpId = TxtEmpId.Text;
            string password = TxtPassword.Text;
            string qry = $"Select * from Users where EmpId='{EmpId}' and password='{password}'";
            command = new SqlCommand(qry, connection);
            connection.Open();
            SqlDataReader sqlDataReader = command.ExecuteReader();
            if (sqlDataReader.HasRows)
            {
                if (sqlDataReader.Read())
                {
                    Session["FirstName"] = sqlDataReader.GetString(1);
                    Session["LastName"] = sqlDataReader.GetString(2);
                    Session["Department"] = sqlDataReader.GetString(3);
                    Session["City"] = sqlDataReader.GetString(9);

                }
                Session["un"] = EmpId;
                if (EmpId == "SR0001")
                {
                    LblMsg.Text = "Please Login to Admin page";
                }
                else 
                { 
                    Response.Redirect("WelcomePage.aspx");
                }
            }
            else
            {
                LblMsg.Text = "Invalid Credentials";

            }

        }

    }
}