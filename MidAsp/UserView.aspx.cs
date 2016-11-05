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
    public partial class UserView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] != null)
            {
                if (Session["type"].ToString().Equals("user") == false)
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
            else if (Session["type"] == null)
                Response.Redirect("~/Login.aspx");
            if (!IsPostBack)
            {
                if (Cache["DATASET"] == null)
                {
                    this.Loaddata();
                }
                else
                {
                    this.LoadFrmCache();
                }
            }

        }
        void Loaddata()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT dvdid,title,description,actor,type,category,date FROM dvds dvd,casting cas,type tp, category ct where dvd.castingId=cas.id and dvd.typeid=tp.id and dvd.categoryid=ct.id";
            
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
      
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            

            DataSet ds = new DataSet();
      
            adapter.Fill(ds, "dvd");
          
            ds.Tables["dvd"].PrimaryKey = new DataColumn[] { ds.Tables["dvd"].Columns["dvdid"] };
         
            Cache["DATASET"] = ds;
     
            Cache["ADAPTER"] = adapter;

           
            GridViewhome.DataSource = ds.Tables["dvd"];
          
            GridViewhome.DataBind();
           

        }

        private void LoadFrmCache()
        {
            DataSet ds = (DataSet)Cache["DATASET"];

            GridViewhome.DataSource = ds.Tables["dvd"];

            GridViewhome.DataBind();
            
         
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("type");
            Response.Redirect("~/Login.aspx");
        }

        protected void search_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void GridViewhome_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewhome.SelectedIndex = e.NewSelectedIndex;
            this.LoadFrmCache();
          //  Response.Write("selected");
            
        }

        protected void GridViewhome_SelectedIndexChanged(object sender, EventArgs e)
        {
            string movieid=GridViewhome.SelectedRow.Cells[0].Text;
            string userid = Session["userid"].ToString();
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            string sql = "insert into report values('"+movieid+"','"+userid+"')";
            SqlConnection  connection = new SqlConnection(connStr);
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.ExecuteNonQuery();
            Response.Write("movie ordered");
            connection.Close();
        }

        protected void searchbtn_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
           
            string sql2 = "SELECT dvdid,title,description,actor,type,category,date FROM dvds dvd,casting cas,type tp, category ct where dvd.castingId=cas.id and dvd.typeid=tp.id and dvd.categoryid=ct.id and title like '%" + TextBoxsrc.Text + "%'";
            
    
            SqlDataAdapter adapter2 = new SqlDataAdapter(sql2, conn);
           

       
            SqlCommandBuilder builder2 = new SqlCommandBuilder(adapter2);
          
            DataSet ds = new DataSet();

     
            adapter2.Fill(ds, "dvd2");
            

          

            Cache["DATASET"] = ds;

  

            Cache["ADAPTER2"] = adapter2;


            
            GridViewhome0.DataSource = ds.Tables["dvd2"];

            GridViewhome0.DataBind();
         

        }

        protected void GridViewhome0_SelectedIndexChanged(object sender, EventArgs e)
        {
            string movieid = GridViewhome0.SelectedRow.Cells[0].Text;
            string userid = Session["userid"].ToString();
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            string sql = "insert into report values('" + movieid + "','" + userid + "')";
            SqlConnection connection = new SqlConnection(connStr);
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            command.ExecuteNonQuery();
            Response.Write("movie ordered");
            connection.Close();
        }

        protected void GridViewhome0_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
         GridViewhome0.SelectedIndex = e.NewSelectedIndex;
         this.LoadFrmCache();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);


            string sql3 = "SELECT dvdid,title,description,actor,type,category,date FROM dvds dvd,casting cas,type tp, category ct where dvd.castingId=cas.id and dvd.typeid=tp.id and dvd.categoryid=ct.id and actor like '%" + TextBoxact.Text + "%'";

      
            SqlDataAdapter adapter3 = new SqlDataAdapter(sql3, conn);


   
            SqlCommandBuilder builder3 = new SqlCommandBuilder(adapter3);

            DataSet ds = new DataSet();


          
            adapter3.Fill(ds, "dvd3");


            GridViewhome0.DataSource = ds.Tables["dvd3"];

            GridViewhome0.DataBind();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("type");
            Response.Redirect("~/Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Remove("type");
            Response.Redirect("~/Login.aspx");
        }
    }
}