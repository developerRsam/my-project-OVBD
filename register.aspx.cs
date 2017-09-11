using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String name = TextBox1.Text;
        String mobile = TextBox2.Text;
        String city = TextBox3.Text;
        String district = TextBox4.Text;
        String area = TextBox5.Text;
        String bloodgp = DropDownList1.SelectedItem.ToString();
        String state = DropDownList2.SelectedItem.ToString();

        //connect to database
        SqlConnection conn = new SqlConnection("Data Source =.\\sqlexpress; Initial Catalog = donordb; Integrated Security = True");
        conn.Open();
        //create query
        String query = String.Format("insert into donorsinfo values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", bloodgp, name, mobile, state, city, district, area);

        //execute query
        SqlCommand cmd = new SqlCommand(query, conn);

        cmd.ExecuteNonQuery();

        Response.Write("<script> alert('Registered successfully');</script>");


    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
    }
}