using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace dailypunch
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\dailypunch\dailypunch\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void admin_login_Click(object sender, EventArgs e)
        {
            string q1 = "select * from admin_login where admin='"+admin_name.Text+"' and password='"+admin_password.Text+"' ";

            SqlCommand obj = new SqlCommand(q1, con);

            con.Open();
             int i = Convert.ToInt32(obj.ExecuteScalar());
            con.Close();
           
            if(i>0)
            {
                Session["admin_name"] = (admin_name.Text).ToUpper();
                Response.Redirect("~/admin_page.aspx");
            }
            else
            {
                invalid_text.Text = "Invalid Admin or Password";
            }
            

        }
    }
}