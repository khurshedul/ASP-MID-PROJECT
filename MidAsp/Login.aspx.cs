using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidAsp
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            conn = new SqlConnection(connStr);
            
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM users where userid='"+UserName.Text+"' and password='"+Password.Text+"'";         
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "users");
          //  string user = ds.Tables["users"].Columns["type"].ToString();
            string user="";
            if (ds.Tables["users"].Rows.Count>0)
            {
                user = ds.Tables["users"].Rows[0]["type"].ToString();
                // Response.Write(user);
                string userid = ds.Tables["users"].Rows[0]["userid"].ToString();
                if (user.Equals("admin"))
                {
                    Session["type"]=user;
                    Response.Redirect("~/AdminView.aspx");
                }
                else if (user.Equals("user"))
                {
                    Session["userid"] = userid;
                    Session["type"] = user;
                    Response.Redirect("~/UserView.aspx");
                }
              
            }
          else
                // Response.Redirect("~/Login.aspx");
                Label1.Text = "Login failed try again";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }
    }
}