using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection("Data Source =.\\sqlexpress; Initial Catalog = donordb; Integrated Security = True");

        SqlDataAdapter adapter = new SqlDataAdapter(Session["query"].ToString(), conn);

        DataTable dt = new DataTable();
        adapter.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}