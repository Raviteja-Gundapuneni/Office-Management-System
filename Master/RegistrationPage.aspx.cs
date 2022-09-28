using Master.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Master.Entities;


namespace Master
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RavitejaDBConnectionString"].ConnectionString);
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void UserRegistration(object sender, EventArgs e)
        {
            try
            {
                Users user = new Users();
                user.EmpId = TxtEmpId.Text;
                user.FirstName = TxtFname.Text;
                user.LastName = TxtLname.Text;
                user.Department = TxtDept.Text;
                user.DateofJoining = TxtDOJ.Text;
                user.Age = TxtAge.Text;
                user.Gender = RB1.Checked ? "Male" : RB2.Checked ? "Female" : "Unknown";
                user.PhoneNo = TxtPhoneNo.Text;
                user.Address = TxtAddress.Text;
                user.City = DDL1City.Text;
                user.Country = TxtCountry.Text;
                user.EmailID = TxtEmailId.Text;
                user.Password = TxtPassword.Text;


                string qry = $"Insert into Users values('{user.EmpId}','{user.FirstName}','{user.LastName}','{user.Department}','{user.DateofJoining}'," +
                        $"{user.Age},'{user.Gender}','{user.PhoneNo}','{user.Address}','{user.City}','{user.Country}','{user.EmailID}','{user.Password}')";
                command = new SqlCommand(qry, connection);
                connection.Open();
                command.ExecuteNonQuery();
                Response.Redirect("LoginPage.aspx");
            }
            catch (Exception ex)
            {
                LblMsg.Text = ex.Message;
            }
            finally
            {
                connection.Close();
            }
        }

    }
}


