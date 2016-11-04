using System;
using System.Collections.Generic;
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("type");
            Response.Redirect("~/Login.aspx");
        }
    }
}