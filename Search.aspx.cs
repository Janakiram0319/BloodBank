using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace BloodBank
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                getblood();
                getstates();
                DropDownList1.Items.Insert(0, "--select--");
                DropDownList2.Items.Insert(0, "--select--");
                DropDownList3.Items.Insert(0, "--select--");
                getdata();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        void getblood()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "Proc_Blood";
            SqlDataAdapter ds = new SqlDataAdapter(q, con);
            DataSet dr = new DataSet();
            ds.Fill(dr, "Blood");
            DropDownList1.DataSource = dr;
            DropDownList1.DataTextField = "grpname";
            DropDownList1.DataValueField = "bid";
            DropDownList1.Items.Insert(0, "--Select--");
            DropDownList1.DataBind();
        }
        void getstates()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "Proc_states";
            SqlDataAdapter ds = new SqlDataAdapter(q, con);
            DataSet dr = new DataSet();
            ds.Fill(dr, "state");
            DropDownList2.DataSource = dr;
            DropDownList2.DataTextField = "sname";
            DropDownList2.DataValueField = "sid";
            DropDownList2.DataBind();

        }
        void getdata() 
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "Proc_DisSearch";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList3.SelectedItem.Text);
            SqlDataAdapter ds = new SqlDataAdapter(cmd);
            DataSet dr = new DataSet();
            ds.Fill(dr, "search");
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string a = DropDownList2.SelectedItem.Value;
            DropDownList3.Items.Insert(0, "--Select--");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "Proc_cities";
            SqlCommand cmd = new SqlCommand(q,con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", a);
            SqlDataAdapter ds = new SqlDataAdapter(cmd);
            DataSet dr = new DataSet();
            ds.Fill(dr, "state");
            DropDownList3.DataSource = dr;
            DropDownList3.DataTextField = "cname";
            DropDownList3.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
          
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getdata();
        }
    }
}