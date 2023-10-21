using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodBank
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
              Session["button"] = "";
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("Register.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer("Search.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Server.Transfer("Alogin.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Server.Transfer("Ulogin.aspx");
        }
    }
}