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
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
                getdata();
        }
        void getdata()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "Proc_Details";
            SqlDataAdapter ds = new SqlDataAdapter(q, con);
            DataSet dr = new DataSet();
            ds.Fill(dr, "login");
            GridView1.DataSource = dr;
            GridView1.DataBind();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="CmdEdit")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow rows = GridView1.Rows[index];
                Label l1 = (Label)rows.FindControl("Label1");
                Label l2 = (Label)rows.FindControl("Label2");
                Label l3 = (Label)rows.FindControl("Label3");
                Label l4 = (Label)rows.FindControl("Label4");
                Label l5 = (Label)rows.FindControl("Label5");
                Label l6 = (Label)rows.FindControl("Label6");
                Session["button"] = "Update";
                Session["uid"] = l1.Text;
                Session["uname"] = l2.Text;
                Session["bloodgrp"] = l3.Text;
                Session["phno"] = l4.Text;
                Session["email"] = l5.Text;
                Session["city"] = l6.Text;
                Server.Transfer("Register.aspx");

            }
            else
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow rows = GridView1.Rows[index];
                Label l1 = (Label)rows.FindControl("Label1");
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
                con.Open();
                string q = "Proc_Delete";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@a", l1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                getdata();
            }
        }
    }
}