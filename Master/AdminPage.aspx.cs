using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Validation(object sender, EventArgs e)
        {
            string EmpId = TxtEmpId.Text;
            string Password = TxtPassword.Text;
            if (EmpId == "SR0001" && Password == "abc123")
            {
                Response.Redirect("ListView.aspx");
               
            }
            
            else
                LblMsg.Text = "Invalid Credentials";
        }
    }
}