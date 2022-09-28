using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Master
{
    public partial class GridView : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-23LCRSM\SQLEXPRESS;Initial Catalog=RavitejaDB;Integrated Security=True");
        SqlDataAdapter adapter = null;
        DataSet ds = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from Users", connection);
            ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Btn1_Click(object sender, EventArgs e)
        {

        }

        protected void GetEmployeebyDept(object sender, EventArgs e)
        {
            string dept = TxtDept.Text;
            adapter = new SqlDataAdapter($"Select * from Users where Department='{dept}'", connection);
            ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        
    }
}