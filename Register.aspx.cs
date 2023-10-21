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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string b = "";
            if(IsPostBack==false)
            {
                getblood();
                getstates();
                DropDownList1.Items.Insert(0, "--select--");
                DropDownList2.Items.Insert(0, "--select--");
                DropDownList3.Items.Insert(0, "--Select--");
                b = Session["button"].ToString();
                if (b == "Update")
                {
                    Button1.Text = "Update";
                    TextBox1.Text = Session["uname"].ToString();
                    DropDownList3.SelectedIndex = DropDownList3.Items.IndexOf(DropDownList3.Items.FindByText(Session["bloodgrp"].ToString()));
                    DropDownList1.SelectedIndex = DropDownList1.Items.IndexOf(DropDownList1.Items.FindByText(Session["city"].ToString()));
                    TextBox4.Text = Session["phno"].ToString();
                    TextBox5.Text = Session["email"].ToString();
                  
                }
                  
            }
        }

       
        void getblood()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "Proc_Blood";
            SqlDataAdapter ds = new SqlDataAdapter(q, con);
            DataSet dr = new DataSet();
            ds.Fill(dr, "Blood");
            DropDownList3.DataSource = dr;
            DropDownList3.DataTextField = "grpname";
            DropDownList3.DataValueField = "bid";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "--Select--");
        }
        
        void getstates()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "Proc_states";
            SqlDataAdapter ds = new SqlDataAdapter(q, con);
            DataSet dr = new DataSet();
            ds.Fill(dr, "state");
            DropDownList1.DataSource = dr;
            DropDownList1.DataTextField = "sname";
            DropDownList1.DataValueField = "sid";
            DropDownList1.Items.Insert(0, "--select--");
            DropDownList1.DataBind();

        }
        void getcities()
        {
            string a = DropDownList1.SelectedItem.Value;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "Proc_cities";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", a);
            SqlDataAdapter ds = new SqlDataAdapter(cmd);
            DataSet dr = new DataSet();
            ds.Fill(dr, "city");
            DropDownList2.DataSource = dr;
            DropDownList2.DataTextField = "cname";
            DropDownList2.Items.Insert(0, "--insert--");
            DropDownList2.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "";
            if(Button1.Text=="Register")
            {
                q = "Proc_Reg";
            }
            else
            {
                q = "Proc_Update";
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox4.Text);
            cmd.Parameters.AddWithValue("@e", TextBox5.Text);
            if (RadioButton1.Checked == true)
                cmd.Parameters.AddWithValue("@h", RadioButton1.Text);
            else
                cmd.Parameters.AddWithValue("@h", RadioButton2.Text);
            string h = "";
            if (CheckBox1.Checked == true) 
                h=CheckBox1.Text;
            if (CheckBox2.Checked == true) 
                h=h+" "+CheckBox2.Text;
            if (CheckBox3.Checked == true) 
                h=h+" "+CheckBox3.Text;
            cmd.Parameters.AddWithValue("@i", h);
            cmd.Parameters.AddWithValue("@c", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@f", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@g", DropDownList2.SelectedItem.Text);
            if(Button1.Text== "Update")
            {
                DropDownList3.Text = Session["bloodgrp"].ToString();
            }
            cmd.ExecuteNonQuery();
            con.Close();
            Button1.Text = "Register";


        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox5.Text = TextBox4.Text = TextBox3.Text = TextBox2.Text = TextBox1.Text = "";
            DropDownList1.Items.Clear();
            DropDownList2.Items.Clear();
            DropDownList3.Items.Clear();
            RadioButton1.Checked = RadioButton2.Checked = false;
            CheckBox1.Checked = CheckBox2.Checked = CheckBox3.Checked = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcities();
        }
    }
}