using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dailypunch
{
    public partial class hedge : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\dailypunch\dailypunch\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)  
        {
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

                string q1 = "insert into inquiry_table Values('" + client_email.Text + "','" + client_name.Text + "','" + client_mob.Text + "','" + client_comments.Text + "')";
                SqlCommand obj = new SqlCommand(q1, con);

                con.Open();
                int i = obj.ExecuteNonQuery();
                con.Close();

                if (i > 0)
                {
                    send_button.Visible = false;
                    recorded_text.Visible = true;
                }

                client_email.Text = "";
                client_name.Text = "";
                client_mob.Text = "";
                client_comments.Text = "";
            
           
            

        }
    }
}