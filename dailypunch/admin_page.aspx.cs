using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace dailypunch
{
    public partial class admin_page : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\dailypunch\dailypunch\App_Data\Database1.mdf;Integrated Security=True");
        string p;
        protected void Page_Load(object sender, EventArgs e)
        {
            if( Session["admin_name"] != null)
            {
                admin_name.Text = Session["admin_name"].ToString();
            }

            if( Session["admin_name"] != null )
            {
                SqlDataAdapter sda = new SqlDataAdapter("Select * from admin_login where admin='" + Session["admin_name"].ToString() +"' ",con);
                DataTable dt = new DataTable();
                
                sda.Fill(dt);

                ad_id.Text = dt.Rows[0]["admin_id"].ToString();
                string name_upper= dt.Rows[0]["admin"].ToString(); 
                ad_name.Text = name_upper.ToUpper();                   // capital letter
                //ad_pass.Text = dt.Rows[0]["password"].ToString();
                ad_mail.Text = dt.Rows[0]["email_id"].ToString();
                ad_pass.Text = dt.Rows[0]["password"].ToString(); ;

            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/login.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Panel1.Visible != true)
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
            }
            
            
            

        }

        protected void UpdateButton_Click(object sender, ImageClickEventArgs e)
        {
            new_label.Visible = true;
            new_pass.Visible = true;
            update.Visible = false;
            done.Visible = true;
        }

        protected void done_Click(object sender, ImageClickEventArgs e)
        {

            
            string q1 = "update admin_login set password = '" + new_pass.Text + "' where admin_id = '" + ad_id.Text+"' ";
            SqlCommand obj = new SqlCommand(q1, con);
            
            con.Open();
            int i = obj.ExecuteNonQuery();
            con.Close();
            
            if(i>0)
            {
                Response.Write("updated");

                SqlDataAdapter sda = new SqlDataAdapter("Select * from admin_login where admin='" + Session["admin_name"].ToString() + "' ", con);
                DataTable dt2 = new DataTable();
                sda.Fill(dt2);
                p = dt2.Rows[0]["password"].ToString();
                ad_pass.Text = p;

                Response.Write("<script>alert('Password Updated Successfully');window.location = 'admin_page.aspx';</script>");

                done.Visible = false;
                update.Visible = true;
                new_label.Visible = false;
                new_pass.Visible = false;

            }

            


        }

        

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            
            Response.Write("<script>alert('Data has been Deleted Sucessfully');window.location = 'admin_page.aspx';</script>");
            GridView1.DataBind();
        }

  
    }
}