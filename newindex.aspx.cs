using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class newindex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            String query = "select distinct state from donorsinfo";
            SqlConnection conn = new SqlConnection("Data Source =.\\sqlexpress; Initial Catalog = donordb; Integrated Security = True");
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader pointer = cmd.ExecuteReader();
            while (pointer.Read())
            {
                DropDownList2.Items.Add(pointer.GetValue(0).ToString());
            }
        }
    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
        String state = DropDownList2.SelectedItem.ToString();
        String query1 = "Select distinct city from donorsinfo where state ='" + state + "'";

        SqlConnection conn = new SqlConnection("Data Source =.\\sqlexpress; Initial Catalog = donordb; Integrated Security = True");
        conn.Open();
        SqlCommand cmd = new SqlCommand(query1, conn);
        SqlDataReader pointer = cmd.ExecuteReader();
        DropDownList3.Items.Add("-select-");
        while (pointer.Read())
        {
            DropDownList3.Items.Add(pointer.GetValue(0).ToString());
        }



    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList4.Items.Clear();
        String city = DropDownList3.SelectedItem.ToString();
        String query2 = "Select distinct district from donorsinfo where city ='" + city + "'";

        SqlConnection conn = new SqlConnection("Data Source =.\\sqlexpress; Initial Catalog = donordb; Integrated Security = True");
        conn.Open();
        SqlCommand cmd = new SqlCommand(query2, conn);
        SqlDataReader pointer = cmd.ExecuteReader();
        DropDownList4.Items.Add("-select-");
        while (pointer.Read())
        {
            DropDownList4.Items.Add(pointer.GetValue(0).ToString());
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList5.Items.Clear();
        DropDownList5.Items.Add("-select-");
        String district = DropDownList4.SelectedItem.ToString();
        String query3 = "Select distinct area from donorsinfo where district ='" + district + "'";

        SqlConnection conn = new SqlConnection("Data Source =.\\sqlexpress; Initial Catalog = donordb; Integrated Security = True");
        conn.Open();
        SqlCommand cmd = new SqlCommand(query3, conn);
        SqlDataReader pointer = cmd.ExecuteReader();
        while (pointer.Read())
        {
            DropDownList5.Items.Add(pointer.GetValue(0).ToString());
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "Select * from donorsinfo where bloodgp ='" + DropDownList1.SelectedItem.ToString() + "'  and state ='" + DropDownList2.SelectedItem.ToString() + "' and city ='" + DropDownList3.SelectedItem.ToString() + "' and district ='" + DropDownList4.SelectedItem.ToString() + "' and area ='" + DropDownList5.SelectedItem.ToString() + "' ";

        //       Label1.Text = query;

        Session["query"] = query;

        Response.Redirect("info.aspx");
    }
}