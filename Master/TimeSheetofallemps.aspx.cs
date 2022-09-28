using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master
{
    public partial class TimeSheetofallemps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Validate(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}