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
    public partial class Resgitration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT * from users";

            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);

            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);


            DataSet ds = new DataSet();

            adapter.Fill(ds, "users");
            adapter.Fill(ds, "dvd");

            ds.Tables["users"].PrimaryKey = new DataColumn[] { ds.Tables["users"].Columns["userid"] };

            Cache["DATASET"] = ds;

            Cache["ADAPTER"] = adapter;

           
          
        }

        protected void register_Click(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Cache["DATASET"];
            DataRow dr = ds.Tables["users"].NewRow();
            dr["userid"] = username.Text;
            dr["email"] = Email.Text;
            dr["type"] = user.Value;
            dr["password"] = password1.Text;
            dr["phone"] = phone.Text;
            dr["dob"] = dob.Text;
       
            Cache["DATASET"] = ds;
            //GridView1.EditIndex = -1;
            //this.LoadFrmCache();
            ds.Tables["users"].Rows.Add(dr);
            // DataSet ds = (DataSet)Cache["DATASET"];
            SqlDataAdapter adapter = (SqlDataAdapter)Cache["ADAPTER"];
            adapter.Update(ds.Tables["users"]);
            username.Text = Email.Text = password1.Text=phone.Text=dob.Text = "";
            message.Text = "User added to database";
        }
    }
}