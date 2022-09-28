using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["un"] != null)
            {
                Label1.Text = Session["FirstName"].ToString();
                Label2.Text = Session["LastName"].ToString();
                Label3.Text = Session["Department"].ToString();
                Label4.Text = Session["City"].ToString();
            }
            

        }

        protected void Validate(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void Validatation2(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

}